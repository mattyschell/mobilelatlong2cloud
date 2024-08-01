shp2pgsql -s 2263 -a citylimits.shp citylimits > citylimits.sql

shp2pgsql -s 2263 -a borough.shp geo_districts > borough.sql

# plural confusion
shp2pgsql -s 2263 -a assemblydistricts.shp geo_districts > assemblydistrict.sql

shp2pgsql -s 2263 -a censusblock.shp geo_districts > censusblock.sql

shp2pgsql -s 2263 -a censustract.shp geo_districts > censustract.sql

shp2pgsql -s 2263 -a city.shp geo_districts > city.sql

shp2pgsql -s 2263 -a communitydistrict.shp geo_districts > communitydistrict.sql

shp2pgsql -s 2263 -a congressionaldistrict.shp geo_districts > congressionaldistrict.sql

shp2pgsql -s 2263 -a councildistrict.shp geo_districts > councildistrict.sql

shp2pgsql -s 2263 -a courtdistrict.shp geo_districts > courtdistrict.sql

shp2pgsql -s 2263 -a electiondistrict.shp geo_districts > electiondistrict.sql

shp2pgsql -s 2263 -a firebattalion.shp geo_districts > firebattalion.sql

shp2pgsql -s 2263 -a firecompany.shp geo_districts > firecompany.sql

shp2pgsql -s 2263 -a firedivision.shp geo_districts > firedivision.sql

shp2pgsql -s 2263 -a healthcenterdistrict.shp geo_districts > healthcenterdistrict.sql

shp2pgsql -s 2263 -a housingdistrict2263.shp geo_districts > housingdistrict.sql

shp2pgsql -s 2263 -a policeprecinct.shp geo_districts > policeprecinct.sql

shp2pgsql -s 2263 -a policesector.shp geo_districts > policesector.sql

shp2pgsql -s 2263 -a sanitationdistrict.shp geo_districts > sanitationdistrict.sql

shp2pgsql -s 2263 -a schooldistrict.shp geo_districts > schooldistrict.sql

shp2pgsql -s 2263 -a statesenatorialdistrict.shp geo_districts > statesenatorialdistrict.sql

shp2pgsql -s 2263 -a zipcode.shp geo_districts > zipcode.sql