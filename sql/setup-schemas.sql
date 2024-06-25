set search_path to mobile_latlong, public;
create table citylimits (
    objectid integer primary key
   ,geom geometry(multipolygon, 2263)
);   
create index citylimitsgeom 
on  
    citylimits 
using 
    gist(geom);
-- this is a tricky schema to support
-- every query uses layer_name
-- do we want to use the spatial index or the layer_name?
-- the legacy oracle schema has no index on layer_name
-- so we will assume primary access by spatial index
create table geo_districts (     
    objectid integer primary key
   ,geom geometry(multipolygon, 2263)
   ,layer_name varchar(50)
   ,feature_value varchar(200)
); 
create index geo_districtsgeom 
on 
    geo_districts 
using 
    gist(geom);
grant all privileges on citylimits TO mobile_latlong;
grant all privileges on geo_districts TO mobile_latlong;

