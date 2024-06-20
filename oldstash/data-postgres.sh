# postgres superuser and no password.  (ie a trust relationship)
# or if we must, password passed in as an environmental
# tested execution from mingw at the top repo directory like
# $ ./src/main/resources/data-postgres.sh
superpw=$1
PGPASSWORD=$superpw psql -U postgres -d mobile_latlong -f src/main/resources/data-postgres.sql
# this probably doesnt belong here
PGPASSWORD=$superpw psql -U postgres -d mobile_latlong -f src/test/resources/data-postgres-teardown.sql
rm $PWD/src/main/resources/*temp.sql
printf "exiting from data-postgres.sh"
