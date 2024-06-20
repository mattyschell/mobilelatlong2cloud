\i src/main/resources/data-postgres-citylimitstemp.sql;
--start a transaction block till commit or rollback
begin;
DELETE FROM citylimits;
INSERT INTO citylimits 
   (objectid, objectid_1, shape) 
   SELECT objectid, objectid_1, geom from citylimitstemp;
commit;
\i src/main/resources/data-postgres-geo_districts_sdotemp.sql;
--start a transaction block till commit or rollback
begin;
DELETE FROM geo_districts_sdo;
INSERT INTO geo_districts_sdo 
   (objectid, shape, layer_name, feature_value, version) 
   SELECT objectid, geom, layer_name, feature_va, version from geo_districts_sdotemp;
commit;
