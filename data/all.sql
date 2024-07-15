set search_path to mobile_latlong, public;
set client_min_messages TO warning;
\set QUIET 1
\i ./data/citylimits.sql;
\i ./data/borough.sql;
\i ./data/borough-finalize.sql;
\i ./data/assemblydistricts.sql;
\i ./data/assemblydistricts-finalize.sql;

