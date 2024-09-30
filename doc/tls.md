## SSL on localhost

#### Generate certificate and key

Extra / after -subj is required in mingw.

```shell
> openssl req -new -x509 -days 3650 -nodes -text -out server.crt -keyout server.key -subj "//CN=localhost"
> chmod og-rwx server.key
```

Copy server.crt and server.key into C:\Program Files\PostgreSQL\<ver>\data

#### Turn on SSL in PostgreSQL

Change "#ssl = off" in

    C:\Program Files\PostgreSQL\<ver>\data\pg_hba.conf

to "ssl = on"

Then as a privileged user. Change  

```shell
> net stop postgresql-x64-<ver> 
> net start postgresql-x64-<ver>
```

#### Verify


```shell
> export PGSSLMODE=require
> psql
> postgres=# show ssl;
> ssl
> -----
> off
>(1 row)
```

    SELECT 
         datname as "Database name"
        ,usename as "User name"
        ,ssl
        ,client_addr
        ,application_name
        ,backend_type
    FROM 
        pg_stat_ssl
    JOIN 
        pg_stat_activity
    ON 
        pg_stat_ssl.pid = pg_stat_activity.pid
    ORDER BY ssl;

```shell
openssl s_client -starttls postgres -showcerts -connect localhost:<port>
```


## SSL on Azure Database for PostgreSQL

ssl_min_protocol is TLS1.2. Do nothing special (sslmode=prefer) and psql report:s 

    SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, compression: off)

The experts [no longer recommend](https://www.digicert.com/blog/certificate-pinning-what-is-certificate-pinning) certificate pinning (sslmode verify-ca or verify-full). Microsoft does not put much effort into their dcoumentation on certificate pinning in Azure Database for PostgreSQL. 


Certificate pinning requires 3 certificates.  
* https://www.digicert.com/kb/digicert-root-certificates.htm
    * DigiCert Global Root G2 
    * https://cacerts.digicert.com/DigiCertGlobalRootG2.crt.pem
    * Digicert Global Root CA, for legacy compatibility
    * https://cacerts.digicert.com/DigiCertGlobalRootCA.crt
* https://www.microsoft.com/pkiops/docs/repository.htm
    * Microsoft RSA Root CA 2017
    * https://www.microsoft.com/pkiops/certs/Microsoft%20RSA%20Root%20Certificate%20Authority%202017.crt

## Docs 

#### PostgreSQL Docs

https://www.postgresql.org/docs/current/ssl-tcp.html

#### Azure Docs

https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/concepts-networking-ssl-tls

* psql: defaults to prefer
* jdbc: defaults to verify-full
* verify-ca and verify-full = "certificate pinning"

#### Java Keystore

https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/how-to-update-client-certificates-java

#### Azure Kubernetes

https://learn.microsoft.com/en-us/previous-versions/azure/aks/ingress-tls?tabs=azure-cli

