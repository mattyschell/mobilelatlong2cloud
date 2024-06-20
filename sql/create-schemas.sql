create schema if not exists mobile_latlong; -- authorization mobile_latlong;
grant usage on schema 
    mobile_latlong 
to 
    public;
-- secure schema usage pattern
-- https://www.postgresql.org/docs/current/ddl-schemas.html#DDL-SCHEMAS-PATTERNS
revoke create on schema 
    public 
from 
    public;