-- assumes: Caller is a superuser with createdb priv
-- from current working directory
-- psql -U postgres -d postgres -f createdb-postgres.sql 
drop database if exists mobile_latlong;
create database mobile_latlong;  
