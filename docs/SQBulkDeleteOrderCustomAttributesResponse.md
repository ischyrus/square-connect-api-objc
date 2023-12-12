# SQBulkDeleteOrderCustomAttributesResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) | Any errors that occurred during the request. | [optional] 
**values** | [**NSDictionary&lt;SQDeleteOrderCustomAttributeResponse&gt;***](SQDeleteOrderCustomAttributeResponse.md) |  A map of responses that correspond to individual delete requests. Each response has the same ID  as the corresponding request and contains either a &#x60;custom_attribute&#x60; or an &#x60;errors&#x60; field. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


