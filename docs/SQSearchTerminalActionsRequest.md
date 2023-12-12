# SQSearchTerminalActionsRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**query** | [**SQTerminalActionQuery***](SQTerminalActionQuery.md) | Queries terminal actions based on given conditions and sort order. Leaving this unset will return all actions with the default sort order. | [optional] 
**cursor** | **NSString*** | A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for the original query. See [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination) for more information. | [optional] 
**limit** | **NSNumber*** | Limit the number of results returned for a single request. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


