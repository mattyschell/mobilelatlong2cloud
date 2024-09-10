## CITYLIMITS 

Determines if the given lat/lon coordinates are within NYC. Per business rules, the service needs to indicate that it did not have response data since the location was not in NYC.

The legacy application properties:

    query.citylimits=SELECT SDO_CONTAINS(shape,MDSYS.SDO_GEOMETRY(2001,41088,MDSYS.SDO_POINT_TYPE(?,?,NULL),NULL,NULL)) FROM citylimits

## GEO_DISTRICS_SDO

The slightly odd design here was intentional.  The query returns only districts that reverse geocode to the input point.  The presentation layer in turn only returns those <LAYER_NAME>s. 

The legacy application properties:

    query.layers=SELECT LAYER_NAME, FEATURE_VALUE FROM geo_districts_sdo WHERE SDO_RELATE (shape, MDSYS.SDO_GEOMETRY(2001,41088,MDSYS.SDO_POINT_TYPE(?,?,NULL),NULL,NULL),'mask=ANYINTERACT')='TRUE' ORDER BY 1

In the legacy system the water extent varies. Also, as always, New York loves to inconsistently claim parts of Liberty and Ellis Island. 

Where possible we will use OTI's Citywide Street Centerline database as a source. 


| Name  | Local Authority | App Extent | Source du jour | Notes
| ------------- | ------------- | ------------- | ------------- | ------------- |
| censustract | CSCL | Partial Water | CENSUSTRACT2020 CSCL Pub | see [issue 
| communitydistrict | CSCL | Land | CSCL_PUB (water included) | |
| councildistrict | CSCL | Land plus some water | CSCL Pub | |
