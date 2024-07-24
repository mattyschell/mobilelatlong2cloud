update 
    geo_districts 
set 
    layer_name = 'FIRECOMPANY' 
where 
    layer_name is null;
update
    geo_districts
set 
    feature_value = LPAD(
                        regexp_replace(feature_value,'[^0-9]', '', 'g')
                        ,3 ,'0')
where
    layer_name = 'FIRECOMPANY';
