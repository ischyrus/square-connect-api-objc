# SQSearchTerminalRefundsRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**query** | [**SQTerminalRefundQuery***](SQTerminalRefundQuery.md) | Queries the Terminal refunds based on given conditions and the sort order. Calling &#x60;SearchTerminalRefunds&#x60; without an explicit query parameter returns all available refunds with the default sort order. | [optional] 
**cursor** | **NSString*** | A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. | [optional] 
**limit** | **NSNumber*** | Limits the number of results returned for a single request. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


