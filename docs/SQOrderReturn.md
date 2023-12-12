# SQOrderReturn

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uid** | **NSString*** | A unique ID that identifies the return only within this order. | [optional] 
**sourceOrderId** | **NSString*** | An order that contains the original sale of these return line items. This is unset for unlinked returns. | [optional] 
**returnLineItems** | [**NSArray&lt;SQOrderReturnLineItem&gt;***](SQOrderReturnLineItem.md) | A collection of line items that are being returned. | [optional] 
**returnServiceCharges** | [**NSArray&lt;SQOrderReturnServiceCharge&gt;***](SQOrderReturnServiceCharge.md) | A collection of service charges that are being returned. | [optional] 
**returnTaxes** | [**NSArray&lt;SQOrderReturnTax&gt;***](SQOrderReturnTax.md) | A collection of references to taxes being returned for an order, including the total applied tax amount to be returned. The taxes must reference a top-level tax ID from the source order. | [optional] 
**returnDiscounts** | [**NSArray&lt;SQOrderReturnDiscount&gt;***](SQOrderReturnDiscount.md) | A collection of references to discounts being returned for an order, including the total applied discount amount to be returned. The discounts must reference a top-level discount ID from the source order. | [optional] 
**roundingAdjustment** | [**SQOrderRoundingAdjustment***](SQOrderRoundingAdjustment.md) | A positive or negative rounding adjustment to the total value being returned. Adjustments are commonly used to apply cash rounding when the minimum unit of the account is smaller than the lowest physical denomination of the currency. | [optional] 
**returnAmounts** | [**SQOrderMoneyAmounts***](SQOrderMoneyAmounts.md) | An aggregate monetary value being returned by this return entry. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


