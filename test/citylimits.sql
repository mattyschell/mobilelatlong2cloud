with gishq as (
select ST_SETSRID(ST_GeomFromText('POINT(988208 191860)'),2263)
), nullisland as (
select ST_SETSRID(ST_GeomFromText('POINT(-1 -1)'),2263)
)
SELECT 
    ST_Contains(c.geom, (select geom from gishq))  
   ,ST_Contains(c.geom, (select geom from nullisland)) 
from citylimits c;