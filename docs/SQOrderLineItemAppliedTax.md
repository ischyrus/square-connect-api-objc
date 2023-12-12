# SQOrderLineItemAppliedTax

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uid** | **NSString*** | A unique ID that identifies the applied tax only within this order. | [optional] 
**taxUid** | **NSString*** | The &#x60;uid&#x60; of the tax for which this applied tax represents. It must reference a tax present in the &#x60;order.taxes&#x60; field.  This field is immutable. To change which taxes apply to a line item, delete and add a new &#x60;OrderLineItemAppliedTax&#x60;. | 
**appliedMoney** | [**SQMoney***](SQMoney.md) | The amount of money applied by the tax to the line item. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


