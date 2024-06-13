## CITYLIMITS 

This layer appears to be used to filter out bad inputs. It is the aggregate union of borough.

The legacy application properties:

    query.citylimits=SELECT SDO_CONTAINS(shape,MDSYS.SDO_GEOMETRY(2001,41088,MDSYS.SDO_POINT_TYPE(?,?,NULL),NULL,NULL)) FROM citylimits

## GEO_DISTRICS_SDO

The legacy application properties:

    query.layers=SELECT LAYER_NAME, FEATURE_VALUE FROM geo_districts_sdo WHERE SDO_RELATE (shape, MDSYS.SDO_GEOMETRY(2001,41088,MDSYS.SDO_POINT_TYPE(?,?,NULL),NULL,NULL),'mask=ANYINTERACT')='TRUE' ORDER BY 1

In the legacy system the water extent varies. Also, as always, New York loves to inconsistently claim parts of Liberty and Ellis Island. 

Where possible we will use OTI's Citywide Street Centerline database as a source. 


| Name  | Local Authority | App Extent | Source du jour |
| ------------- | ------------- | ------------- | ------------- |
| assemblydistrict | CSCL | Partial Water | CSCL Pub |
| borough | CSCL | Partial Water | CSCL Pub | 
| censusblock | CSCL | Partial Water | CENSUSBLOCK2020 CSCL Pub |  
| censustract | CSCL | Partial Water | CENSUSTRACT2020 CSCL Pub |
| city | ???? | Land | Take from legacy |
| communitydistrict | CSCL | Land | CSCL_PUB (water included) |
| congressionaldistrict | CSCL | Partial Water | CSCL Pub |
| councildistrict | CSCL | Land plus some water | CSCL Pub |
| courtdistrict | DCP | Land | Bytes of the Big Apple |
| electiondistrict | CSCL | Water | CSCL Pub |
| firebattalion | DCP | Land | Bytes of the Big Apple |
| firecompany | CSCL | Land | CSCL Pub |
| firedivision | DCP | Land | Bytes of the Big Apple |
| healtharea | CSCL | Land | CSCL Pub (water included) |
| healthcenterdistrict | CSCL | Land | CSCL Pub (water included) |
| housingdistrict | NYCHA | Land | NYC Open Data |
| policeboroughcommand | NYPD | Land | Generate new |
| policeprecinct | CSCL | Water | CSCL Pub |
| policesector | NYPD | Partial Water | NYC Open Data |
| sanitationdistrict | DSNY | Land | DSNY Arcgis Service |
| schooldistrict | CSCL | Land | CSCL Pub |
| statesenatorialdistrict | CSCL | Water | CSCL Pub |
| zip code | CSCL | Land  | CSCL Pub |

## BADDIES

* city: Appears to be ZIP codes with postal names (Flushing, Kew Gardens) applied to some ZIP codes.  Also "Central Park" for 00083.  The remainder of the ZIP Codes have borough names.
* housingdistrict: Will need to decide what to do with FHA repossessed homes and, for all records, the value returned. Legacy returns integers that don't appear to exist any more.
* policeboroughcommand: These aren't published.  Get a list of precincts (like from wikipedia) and aggregate policeprecinct records.