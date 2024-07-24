update 
    geo_districts 
set 
    layer_name = 'HEALTHAREA' 
where 
    layer_name is null;
update
    geo_districts
set 
    feature_value = LPAD(feature_value, 4, '0')
where
    layer_name = 'HEALTHAREA';