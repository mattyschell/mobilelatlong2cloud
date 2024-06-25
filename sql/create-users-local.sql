create role 
    azure_pg_admin 
with 
    nosuperuser 
    nocreatedb 
    nocreaterole 
    inherit 
    nologin 
    replication 
    nobypassrls;
create user 
    reversegeocode 
with 
    superuser 
    createdb 
    createrole password :'v1';
grant 
    azure_pg_admin 
to 
    reversegeocode;
create user 
    mobile_latlong 
with password :'v1';
