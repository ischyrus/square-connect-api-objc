# SQListPaymentLinksResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) | Errors that occurred during the request. | [optional] 
**paymentLinks** | [**NSArray&lt;SQPaymentLink&gt;***](SQPaymentLink.md) | The list of payment links. | [optional] 
**cursor** | **NSString*** |   When a response is truncated, it includes a cursor that you can use in a subsequent request to retrieve the next set of gift cards. If a cursor is not present, this is the final response. For more information, see [Pagination](https://developer.squareup.com/docs/basics/api101/pagination). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


