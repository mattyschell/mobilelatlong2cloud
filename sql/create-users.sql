-- https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/how-to-create-users
create user 
    reversegeocode 
with
    createdb 
    createrole password :'v1';
grant 
    azure_pg_admin 
to 
    reversegeocode;
create user 
    mobile_latlong 
with password :'v1';


