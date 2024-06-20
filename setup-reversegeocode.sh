if [ $PGHOST = 'localhost' ]; then
	psql -t -v v1=$MLPASSWORD -f ./sql/create-users-local.sql
else
	psql -t -v v1=$MLPASSWORD -f ./sql/create-users.sql
fi
export PGUSER=mobile_latlong
export PGPASSWORD=$MLPASSWORD
psql -t -f ./sql/create-database.sql
export PGDATABASE=reversegeocode
psql -t -f ./sql/setup-database.sql
psql -t -f ./sql/create-schemas.sql
psql -t -f ./sql/setup-schemas.sql
