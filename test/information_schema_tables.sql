select 
    table_schema || '.' || table_name
from 
    information_schema.tables
where 
    table_catalog = current_catalog
and table_schema IN ('mobile_latlong')
order by table_schema
        ,table_name;