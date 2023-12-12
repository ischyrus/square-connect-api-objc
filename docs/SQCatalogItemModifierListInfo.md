# SQCatalogItemModifierListInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**modifierListId** | **NSString*** | The ID of the &#x60;CatalogModifierList&#x60; controlled by this &#x60;CatalogModifierListInfo&#x60;. | 
**modifierOverrides** | [**NSArray&lt;SQCatalogModifierOverride&gt;***](SQCatalogModifierOverride.md) | A set of &#x60;CatalogModifierOverride&#x60; objects that override whether a given &#x60;CatalogModifier&#x60; is enabled by default. | [optional] 
**minSelectedModifiers** | **NSNumber*** | If 0 or larger, the smallest number of &#x60;CatalogModifier&#x60;s that must be selected from this &#x60;CatalogModifierList&#x60;. | [optional] 
**maxSelectedModifiers** | **NSNumber*** | If 0 or larger, the largest number of &#x60;CatalogModifier&#x60;s that can be selected from this &#x60;CatalogModifierList&#x60;. | [optional] 
**enabled** | **NSNumber*** | If &#x60;true&#x60;, enable this &#x60;CatalogModifierList&#x60;. The default value is &#x60;true&#x60;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


