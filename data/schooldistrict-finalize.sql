update 
    geo_districts 
set 
    layer_name = 'SCHOOLDISTRICT' 
where 
    layer_name is null;
update
    geo_districts
set 
    feature_value = LPAD(feature_value, 2, '0')
where
    layer_name = 'SCHOOLDISTRICT';
-- 2 self intersections
update 
    geo_districts
set 
    geom = st_makevalid(geom)
where 
    layer_name = 'SCHOOLDISTRICT'
and not ST_IsValid(geom);