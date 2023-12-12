# SQSearchTerminalCheckoutsRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**query** | [**SQTerminalCheckoutQuery***](SQTerminalCheckoutQuery.md) | Queries Terminal checkouts based on given conditions and the sort order. Leaving these unset returns all checkouts with the default sort order. | [optional] 
**cursor** | **NSString*** | A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. See [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination) for more information. | [optional] 
**limit** | **NSNumber*** | Limits the number of results returned for a single request. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


