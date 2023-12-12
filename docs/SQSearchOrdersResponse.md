# SQSearchOrdersResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**orderEntries** | [**NSArray&lt;SQOrderEntry&gt;***](SQOrderEntry.md) | A list of [OrderEntries](https://developer.squareup.com/reference/square_2023-10-18/objects/OrderEntry) that fit the query conditions. The list is populated only if &#x60;return_entries&#x60; is set to &#x60;true&#x60; in the request. | [optional] 
**orders** | [**NSArray&lt;SQOrder&gt;***](SQOrder.md) | A list of [Order](https://developer.squareup.com/reference/square_2023-10-18/objects/Order) objects that match the query conditions. The list is populated only if &#x60;return_entries&#x60; is set to &#x60;false&#x60; in the request. | [optional] 
**cursor** | **NSString*** | The pagination cursor to be used in a subsequent request. If unset, this is the final response. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) | [Errors](https://developer.squareup.com/reference/square_2023-10-18/objects/Error) encountered during the search. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


