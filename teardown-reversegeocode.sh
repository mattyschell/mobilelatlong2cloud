export AZUSER=$PGUSER
export AZPASSWORD=$PGPASSWORD
export PGUSER=mobile_latlong
export PGPASSWORD=$MLPASSWORD
psql -t -c "drop database reversegeocode"
export PGUSER=$AZUSER
export PGPASSWORD=$AZPASSWORD
psql -t -c "drop user mobile_latlong;"
if [ $PGHOST = 'localhost' ]; then
	psql -t -c "drop role azure_pg_admin;"
fi