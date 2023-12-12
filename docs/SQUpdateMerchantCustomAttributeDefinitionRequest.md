# SQUpdateMerchantCustomAttributeDefinitionRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customAttributeDefinition** | [**SQCustomAttributeDefinition***](SQCustomAttributeDefinition.md) | The custom attribute definition that contains the fields to update. This endpoint supports sparse updates, so only new or changed fields need to be included in the request. Only the following fields can be updated: - &#x60;name&#x60; - &#x60;description&#x60; - &#x60;visibility&#x60; - &#x60;schema&#x60; for a &#x60;Selection&#x60; data type. Only changes to the named options or the maximum number of allowed selections are supported. For more information, see [Update a merchant custom attribute definition](https://developer.squareup.com/docs/merchant-custom-attributes-api/custom-attribute-definitions#update-custom-attribute-definition). The version field must match the current version of the custom attribute definition to enable [optimistic concurrency](https://developer.squareup.com/docs/build-basics/common-api-patterns/optimistic-concurrency) If this is not important for your application, version can be set to -1. For any other values, the request fails with a BAD_REQUEST error. | 
**idempotencyKey** | **NSString*** | A unique identifier for this request, used to ensure idempotency. For more information, see [Idempotency](https://developer.squareup.com/docs/build-basics/common-api-patterns/idempotency). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


