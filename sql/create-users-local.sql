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
    mobile_latlong 
with 
    superuser 
    createdb 
    createrole password :'v1';
grant 
    azure_pg_admin 
to 
    mobile_latlong;