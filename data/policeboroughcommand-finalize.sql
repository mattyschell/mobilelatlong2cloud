insert into 
    geo_districts (geom
                  ,layer_name
                  ,feature_value)
select 
    ST_MULTI(
        ST_Union(ARRAY(select 
                        geom 
                    from 
                        geo_districts
                    where 
                        layer_name = 'POLICEPRECINCT'
                    and 
                        feature_value 
                    in ('001','005','006','007','009','010','013','014','017','018')
                    )
                )
        )
    ,'POLICEBOROUGHCOMMAND'
    ,'Manhattan South';
insert into 
    geo_districts (geom
                  ,layer_name
                  ,feature_value)
select
    ST_MULTI(
        ST_Union(ARRAY(select 
                        geom 
                    from 
                        geo_districts
                    where 
                        layer_name = 'POLICEPRECINCT'
                    and 
                        feature_value 
                    in ('019','020','022','023','024','025','026','028','030','032','033','034')
                    )
                )
        )
    ,'POLICEBOROUGHCOMMAND'
    ,'Manhattan North';
insert into 
    geo_districts (geom
                  ,layer_name
                  ,feature_value)
select
    ST_MULTI(
        ST_Union(ARRAY(select 
                        geom 
                    from 
                        geo_districts
                    where 
                        layer_name = 'POLICEPRECINCT'
                    and 
                        feature_value 
                    in ('040','041','042','043','044','045','046','047','048','049','050','052')
                    )
                )
        )
    ,'POLICEBOROUGHCOMMAND'
    ,'The Bronx';
insert into 
    geo_districts (geom
                  ,layer_name
                  ,feature_value)
select
    ST_MULTI(
        ST_Union(ARRAY(select 
                        geom 
                    from 
                        geo_districts
                    where 
                        layer_name = 'POLICEPRECINCT'
                    and 
                        feature_value 
                    in ('060','061','062','063','066','067','068','069','070','071','072','076','078')
                    )
                )
        )
    ,'POLICEBOROUGHCOMMAND'
    ,'Brooklyn South';
insert into 
    geo_districts (geom
                  ,layer_name
                  ,feature_value)
select
    ST_MULTI(
        ST_Union(ARRAY(select 
                        geom 
                    from 
                        geo_districts
                    where 
                        layer_name = 'POLICEPRECINCT'
                    and 
                        feature_value 
                    in ('073','075','077','079','081','083','084','088','090','094')
                    )
                )
        )
    ,'POLICEBOROUGHCOMMAND'
    ,'Brooklyn North';
insert into 
    geo_districts (geom
                  ,layer_name
                  ,feature_value)
select
    ST_MULTI(
        ST_Union(ARRAY(select 
                        geom 
                    from 
                        geo_districts
                    where 
                        layer_name = 'POLICEPRECINCT'
                    and 
                        feature_value 
                    in ('100','101','102','103','105','106','107','113')
                    )
                )
        )
    ,'POLICEBOROUGHCOMMAND'
    ,'Queens South';
insert into 
    geo_districts (geom
                  ,layer_name
                  ,feature_value)
select
    ST_MULTI(
        ST_Union(ARRAY(select 
                        geom 
                    from 
                        geo_districts
                    where 
                        layer_name = 'POLICEPRECINCT'
                    and 
                        feature_value 
                    in ('104','108','109','110','111','112','114','115')
                    )
                )
        )
    ,'POLICEBOROUGHCOMMAND'
    ,'Queens North';
insert into 
    geo_districts (geom
                  ,layer_name
                  ,feature_value)
select
    ST_MULTI(
        ST_Union(ARRAY(select 
                        geom 
                    from 
                        geo_districts
                    where 
                        layer_name = 'POLICEPRECINCT'
                    and 
                        feature_value 
                    in ('120','121','122','123')
                    )
                )
        )
    ,'POLICEBOROUGHCOMMAND'
    ,'Staten Island';
-- remove interior ring artifact slivers
-- the subquery to get objectids in policeboroughcommand is not strictly necessary
-- as of today all rows have interiors
-- be careful with this in case of legit interior rings
-- consider adding an area filter
with pbcexteriorring 
as (    
    select 
        objectid as objectid
       ,st_makepolygon(st_exteriorring((ST_Dump(geom)).geom)) as geom
    from 
        geo_districts
    where 
        objectid in
        (select objectid from (
            select 
                objectid as objectid
               ,ST_NumInteriorRings((ST_Dump(geom)).geom) as kount
            from 
                geo_districts
            where 
                layer_name = 'POLICEBOROUGHCOMMAND'
            )
        where
            kount > 0 
        )
    ) 
update 
    geo_districts 
set 
    geom = st_multi(pbcexteriorring.geom)
from 
    pbcexteriorring
where
    geo_districts.objectid = pbcexteriorring.objectid;
-- remove 2 spikes
update 
    geo_districts
set 
    geom = st_multi(st_buffer(st_buffer(geom
                                        ,.1
                                        ,'join=mitre'
                                        )
                            ,-.1
                            ,'join=mitre'
                            )
                    )
where 
    layer_name = 'POLICEBOROUGHCOMMAND'
and feature_value in ('Brooklyn South'
                     ,'Brooklyn North');
