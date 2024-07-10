set search_path to mobile_latlong, public;
update 
    geo_districts 
set 
    layer_name = 'BOROUGH' 
where 
    layer_name is null;
update
    geo_districts
set 
    feature_value = UPPER(feature_value)
where 
    layer_name = 'BOROUGH';