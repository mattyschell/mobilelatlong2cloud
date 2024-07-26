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
    'BOROUGH | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'BOROUGH'
and ST_Contains(a.geom, (select geom from gishq))    
union all
select 
    'BOROUGH | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'BOROUGH'
and ST_Contains(a.geom, (select geom from centralpark))
union all
select 
    'ASSEMBLYDISTRICT | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'ASSEMBLYDISTRICT'
and ST_Contains(a.geom, (select geom from gishq))    
union all
select 
    'ASSEMBLYDISTRICT | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'ASSEMBLYDISTRICT'
and ST_Contains(a.geom, (select geom from centralpark))
union all
select 
    'CENSUSBLOCK | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'CENSUSBLOCK'
and ST_Contains(a.geom, (select geom from gishq))    
union all
select 
    'CENSUSBLOCK | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'CENSUSBLOCK'
and ST_Contains(a.geom, (select geom from centralpark))
union all
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
    'CITY | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'CITY'
and ST_Contains(a.geom, (select geom from gishq))    
union all
select 
    'CITY | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'CITY'
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
    'CONGRESSIONALDISTRICT | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'CONGRESSIONALDISTRICT'
and ST_Contains(a.geom, (select geom from gishq))    
union all
select 
    'CONGRESSIONALDISTRICT | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'CONGRESSIONALDISTRICT'
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
and ST_Contains(a.geom, (select geom from centralpark))
union all
select 
    'COURTDISTRICT | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'COURTDISTRICT'
and ST_Contains(a.geom, (select geom from gishq))    
union all
select 
    'COURTDISTRICT | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'COURTDISTRICT'
and ST_Contains(a.geom, (select geom from centralpark))
union all
select 
    'ELECTIONDISTRICT | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'ELECTIONDISTRICT'
and ST_Contains(a.geom, (select geom from gishq))    
union all
select 
    'ELECTIONDISTRICT | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'ELECTIONDISTRICT'
and ST_Contains(a.geom, (select geom from centralpark))
union all
select 
    'FIREBATTALION | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'FIREBATTALION'
and ST_Contains(a.geom, (select geom from gishq))    
union all
select 
    'FIREBATTALION | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'FIREBATTALION'
and ST_Contains(a.geom, (select geom from centralpark))
union all --extra check 3 on firebattalion lpad
select 
    'FIREBATTALION | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'FIREBATTALION'
and ST_Contains(a.geom, (select geom from battery))
union all
select 
    'FIRECOMPANY | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'FIRECOMPANY'
and ST_Contains(a.geom, (select geom from gishq))    
union all
select 
    'FIRECOMPANY | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'FIRECOMPANY'
and ST_Contains(a.geom, (select geom from centralpark))
union all
select 
    'FIREDIVISION | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'FIREDIVISION'
and ST_Contains(a.geom, (select geom from gishq))    
union all
select 
    'FIREDIVISION | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'FIREDIVISION'
and ST_Contains(a.geom, (select geom from centralpark))
union all
select 
    'HEALTHAREA | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'HEALTHAREA'
and ST_Contains(a.geom, (select geom from gishq))    
union all
select 
    'HEALTHAREA | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'HEALTHAREA'
and ST_Contains(a.geom, (select geom from centralpark))
union all
select 
    'HEALTHCENTERDISTRICT | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'HEALTHCENTERDISTRICT'
and ST_Contains(a.geom, (select geom from gishq))    
union all
select 
    'HEALTHCENTERDISTRICT | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'HEALTHCENTERDISTRICT'
and ST_Contains(a.geom, (select geom from centralpark))
union all
select 
    'HOUSINGDISTRICT | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'HOUSINGDISTRICT'
and ST_Contains(a.geom, (select geom from gishq))    
union all
select 
    'HOUSINGDISTRICT | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'HOUSINGDISTRICT'
and ST_Contains(a.geom, (select geom from centralpark))
union all
select 
    'HOUSINGDISTRICT | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'HOUSINGDISTRICT'
and ST_Contains(a.geom, (select geom from bayview))
union all
select 
    'POLICEPRECINCT | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'POLICEPRECINCT'
and ST_Contains(a.geom, (select geom from gishq))    
union all
select 
    'POLICEPRECINCT | ' || a.feature_value 
from
    geo_districts a
where
    a.layer_name = 'POLICEPRECINCT'
and ST_Contains(a.geom, (select geom from centralpark));