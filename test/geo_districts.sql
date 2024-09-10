with gishq as (
select ST_SETSRID(ST_GeomFromText('POINT(988208 191860)'),2263) as geom
), centralpark as (
select ST_SETSRID(ST_GeomFromText('POINT(993981 224105)'),2263) as geom
), battery as (
select ST_SETSRID(ST_GeomFromText('POINT(979861 195102)'),2263) as geom
), bayview as (
select ST_SETSRID(ST_GeomFromText('POINT(1015930 170024)'),2263) as geom
)
select 
    'CENSUSTRACT | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'CENSUSTRACT'
and ST_Contains(a.geom, (select geom from gishq))    
union all
select 
    'CENSUSTRACT | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'CENSUSTRACT'
and ST_Contains(a.geom, (select geom from centralpark))
union all
select 
    'COMMUNITYDISTRICT | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'COMMUNITYDISTRICT'
and ST_Contains(a.geom, (select geom from gishq))    
union all
select 
    'COMMUNITYDISTRICT | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'COMMUNITYDISTRICT'
and ST_Contains(a.geom, (select geom from centralpark))
union all
select 
    'COUNCILDISTRICT | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'COUNCILDISTRICT'
and ST_Contains(a.geom, (select geom from gishq))    
union all
select 
    'COUNCILDISTRICT | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'COUNCILDISTRICT'
and ST_Contains(a.geom, (select geom from centralpark));