# SQCreateOrderCustomAttributeDefinitionRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customAttributeDefinition** | [**SQCustomAttributeDefinition***](SQCustomAttributeDefinition.md) | The custom attribute definition to create. Note the following: - With the exception of the &#x60;Selection&#x60; data type, the &#x60;schema&#x60; is specified as a simple URL to the JSON schema definition hosted on the Square CDN. For more information, including supported values and constraints, see [Specifying the schema](https://developer.squareup.com/docs/customer-custom-attributes-api/custom-attribute-definitions#specify-schema). - If provided, &#x60;name&#x60; must be unique (case-sensitive) across all visible customer-related custom attribute definitions for the seller. - All custom attributes are visible in exported customer data, including those set to &#x60;VISIBILITY_HIDDEN&#x60;. | 
**idempotencyKey** | **NSString*** | A unique identifier for this request, used to ensure idempotency.  For more information, see [Idempotency](https://developer.squareup.com/docs/build-basics/common-api-patterns/idempotency). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


