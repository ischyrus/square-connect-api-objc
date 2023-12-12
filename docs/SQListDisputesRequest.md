# SQListDisputesRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cursor** | **NSString*** | A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
**states** | **NSArray&lt;NSString*&gt;*** | The dispute states used to filter the result. If not specified, the endpoint returns all disputes. | [optional] 
**locationId** | **NSString*** | The ID of the location for which to return a list of disputes. If not specified, the endpoint returns disputes associated with all locations. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


