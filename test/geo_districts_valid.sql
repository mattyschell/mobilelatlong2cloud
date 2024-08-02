select
    count(*)
from
    geo_districts
where not st_isvalid(geom);
--here ya go 
--create table baddies 
--as
--select 
--     objectid as objectid 
--    ,feature_value as feature_value
--    ,layer_name as layer_name
--    ,reason(ST_IsValidDetail(geom)) as reason
--    ,location (ST_IsValidDetail(geom)) as geom
--from 
--    mobile_latlong.geo_districts
--where 
--    not ST_IsValid(geom); 