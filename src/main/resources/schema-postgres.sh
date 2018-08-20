# For scratch database creation and destruction 
# we assume a standard out-of-the-box postgres local install
# with postgres superuser and no password.  (ie a trust relationship)
# or if we must, password passed in as an environmental
# tested execution from mingw at the top repo directory like
# $ ./src/main/resources/postgres.sh
superpw=$1
PGPASSWORD=$superpw psql -U postgres -d postgres -f src/main/resources/createdb-postgres.sql
PGPASSWORD=$superpw psql -U postgres -d mobile_latlong -f src/main/resources/schema-postgres.sql
# eventually a testing process might call 
# psql -U postgres -d postgres -f teardowndb-postgres.sql
printf "exiting from postgres.sh"
