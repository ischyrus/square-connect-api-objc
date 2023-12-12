# SQCatalogModifierList

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **NSString*** | The name for the &#x60;CatalogModifierList&#x60; instance. This is a searchable attribute for use in applicable query filters, and its value length is of Unicode code points. | [optional] 
**ordinal** | **NSNumber*** | Determines where this modifier list appears in a list of &#x60;CatalogModifierList&#x60; values. | [optional] 
**selectionType** | **NSString*** | Indicates whether multiple options from the modifier list can be applied to a single &#x60;CatalogItem&#x60;. | [optional] 
**modifiers** | [**NSArray&lt;SQCatalogObject&gt;***](SQCatalogObject.md) | The options included in the &#x60;CatalogModifierList&#x60;. You must include at least one &#x60;CatalogModifier&#x60;. Each CatalogObject must have type &#x60;MODIFIER&#x60; and contain &#x60;CatalogModifier&#x60; data. | [optional] 
**imageIds** | **NSArray&lt;NSString*&gt;*** | The IDs of images associated with this &#x60;CatalogModifierList&#x60; instance. Currently these images are not displayed by Square, but are free to be displayed in 3rd party applications. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


