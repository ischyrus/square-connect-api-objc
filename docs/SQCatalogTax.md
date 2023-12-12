# SQCatalogTax

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **NSString*** | The tax&#39;s name. This is a searchable attribute for use in applicable query filters, and its value length is of Unicode code points. | [optional] 
**calculationPhase** | **NSString*** | Whether the tax is calculated based on a payment&#39;s subtotal or total. | [optional] 
**inclusionType** | **NSString*** | Whether the tax is &#x60;ADDITIVE&#x60; or &#x60;INCLUSIVE&#x60;. | [optional] 
**percentage** | **NSString*** | The percentage of the tax in decimal form, using a &#x60;&#39;.&#39;&#x60; as the decimal separator and without a &#x60;&#39;%&#39;&#x60; sign. A value of &#x60;7.5&#x60; corresponds to 7.5%. For a location-specific tax rate, contact the tax authority of the location or a tax consultant. | [optional] 
**appliesToCustomAmounts** | **NSNumber*** | If &#x60;true&#x60;, the fee applies to custom amounts entered into the Square Point of Sale app that are not associated with a particular &#x60;CatalogItem&#x60;. | [optional] 
**enabled** | **NSNumber*** | A Boolean flag to indicate whether the tax is displayed as enabled (&#x60;true&#x60;) in the Square Point of Sale app or not (&#x60;false&#x60;). | [optional] 
**appliesToProductSetId** | **NSString*** | The ID of a &#x60;CatalogProductSet&#x60; object. If set, the tax is applicable to all products in the product set. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


