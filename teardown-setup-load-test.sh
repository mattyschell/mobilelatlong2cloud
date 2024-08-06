#!/usr/bin/env bash

# teardown: your superuser

export MLPASSWORD=***Input A New Password For Users Creation**
export PGUSER=postgres
export PGPASSWORD=***Your superuser password***
export PGHOST=localhost
export PGDATABASE=postgres
export PGSSLMODE=allow
export PGPORT=5432
./teardown-reversegeocode.sh

# setup: same, your superuser

#export MLPASSWORD=***Input A New Password For Users Creation**
#export PGUSER=postgres
#export PGPASSWORD=***Your superuser password***
#export PGHOST=localhost
#export PGDATABASE=postgres
#export PGSSLMODE=allow
#export PGPORT=5432
./setup-reversegeocode.sh

#load: new reversegeocode user created above

export PGUSER=reversegeocode
export PGPASSWORD=$MLPASSWORD
#export PGHOST=localhost
export PGDATABASE=reversegeocode
#export PGPORT=5432
#export PGSSLMODE=allow
./load-mobile_latlong.sh

#test: new mobile_latlong user created above

export PGUSER=mobile_latlong
#export PGPASSWORD=$MLPASSWORD
#export PGHOST=localhost
#export PGDATABASE=reversegeocode
#export PGPORT=5432
#export PGSSLMODE=allow
./test-mobile_latlong.sh

# good comrades end with a blank line
