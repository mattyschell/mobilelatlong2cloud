## This is not the repo you are looking for

The real repository is maintained elsewhere.  This is a simple Azure Database for PostgreSQL demo project. Friends, this is our demo project, our rules, the trick is never to be afraid. 


### Create reversegeocode database owned by mobile_latlong

Consider a creating a second read-only user. Keeping it simple for now.

```shell
$ export MLPASSWORD=whywasthe6scared?because789
$ export PGUSER=terraformuser
$ export PGPASSWORD="terraformcreds"
$ export PGHOST=psql-dollar-dollar-bill
$ export PGDATABASE=postgres
$ export PGPORT=5432
$ ./setup-reversegeocode.sh 
```

### Teardown everything we created

```shell
$ export MLPASSWORD=whywasthe6scared?because789
$ export PGUSER=terraformuser
$ export PGPASSWORD="terraformcreds"
$ export PGHOST=psql-dollar-dollar-bill
$ export PGDATABASE=postgres
$ export PGPORT=5432
$ ./teardown-reversegeocode.sh
```