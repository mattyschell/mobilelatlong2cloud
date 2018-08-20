-- first createdb-postgres.sql then this critter
-- psql -U postgres -d dtmtest -f schema-postgres.sql
-- set up mobile_latlong schema in postgres
-- must add the extension to this database
-- this will error in specatucularly confusing ways
-- if the environment is not configured as expected
SELECT
   CASE WHEN count(*) = 1 
   THEN 'creating extension postgis ' || (select default_version from pg_available_extensions where name = 'postgis') 
                                      || ' if not installed'
   ELSE 'MAYDAY: No postgis extension available in pg_available extensions'
   END AS postgis_clue
FROM pg_available_extensions
where name = 'postgis';
create extension if not exists postgis;
-- CITYLIMITS, unclear to me if this table is required
-- just one record with a big honking outline of the city
CREATE TABLE citylimits (
    objectid INTEGER PRIMARY KEY, 
    objectid_1 INTEGER,             --UGH     
    shape GEOMETRY(multipolygon, 2263)); --continue to store in state plane?  
CREATE INDEX citylimitsgeom ON citylimits 
USING GIST(shape);
DROP TABLE IF EXISTS citylimitstemp;
CREATE TABLE citylimitstemp (
    objectid INTEGER PRIMARY KEY, 
    objectid_1 INTEGER,                  
    geom GEOMETRY(multipolygon, 2263)); 
CREATE TABLE geo_districts_sdo (     --UGH x2
    objectid INTEGER PRIMARY KEY, 
    shape GEOMETRY(multipolygon, 2263),
    layer_name VARCHAR(50),
    feature_value VARCHAR(200),
    version VARCHAR(50)); 
CREATE INDEX geo_districts_sdogeom ON geo_districts_sdo 
USING GIST(shape);
DROP TABLE IF EXISTS geo_districts_sdotemp;
CREATE TABLE geo_districts_sdotemp (     
    objectid INTEGER PRIMARY KEY, 
    geom GEOMETRY(multipolygon, 2263),
    layer_name VARCHAR(50),
    feature_va VARCHAR(200),       --YUP
    version VARCHAR(50)); 

