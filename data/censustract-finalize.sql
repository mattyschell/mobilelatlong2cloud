update 
    geo_districts 
set 
    layer_name = 'CENSUSTRACT' 
where 
    layer_name is null;
-- two censustracts have nasty interior rings
-- this fix: also nasty, revisit this 
-- makes some assumptions about the expected inputs
with baddies 
as (
    select 
        objectid as objectid
       ,st_makepolygon(st_exteriorring((ST_Dump(geom)).geom)) as geom
    from 
        geo_districts
    where 
        objectid in
        (select objectid from (
            select 
                objectid as objectid
               ,ST_NumInteriorRings((ST_Dump(geom)).geom) as kount
            from 
                geo_districts
            where 
                layer_name = 'CENSUSTRACT'
            )
        where
            kount > 0 
        )
    ) 
update 
    geo_districts 
set 
    geom = baddies.geom
from 
    baddies
where
    geo_districts.objectid = baddies.objectid;