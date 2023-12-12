# SQListCashDrawerShiftsRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**locationId** | **NSString*** | The ID of the location to query for a list of cash drawer shifts. | 
**sortOrder** | **NSString*** | The order in which cash drawer shifts are listed in the response, based on their opened_at field. Default value: ASC | [optional] 
**beginTime** | **NSString*** | The inclusive start time of the query on opened_at, in ISO 8601 format. | [optional] 
**endTime** | **NSString*** | The exclusive end date of the query on opened_at, in ISO 8601 format. | [optional] 
**limit** | **NSNumber*** | Number of cash drawer shift events in a page of results (200 by default, 1000 max). | [optional] 
**cursor** | **NSString*** | Opaque cursor for fetching the next page of results. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


