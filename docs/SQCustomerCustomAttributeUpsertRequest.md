# SQCustomerCustomAttributeUpsertRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customerId** | **NSString*** | The ID of the target [customer profile](https://developer.squareup.com/reference/square_2023-10-18/objects/Customer). | 
**customAttribute** | [**SQCustomAttribute***](SQCustomAttribute.md) | The custom attribute to create or update, with following fields:  - &#x60;key&#x60;. This key must match the &#x60;key&#x60; of a custom attribute definition in the Square seller  account. If the requesting application is not the definition owner, you must provide the qualified key.  - &#x60;value&#x60;. This value must conform to the &#x60;schema&#x60; specified by the definition.  For more information, see [Value data types](https://developer.squareup.com/docs/customer-custom-attributes-api/custom-attributes#value-data-types).  - &#x60;version&#x60;. To enable [optimistic concurrency](https://developer.squareup.com/docs/build-basics/common-api-patterns/optimistic-concurrency) control for update operations, include this optional field in the request and set the value to the current version of the custom attribute. | 
**idempotencyKey** | **NSString*** | A unique identifier for this individual upsert request, used to ensure idempotency. For more information, see [Idempotency](https://developer.squareup.com/docs/build-basics/common-api-patterns/idempotency). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


