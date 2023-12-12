# SQSearchCatalogObjectsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) | Any errors that occurred during the request. | [optional] 
**cursor** | **NSString*** | The pagination cursor to be used in a subsequent request. If unset, this is the final response. See [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination) for more information. | [optional] 
**objects** | [**NSArray&lt;SQCatalogObject&gt;***](SQCatalogObject.md) | The CatalogObjects returned. | [optional] 
**relatedObjects** | [**NSArray&lt;SQCatalogObject&gt;***](SQCatalogObject.md) | A list of CatalogObjects referenced by the objects in the &#x60;objects&#x60; field. | [optional] 
**latestTime** | **NSString*** | When the associated product catalog was last updated. Will match the value for &#x60;end_time&#x60; or &#x60;cursor&#x60; if either field is included in the &#x60;SearchCatalog&#x60; request. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


