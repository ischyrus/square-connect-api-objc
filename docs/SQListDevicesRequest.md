# SQListDevicesRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cursor** | **NSString*** | A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. See [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination) for more information. | [optional] 
**sortOrder** | **NSString*** | The order in which results are listed. - &#x60;ASC&#x60; - Oldest to newest. - &#x60;DESC&#x60; - Newest to oldest (default). | [optional] 
**limit** | **NSNumber*** | The number of results to return in a single page. | [optional] 
**locationId** | **NSString*** | If present, only returns devices at the target location. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


