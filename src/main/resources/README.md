## Scratch Setup for This Scratch Project

Assumptions

1. gdal on the caller's path and client connection to source mobile_latlong oracle schema
2. shp2pgsql on the caller's path
3. psql on on the caller's path 
4. Superuser access to the target PostgreSQL database
5. Postgis extensions available on target PostgreSQL database


#### 1) Dump data, 2) set up postgis schema, 3) load data

1. Dump source

./src/main/resources/data-oracle-dump.sh GEOCSTG iluvgeocoding247

2. Set up target schema

./src/main/resources/schema-postgres.sh

3. Load target

./src/main/resources/data-postgres.sh










