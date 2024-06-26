## This is not the repo you are looking for

The real repository is maintained elsewhere.  This is a simple Azure Database for PostgreSQL demo project. Friends, this is our demo project, our rules, the trick is never to be afraid. 


### Set Up

Creates a database named reversegeocode with user and schema mobile_latlong. 

```shell
$ export MLPASSWORD=whywasthe6scared?because789
$ export PGUSER=terraformuser
$ export PGPASSWORD="terraformcreds"
$ export PGHOST=psql-dollar-dollar-bill
$ export PGDATABASE=postgres
$ export PGPORT=5432
$ ./setup-reversegeocode.sh 
```

### Tear Down Everything

Drops database and users.

```shell
$ export MLPASSWORD=whywasthe6scared?because789
$ export PGUSER=terraformuser
$ export PGPASSWORD="terraformcreds"
$ export PGHOST=psql-dollar-dollar-bill
$ export PGDATABASE=postgres
$ export PGPORT=5432
$ ./teardown-reversegeocode.sh
```

### Load mobile_latlong data

We'll use the database owner.

```shell
$ export PGUSER=reversegeocode
$ export PGPASSWORD=whywasthe6scared?because789
$ export PGHOST=psql-dollar-dollar-bill
$ export PGDATABASE=reversegeocode
$ export PGPORT=5432
$ ./load-mobile_latlong.sh
```

### Test 

We'll use mobile_latlong.

```shell
$ export PGUSER=mobile_latlong
$ export PGPASSWORD=whywasthe6scared?because789
$ export PGHOST=psql-dollar-dollar-bill
$ export PGDATABASE=reversegeocode
$ export PGPORT=5432
$ ./test-mobile_latlong.sh
```


