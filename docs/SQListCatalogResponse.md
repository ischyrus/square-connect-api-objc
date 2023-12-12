# SQListCatalogResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) | Any errors that occurred during the request. | [optional] 
**cursor** | **NSString*** | The pagination cursor to be used in a subsequent request. If unset, this is the final response. See [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination) for more information. | [optional] 
**objects** | [**NSArray&lt;SQCatalogObject&gt;***](SQCatalogObject.md) | The CatalogObjects returned. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


