set search_path to mobile_latlong, public;
set client_min_messages TO warning;
\set QUIET 1
\i ./data/citylimits.sql;
\i ./data/borough.sql;
\i ./data/borough-finalize.sql;
\i ./data/assemblydistrict.sql;
\i ./data/assemblydistrict-finalize.sql;
\i ./data/censusblock.sql;
\i ./data/censusblock-finalize.sql;
\i ./data/censustract.sql;
\i ./data/censustract-finalize.sql;
\i ./data/city.sql;
\i ./data/city-finalize.sql;

