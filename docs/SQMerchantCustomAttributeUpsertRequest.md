# SQMerchantCustomAttributeUpsertRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**merchantId** | **NSString*** | The ID of the target [merchant](https://developer.squareup.com/reference/square_2023-10-18/objects/Merchant). | 
**customAttribute** | [**SQCustomAttribute***](SQCustomAttribute.md) | The custom attribute to create or update, with following fields: - &#x60;key&#x60;. This key must match the &#x60;key&#x60; of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must provide the qualified key. - &#x60;value&#x60;. This value must conform to the &#x60;schema&#x60; specified by the definition. For more information, see [Supported data types](https://developer.squareup.com/docs/devtools/customattributes/overview#supported-data-types). - The version field must match the current version of the custom attribute definition to enable [optimistic concurrency](https://developer.squareup.com/docs/build-basics/common-api-patterns/optimistic-concurrency) If this is not important for your application, version can be set to -1. For any other values, the request fails with a BAD_REQUEST error. | 
**idempotencyKey** | **NSString*** | A unique identifier for this individual upsert request, used to ensure idempotency. For more information, see [Idempotency](https://developer.squareup.com/docs/build-basics/common-api-patterns/idempotency). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


