select schema_name 
from 
    information_schema.schemata
where 
    schema_owner = 'reversegeocode'
and catalog_name = current_catalog
order by schema_owner
        ,schema_name;