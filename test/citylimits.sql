with gishq as (
select ST_SETSRID(ST_GeomFromText('POINT(988208 191860)'),2263) as geom
), nullisland as (
select ST_SETSRID(ST_GeomFromText('POINT(0 0)'),2263) as geom
)
SELECT 
    ST_Contains(c.geom, (select geom from gishq))  
   ,ST_Contains(c.geom, (select geom from nullisland)) 
from citylimits c;