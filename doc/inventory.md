## CITYLIMITS 

Determines if the given lat/lon coordinates are within NYC. Per business rules, the service needs to indicate that it did not have response data since the location was not in NYC.

The legacy application properties:

    query.citylimits=SELECT SDO_CONTAINS(shape,MDSYS.SDO_GEOMETRY(2001,41088,MDSYS.SDO_POINT_TYPE(?,?,NULL),NULL,NULL)) FROM citylimits

## GEO_DISTRICS_SDO

The legacy application properties:

    query.layers=SELECT LAYER_NAME, FEATURE_VALUE FROM geo_districts_sdo WHERE SDO_RELATE (shape, MDSYS.SDO_GEOMETRY(2001,41088,MDSYS.SDO_POINT_TYPE(?,?,NULL),NULL,NULL),'mask=ANYINTERACT')='TRUE' ORDER BY 1

In the legacy system the water extent varies. Also, as always, New York loves to inconsistently claim parts of Liberty and Ellis Island. 

Where possible we will use OTI's Citywide Street Centerline database as a source. 


| Name  | Local Authority | App Extent | Source du jour | Notes
| ------------- | ------------- | ------------- | ------------- | ------------- |
| assemblydistrict | CSCL | Partial Water | CSCL Pub | |
| borough | CSCL | Partial Water | CSCL Pub | Upper case borough names |
| censusblock | CSCL | Partial Water | CENSUSBLOCK2020 CSCL Pub | see [issue 4](https://github.com/mattyschell/mobilelatlong2cloud/issues/4)  |
| censustract | CSCL | Partial Water | CENSUSTRACT2020 CSCL Pub | see [issue 5](https://github.com/mattyschell/mobilelatlong2cloud/issues/5) |
| city | ???? | Land | Take from legacy | Appears to be ZIP codes with postal names (Flushing, Kew Gardens) applied to some ZIP codes.  Also "Central Park" for 00083.  The remainder of the ZIP Codes have borough names. |
| communitydistrict | CSCL | Land | CSCL_PUB (water included) | |
| congressionaldistrict | CSCL | Partial Water | CSCL Pub | |
| councildistrict | CSCL | Land plus some water | CSCL Pub | |
| courtdistrict | DCP | Land | Bytes of the Big Apple | see [issue 6](https://github.com/mattyschell/mobilelatlong2cloud/issues/6) |
| electiondistrict | CSCL | Water | CSCL Pub | see [issue 7](https://github.com/mattyschell/mobilelatlong2cloud/issues/7) |
| firebattalion | DCP | Land | Bytes of the Big Apple | |
| firecompany | CSCL | Land | CSCL Pub | see [issue 8](https://github.com/mattyschell/mobilelatlong2cloud/issues/8) |
| firedivision | DCP | Land | Bytes of the Big Apple | |
| healtharea | CSCL | Land | CSCL Pub (water included) | Left pad with zeros |
| healthcenterdistrict | CSCL | Land | CSCL Pub (water included) | |
| housingdistrict | NYCHA | Land | NYC Open Data | see [issue 9](https://github.com/mattyschell/mobilelatlong2cloud/issues/9) |
| policeboroughcommand | NYPD | Land | Generate new | These aren't published.  We will use the list of precincts by borough command on [wikipedia](https://en.wikipedia.org/wiki/Organization_of_the_New_York_City_Police_Department#Police_precincts) and aggregate |
| policeprecinct | CSCL | Water | CSCL Pub | left pad with zeros |
| policesector | NYPD | Partial Water | NYC Open Data | |
| sanitationdistrict | DSNY | Land | DSNY Arcgis Service | Use DCP district code.  Legacy app used undissolved sanitation sector shapes  |
| schooldistrict | CSCL | Land | CSCL Pub | left pad with zeros |
| statesenatorialdistrict | CSCL | Water | CSCL Pub | Who came up with  "senatorial"? |
| zip code | CSCL | Land  | CSCL Pub | Yes there is a space in the name. See [issue 11](https://github.com/mattyschell/mobilelatlong2cloud/issues/11) |

