#!/usr/bin/env bash
export AZUSER=$PGUSER
export AZPASSWORD=$PGPASSWORD
export PGUSER=reversegeocode
export PGPASSWORD=$MLPASSWORD
psql -t -c "drop database reversegeocode"
export PGUSER=$AZUSER
export PGPASSWORD=$AZPASSWORD
psql -t -c "drop user mobile_latlong;"
psql -t -c "drop user reversegeocode;"
if [ $PGHOST = 'localhost' ]; then
	psql -t -c "drop role azure_pg_admin;"
fi