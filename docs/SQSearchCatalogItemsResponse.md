# SQSearchCatalogItemsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) | Any errors that occurred during the request. | [optional] 
**items** | [**NSArray&lt;SQCatalogObject&gt;***](SQCatalogObject.md) | Returned items matching the specified query expressions. | [optional] 
**cursor** | **NSString*** | Pagination token used in the next request to return more of the search result. | [optional] 
**matchedVariationIds** | **NSArray&lt;NSString*&gt;*** | Ids of returned item variations matching the specified query expression. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


