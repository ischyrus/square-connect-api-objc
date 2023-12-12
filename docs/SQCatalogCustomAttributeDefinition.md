# SQCatalogCustomAttributeDefinition

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **NSString*** | The type of this custom attribute. Cannot be modified after creation. Required. | 
**name** | **NSString*** |  The name of this definition for API and seller-facing UI purposes. The name must be unique within the (merchant, application) pair. Required. May not be empty and may not exceed 255 characters. Can be modified after creation. | 
**_description** | **NSString*** | Seller-oriented description of the meaning of this Custom Attribute, any constraints that the seller should observe, etc. May be displayed as a tooltip in Square UIs. | [optional] 
**sourceApplication** | [**SQSourceApplication***](SQSourceApplication.md) | __Read only.__ Contains information about the application that created this custom attribute definition. | [optional] 
**allowedObjectTypes** | **NSArray&lt;NSString*&gt;*** | The set of &#x60;CatalogObject&#x60; types that this custom atttribute may be applied to. Currently, only &#x60;ITEM&#x60;, &#x60;ITEM_VARIATION&#x60;, and &#x60;MODIFIER&#x60; are allowed. At least one type must be included. | 
**sellerVisibility** | **NSString*** | The visibility of a custom attribute in seller-facing UIs (including Square Point of Sale applications and Square Dashboard). May be modified. | [optional] 
**appVisibility** | **NSString*** | The visibility of a custom attribute to applications other than the application that created the attribute. | [optional] 
**stringConfig** | [**SQCatalogCustomAttributeDefinitionStringConfig***](SQCatalogCustomAttributeDefinitionStringConfig.md) | Optionally, populated when &#x60;type&#x60; &#x3D; &#x60;STRING&#x60;, unset otherwise. | [optional] 
**numberConfig** | [**SQCatalogCustomAttributeDefinitionNumberConfig***](SQCatalogCustomAttributeDefinitionNumberConfig.md) | Optionally, populated when &#x60;type&#x60; &#x3D; &#x60;NUMBER&#x60;, unset otherwise. | [optional] 
**selectionConfig** | [**SQCatalogCustomAttributeDefinitionSelectionConfig***](SQCatalogCustomAttributeDefinitionSelectionConfig.md) | Populated when &#x60;type&#x60; is set to &#x60;SELECTION&#x60;, unset otherwise. | [optional] 
**customAttributeUsageCount** | **NSNumber*** | The number of custom attributes that reference this custom attribute definition. Set by the server in response to a ListCatalog request with &#x60;include_counts&#x60; set to &#x60;true&#x60;.  If the actual count is greater than 100, &#x60;custom_attribute_usage_count&#x60; will be set to &#x60;100&#x60;. | [optional] 
**key** | **NSString*** | The name of the desired custom attribute key that can be used to access the custom attribute value on catalog objects. Cannot be modified after the custom attribute definition has been created. Must be between 1 and 60 characters, and may only contain the characters &#x60;[a-zA-Z0-9_-]&#x60;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


