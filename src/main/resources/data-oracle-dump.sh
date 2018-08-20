# Download two tables from mobile_latlong@geocxxx
# must pass in db and password 
# assumes user has gdal and db connection
# and also shp2pgsql
# $ ./src/main/resources/data-oracle-dump.sh GEOCSTG iluvlarryellison247
db=$1
pw=$2
rm $PWD/src/main/resources/citylimits.*
rm $PWD/src/main/resources/*citylimitstemp.sql
ogr2ogr -f "ESRI Shapefile" $PWD/src/main/resources/citylimits.shp OCI:MOBILE_LATLONG/$pw@$db.doitt.nycnet:CITYLIMITS -progress
# convert to sql with append option
shp2pgsql -s 2263 -a $PWD/src/main/resources/citylimits.shp CITYLIMITSTEMP > $PWD/src/main/resources/data-postgres-citylimitstemp.sql
rm $PWD/src/main/resources/citylimits.*
ogr2ogr -f "ESRI Shapefile" $PWD/src/main/resources/geo_districts_sdo.shp OCI:MOBILE_LATLONG/$pw@$db.doitt.nycnet:GEO_DISTRICTS_SDO -progress
shp2pgsql -s 2263 -a $PWD/src/main/resources/geo_districts_sdo.shp GEO_DISTRICTS_SDOTEMP > $PWD/src/main/resources/data-postgres-geo_districts_sdotemp.sql
printf "exiting from data-oracle-dump.sh"


