with gishq as (
select ST_SETSRID(ST_GeomFromText('POINT(988208 191860)'),2263) as geom
), centralpark as (
select ST_SETSRID(ST_GeomFromText('POINT(993981 224105)'),2263) as geom
)
select 
    a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'BOROUGH'
and ST_Contains(a.geom, (select geom from gishq))    
union all
select 
    a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'BOROUGH'
and ST_Contains(a.geom, (select geom from centralpark))
union all
select 
    a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'ASSEMBLYDISTRICT'
and ST_Contains(a.geom, (select geom from gishq))    
union all
select 
    a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'ASSEMBLYDISTRICT'
and ST_Contains(a.geom, (select geom from centralpark))
union all
select 
    a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'CENSUSBLOCK'
and ST_Contains(a.geom, (select geom from gishq))    
union all
select 
    a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'CENSUSBLOCK'
and ST_Contains(a.geom, (select geom from centralpark))
union all
select 
    a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'CENSUSTRACT'
and ST_Contains(a.geom, (select geom from gishq))    
union all
select 
    a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'CENSUSTRACT'
and ST_Contains(a.geom, (select geom from centralpark))
union all
select 
    a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'CITY'
and ST_Contains(a.geom, (select geom from gishq))    
union all
select 
    a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'CITY'
and ST_Contains(a.geom, (select geom from centralpark))
union all
select 
    a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'COMMUNITYDISTRICT'
and ST_Contains(a.geom, (select geom from gishq))    
union all
select 
    a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'COMMUNITYDISTRICT'
and ST_Contains(a.geom, (select geom from centralpark))
union all
select 
    a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'CONGRESSIONALDISTRICT'
and ST_Contains(a.geom, (select geom from gishq))    
union all
select 
    a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'CONGRESSIONALDISTRICT'
and ST_Contains(a.geom, (select geom from centralpark))
union all
select 
    a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'COUNCILDISTRICT'
and ST_Contains(a.geom, (select geom from gishq))    
union all
select 
    a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'COUNCILDISTRICT'
and ST_Contains(a.geom, (select geom from centralpark))
union all
select 
    a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'COURTDISTRICT'
and ST_Contains(a.geom, (select geom from gishq))    
union all
select 
    a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'COURTDISTRICT'
and ST_Contains(a.geom, (select geom from centralpark));