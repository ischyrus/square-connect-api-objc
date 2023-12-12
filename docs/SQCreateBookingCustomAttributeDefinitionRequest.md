# SQCreateBookingCustomAttributeDefinitionRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customAttributeDefinition** | [**SQCustomAttributeDefinition***](SQCustomAttributeDefinition.md) | The custom attribute definition to create, with the following fields:  - &#x60;key&#x60;  - &#x60;name&#x60;. If provided, &#x60;name&#x60; must be unique (case-sensitive) across all visible booking-related custom attribute definitions for the seller.  - &#x60;description&#x60;  - &#x60;visibility&#x60;. Note that all custom attributes are visible in exported booking data, including those set to &#x60;VISIBILITY_HIDDEN&#x60;.  - &#x60;schema&#x60;. With the exception of the &#x60;Selection&#x60; data type, the &#x60;schema&#x60; is specified as a simple URL to the JSON schema definition hosted on the Square CDN. For more information, see [Specifying the schema](https://developer.squareup.com/docs/booking-custom-attributes-api/custom-attribute-definitions#specify-schema). | 
**idempotencyKey** | **NSString*** | A unique identifier for this request, used to ensure idempotency. For more information, see [Idempotency](https://developer.squareup.com/docs/build-basics/common-api-patterns/idempotency). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


