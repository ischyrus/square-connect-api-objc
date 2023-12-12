# SQCatalogCustomAttributeValue

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **NSString*** | The name of the custom attribute. | [optional] 
**stringValue** | **NSString*** | The string value of the custom attribute.  Populated if &#x60;type&#x60; &#x3D; &#x60;STRING&#x60;. | [optional] 
**customAttributeDefinitionId** | **NSString*** | The id of the [CatalogCustomAttributeDefinition](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogCustomAttributeDefinition) this value belongs to. | [optional] 
**type** | **NSString*** | A copy of type from the associated &#x60;CatalogCustomAttributeDefinition&#x60;. | [optional] 
**numberValue** | **NSString*** | Populated if &#x60;type&#x60; &#x3D; &#x60;NUMBER&#x60;. Contains a string representation of a decimal number, using a &#x60;.&#x60; as the decimal separator. | [optional] 
**booleanValue** | **NSNumber*** | A &#x60;true&#x60; or &#x60;false&#x60; value. Populated if &#x60;type&#x60; &#x3D; &#x60;BOOLEAN&#x60;. | [optional] 
**selectionUidValues** | **NSArray&lt;NSString*&gt;*** | One or more choices from &#x60;allowed_selections&#x60;. Populated if &#x60;type&#x60; &#x3D; &#x60;SELECTION&#x60;. | [optional] 
**key** | **NSString*** | If the associated &#x60;CatalogCustomAttributeDefinition&#x60; object is defined by another application, this key is prefixed by the defining application ID. For example, if the CatalogCustomAttributeDefinition has a key attribute of \&quot;cocoa_brand\&quot; and the defining application ID is \&quot;abcd1234\&quot;, this key is \&quot;abcd1234:cocoa_brand\&quot; when the application making the request is different from the application defining the custom attribute definition. Otherwise, the key is simply \&quot;cocoa_brand\&quot;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


