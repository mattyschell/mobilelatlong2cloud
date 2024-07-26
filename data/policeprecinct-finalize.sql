update 
    geo_districts 
set 
    layer_name = 'POLICEPRECINCT' 
where 
    layer_name is null;
update
    geo_districts
set 
    feature_value = LPAD(feature_value, 3, '0')
where
    layer_name = 'POLICEPRECINCT';