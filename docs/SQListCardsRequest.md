# SQListCardsRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cursor** | **NSString*** | A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination) for more information. | [optional] 
**customerId** | **NSString*** | Limit results to cards associated with the customer supplied. By default, all cards owned by the merchant are returned. | [optional] 
**includeDisabled** | **NSNumber*** | Includes disabled cards. By default, all enabled cards owned by the merchant are returned. | [optional] 
**referenceId** | **NSString*** | Limit results to cards associated with the reference_id supplied. | [optional] 
**sortOrder** | **NSString*** | Sorts the returned list by when the card was created with the specified order. This field defaults to ASC. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


