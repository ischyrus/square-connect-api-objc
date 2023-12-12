# SQUpsertOrderCustomAttributeRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customAttribute** | [**SQCustomAttribute***](SQCustomAttribute.md) | The custom attribute to create or update, with the following fields:  - &#x60;value&#x60;. This value must conform to the &#x60;schema&#x60; specified by the definition.  For more information, see [Value data types](https://developer.squareup.com/docs/customer-custom-attributes-api/custom-attributes#value-data-types).  - &#x60;version&#x60;. To enable [optimistic concurrency](https://developer.squareup.com/docs/build-basics/common-api-patterns/optimistic-concurrency) control, include this optional field and specify the current version of the custom attribute. | 
**idempotencyKey** | **NSString*** | A unique identifier for this request, used to ensure idempotency.  For more information, see [Idempotency](https://developer.squareup.com/docs/build-basics/common-api-patterns/idempotency). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


