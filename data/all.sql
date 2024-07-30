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
\i ./data/communitydistrict.sql;
\i ./data/communitydistrict-finalize.sql;
\i ./data/congressionaldistrict.sql;
\i ./data/congressionaldistrict-finalize.sql;
\i ./data/councildistrict.sql;
\i ./data/councildistrict-finalize.sql;
\i ./data/courtdistrict.sql;
\i ./data/courtdistrict-finalize.sql;
\i ./data/electiondistrict.sql;
\i ./data/electiondistrict-finalize.sql;
\i ./data/firebattalion.sql;
\i ./data/firebattalion-finalize.sql;
\i ./data/firecompany.sql;
\i ./data/firecompany-finalize.sql;
\i ./data/firedivision.sql;
\i ./data/firedivision-finalize.sql;
\i ./data/healtharea.sql;
\i ./data/healtharea-finalize.sql;
\i ./data/healthcenterdistrict.sql;
\i ./data/healthcenterdistrict-finalize.sql;
\i ./data/housingdistrict.sql;
\i ./data/housingdistrict-finalize.sql;
\i ./data/policeprecinct.sql;
\i ./data/policeprecinct-finalize.sql;
\i ./data/policeboroughcommand-finalize.sql; 
\i ./data/policesector.sql;
\i ./data/policesector-finalize.sql;