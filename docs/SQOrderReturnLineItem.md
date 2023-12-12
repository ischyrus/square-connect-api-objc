# SQOrderReturnLineItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uid** | **NSString*** | A unique ID for this return line-item entry. | [optional] 
**sourceLineItemUid** | **NSString*** | The &#x60;uid&#x60; of the line item in the original sale order. | [optional] 
**name** | **NSString*** | The name of the line item. | [optional] 
**quantity** | **NSString*** | The quantity returned, formatted as a decimal number. For example, &#x60;\&quot;3\&quot;&#x60;.  Line items with a &#x60;quantity_unit&#x60; can have non-integer quantities. For example, &#x60;\&quot;1.70000\&quot;&#x60;. | 
**quantityUnit** | [**SQOrderQuantityUnit***](SQOrderQuantityUnit.md) | The unit and precision that this return line item&#39;s quantity is measured in. | [optional] 
**note** | **NSString*** | The note of the return line item. | [optional] 
**catalogObjectId** | **NSString*** | The [CatalogItemVariation](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogItemVariation) ID applied to this return line item. | [optional] 
**catalogVersion** | **NSNumber*** | The version of the catalog object that this line item references. | [optional] 
**variationName** | **NSString*** | The name of the variation applied to this return line item. | [optional] 
**itemType** | **NSString*** | The type of line item: an itemized return, a non-itemized return (custom amount), or the return of an unactivated gift card sale. | [optional] 
**returnModifiers** | [**NSArray&lt;SQOrderReturnLineItemModifier&gt;***](SQOrderReturnLineItemModifier.md) | The [CatalogModifier](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogModifier)s applied to this line item. | [optional] 
**appliedTaxes** | [**NSArray&lt;SQOrderLineItemAppliedTax&gt;***](SQOrderLineItemAppliedTax.md) | The list of references to &#x60;OrderReturnTax&#x60; entities applied to the return line item. Each &#x60;OrderLineItemAppliedTax&#x60; has a &#x60;tax_uid&#x60; that references the &#x60;uid&#x60; of a top-level &#x60;OrderReturnTax&#x60; applied to the return line item. On reads, the applied amount is populated. | [optional] 
**appliedDiscounts** | [**NSArray&lt;SQOrderLineItemAppliedDiscount&gt;***](SQOrderLineItemAppliedDiscount.md) | The list of references to &#x60;OrderReturnDiscount&#x60; entities applied to the return line item. Each &#x60;OrderLineItemAppliedDiscount&#x60; has a &#x60;discount_uid&#x60; that references the &#x60;uid&#x60; of a top-level &#x60;OrderReturnDiscount&#x60; applied to the return line item. On reads, the applied amount is populated. | [optional] 
**basePriceMoney** | [**SQMoney***](SQMoney.md) | The base price for a single unit of the line item. | [optional] 
**variationTotalPriceMoney** | [**SQMoney***](SQMoney.md) | The total price of all item variations returned in this line item. The price is calculated as &#x60;base_price_money&#x60; multiplied by &#x60;quantity&#x60; and does not include modifiers. | [optional] 
**grossReturnMoney** | [**SQMoney***](SQMoney.md) | The gross return amount of money calculated as (item base price + modifiers price) * quantity. | [optional] 
**totalTaxMoney** | [**SQMoney***](SQMoney.md) | The total amount of tax money to return for the line item. | [optional] 
**totalDiscountMoney** | [**SQMoney***](SQMoney.md) | The total amount of discount money to return for the line item. | [optional] 
**totalMoney** | [**SQMoney***](SQMoney.md) | The total amount of money to return for this line item. | [optional] 
**appliedServiceCharges** | [**NSArray&lt;SQOrderLineItemAppliedServiceCharge&gt;***](SQOrderLineItemAppliedServiceCharge.md) | The list of references to &#x60;OrderReturnServiceCharge&#x60; entities applied to the return line item. Each &#x60;OrderLineItemAppliedServiceCharge&#x60; has a &#x60;service_charge_uid&#x60; that references the &#x60;uid&#x60; of a top-level &#x60;OrderReturnServiceCharge&#x60; applied to the return line item. On reads, the applied amount is populated. | [optional] 
**totalServiceChargeMoney** | [**SQMoney***](SQMoney.md) | The total amount of apportioned service charge money to return for the line item. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


