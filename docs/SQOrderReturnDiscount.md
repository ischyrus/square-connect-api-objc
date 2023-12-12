# SQOrderReturnDiscount

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uid** | **NSString*** | A unique ID that identifies the returned discount only within this order. | [optional] 
**sourceDiscountUid** | **NSString*** | The discount &#x60;uid&#x60; from the order that contains the original application of this discount. | [optional] 
**catalogObjectId** | **NSString*** | The catalog object ID referencing [CatalogDiscount](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogDiscount). | [optional] 
**catalogVersion** | **NSNumber*** | The version of the catalog object that this discount references. | [optional] 
**name** | **NSString*** | The discount&#39;s name. | [optional] 
**type** | **NSString*** | The type of the discount. If it is created by the API, it is &#x60;FIXED_PERCENTAGE&#x60; or &#x60;FIXED_AMOUNT&#x60;.  Discounts that do not reference a catalog object ID must have a type of &#x60;FIXED_PERCENTAGE&#x60; or &#x60;FIXED_AMOUNT&#x60;. | [optional] 
**percentage** | **NSString*** | The percentage of the tax, as a string representation of a decimal number. A value of &#x60;\&quot;7.25\&quot;&#x60; corresponds to a percentage of 7.25%.  &#x60;percentage&#x60; is not set for amount-based discounts. | [optional] 
**amountMoney** | [**SQMoney***](SQMoney.md) | The total declared monetary amount of the discount.  &#x60;amount_money&#x60; is not set for percentage-based discounts. | [optional] 
**appliedMoney** | [**SQMoney***](SQMoney.md) | The amount of discount actually applied to this line item. When an amount-based discount is at the order level, this value is different from &#x60;amount_money&#x60; because the discount is distributed across the line items. | [optional] 
**scope** | **NSString*** | Indicates the level at which the &#x60;OrderReturnDiscount&#x60; applies. For &#x60;ORDER&#x60; scoped discounts, the server generates references in &#x60;applied_discounts&#x60; on all &#x60;OrderReturnLineItem&#x60;s. For &#x60;LINE_ITEM&#x60; scoped discounts, the discount is only applied to &#x60;OrderReturnLineItem&#x60;s with references in their &#x60;applied_discounts&#x60; field. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


