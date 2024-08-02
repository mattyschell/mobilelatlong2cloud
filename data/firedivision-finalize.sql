update 
    geo_districts 
set 
    layer_name = 'FIREDIVISION' 
where 
    layer_name is null;
-- 1 self intersections
update 
    geo_districts
set 
    geom = st_makevalid(geom)
where 
    layer_name = 'FIREDIVISION'
and not ST_IsValid(geom);