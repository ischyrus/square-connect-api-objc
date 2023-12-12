# SQBulkUpsertCustomerCustomAttributesResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**values** | [**NSDictionary&lt;SQCustomerCustomAttributeUpsertResponse&gt;***](SQCustomerCustomAttributeUpsertResponse.md) | A map of responses that correspond to individual upsert requests. Each response has the same ID as the corresponding request and contains either a &#x60;customer_id&#x60; and &#x60;custom_attribute&#x60; or an &#x60;errors&#x60; field. | [optional] 
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) | Any errors that occurred during the request. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


