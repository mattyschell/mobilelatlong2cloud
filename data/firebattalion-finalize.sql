update 
    geo_districts 
set 
    layer_name = 'FIREBATTALION' 
where 
    layer_name is null;
update
    geo_districts
set 
    feature_value = LPAD(feature_value, 2, '0')
where
    layer_name = 'FIREBATTALION';

