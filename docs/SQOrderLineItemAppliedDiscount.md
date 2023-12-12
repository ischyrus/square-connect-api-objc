# SQOrderLineItemAppliedDiscount

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uid** | **NSString*** | A unique ID that identifies the applied discount only within this order. | [optional] 
**discountUid** | **NSString*** | The &#x60;uid&#x60; of the discount that the applied discount represents. It must reference a discount present in the &#x60;order.discounts&#x60; field.  This field is immutable. To change which discounts apply to a line item, you must delete the discount and re-add it as a new &#x60;OrderLineItemAppliedDiscount&#x60;. | 
**appliedMoney** | [**SQMoney***](SQMoney.md) | The amount of money applied by the discount to the line item. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


