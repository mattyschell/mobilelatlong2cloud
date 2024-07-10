with gishq as (
select ST_SETSRID(ST_GeomFromText('POINT(988208 191860)'),2263) as geom
), centralpark as (
select ST_SETSRID(ST_GeomFromText('POINT(993981 224105)'),2263) as geom
)
SELECT 
    a.feature_value 
from
    geo_districts a
where
    layer_name = 'BOROUGH'
and ST_Contains(a.geom, (select geom from gishq))    
union all
SELECT 
    a.feature_value 
from
    geo_districts a
where
    layer_name = 'BOROUGH'
and ST_Contains(a.geom, (select geom from centralpark));