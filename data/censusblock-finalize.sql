update 
    geo_districts 
set 
    layer_name = 'CENSUSBLOCK' 
where 
    layer_name is null;
-- 3 self intersections
update 
    geo_districts
set 
    geom = st_makevalid(geom)
where 
    layer_name = 'CENSUSBLOCK'
and not ST_IsValid(geom);

