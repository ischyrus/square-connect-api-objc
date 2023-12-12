# SQBatchUpsertCatalogObjectsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) | Any errors that occurred during the request. | [optional] 
**objects** | [**NSArray&lt;SQCatalogObject&gt;***](SQCatalogObject.md) | The created successfully created CatalogObjects. | [optional] 
**updatedAt** | **NSString*** | The database [timestamp](https://developer.squareup.com/docs/build-basics/working-with-dates) of this update in RFC 3339 format, e.g., \&quot;2016-09-04T23:59:33.123Z\&quot;. | [optional] 
**idMappings** | [**NSArray&lt;SQCatalogIdMapping&gt;***](SQCatalogIdMapping.md) | The mapping between client and server IDs for this upsert. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


