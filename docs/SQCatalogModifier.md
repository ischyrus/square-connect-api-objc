# SQCatalogModifier

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **NSString*** | The modifier name.  This is a searchable attribute for use in applicable query filters, and its value length is of Unicode code points. | [optional] 
**priceMoney** | [**SQMoney***](SQMoney.md) | The modifier price. | [optional] 
**ordinal** | **NSNumber*** | Determines where this &#x60;CatalogModifier&#x60; appears in the &#x60;CatalogModifierList&#x60;. | [optional] 
**modifierListId** | **NSString*** | The ID of the &#x60;CatalogModifierList&#x60; associated with this modifier. | [optional] 
**locationOverrides** | [**NSArray&lt;SQModifierLocationOverrides&gt;***](SQModifierLocationOverrides.md) | Location-specific price overrides. | [optional] 
**imageId** | **NSString*** | The ID of the image associated with this &#x60;CatalogModifier&#x60; instance. Currently this image is not displayed by Square, but is free to be displayed in 3rd party applications. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


