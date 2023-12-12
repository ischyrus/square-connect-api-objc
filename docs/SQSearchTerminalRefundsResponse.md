# SQSearchTerminalRefundsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) | Information about errors encountered during the request. | [optional] 
**refunds** | [**NSArray&lt;SQTerminalRefund&gt;***](SQTerminalRefund.md) | The requested search result of &#x60;TerminalRefund&#x60; objects. | [optional] 
**cursor** | **NSString*** | The pagination cursor to be used in a subsequent request. If empty, this is the final response.  See [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination) for more information. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


