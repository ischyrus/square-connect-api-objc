# SQListInvoicesResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoices** | [**NSArray&lt;SQInvoice&gt;***](SQInvoice.md) | The invoices retrieved. | [optional] 
**cursor** | **NSString*** | When a response is truncated, it includes a cursor that you can use in a  subsequent request to retrieve the next set of invoices. If empty, this is the final  response.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) | Information about errors encountered during the request. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


