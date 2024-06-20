-- https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/how-to-create-users
create user 
    mobile_latlong 
with
    createdb 
    createrole password :'v1';
grant 
    azure_pg_admin 
to 
    mobile_latlong;

