# SQCreateLocationCustomAttributeDefinitionRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customAttributeDefinition** | [**SQCustomAttributeDefinition***](SQCustomAttributeDefinition.md) | The custom attribute definition to create. Note the following: - With the exception of the &#x60;Selection&#x60; data type, the &#x60;schema&#x60; is specified as a simple URL to the JSON schema definition hosted on the Square CDN. For more information, including supported values and constraints, see [Supported data types](https://developer.squareup.com/docs/devtools/customattributes/overview#supported-data-types). - &#x60;name&#x60; is required unless &#x60;visibility&#x60; is set to &#x60;VISIBILITY_HIDDEN&#x60;. | 
**idempotencyKey** | **NSString*** | A unique identifier for this request, used to ensure idempotency. For more information, see [Idempotency](https://developer.squareup.com/docs/build-basics/common-api-patterns/idempotency). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


