set search_path to mobile_latlong, public;
\set QUIET 1
SET client_min_messages TO WARNING;
\i ./data/citylimits.sql;
\i ./data/borough.sql;
\i ./data/borough-finalize.sql;

