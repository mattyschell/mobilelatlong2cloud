set search_path to mobile_latlong, public;
set client_min_messages TO warning;
\set QUIET 1
\i ./data/citylimits.sql;
\i ./data/censustract.sql;
\i ./data/censustract-finalize.sql;
\i ./data/communitydistrict.sql;
\i ./data/communitydistrict-finalize.sql;
\i ./data/councildistrict.sql;
\i ./data/councildistrict-finalize.sql;
