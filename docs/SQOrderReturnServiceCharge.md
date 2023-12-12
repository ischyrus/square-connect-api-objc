# SQOrderReturnServiceCharge

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uid** | **NSString*** | A unique ID that identifies the return service charge only within this order. | [optional] 
**sourceServiceChargeUid** | **NSString*** | The service charge &#x60;uid&#x60; from the order containing the original service charge. &#x60;source_service_charge_uid&#x60; is &#x60;null&#x60; for unlinked returns. | [optional] 
**name** | **NSString*** | The name of the service charge. | [optional] 
**catalogObjectId** | **NSString*** | The catalog object ID of the associated [OrderServiceCharge](https://developer.squareup.com/reference/square_2023-10-18/objects/OrderServiceCharge). | [optional] 
**catalogVersion** | **NSNumber*** | The version of the catalog object that this service charge references. | [optional] 
**percentage** | **NSString*** | The percentage of the service charge, as a string representation of a decimal number. For example, a value of &#x60;\&quot;7.25\&quot;&#x60; corresponds to a percentage of 7.25%.  Either &#x60;percentage&#x60; or &#x60;amount_money&#x60; should be set, but not both. | [optional] 
**amountMoney** | [**SQMoney***](SQMoney.md) | The amount of a non-percentage-based service charge.  Either &#x60;percentage&#x60; or &#x60;amount_money&#x60; should be set, but not both. | [optional] 
**appliedMoney** | [**SQMoney***](SQMoney.md) | The amount of money applied to the order by the service charge, including any inclusive tax amounts, as calculated by Square.  - For fixed-amount service charges, &#x60;applied_money&#x60; is equal to &#x60;amount_money&#x60;. - For percentage-based service charges, &#x60;applied_money&#x60; is the money calculated using the percentage. | [optional] 
**totalMoney** | [**SQMoney***](SQMoney.md) | The total amount of money to collect for the service charge.  __NOTE__: If an inclusive tax is applied to the service charge, &#x60;total_money&#x60; does not equal &#x60;applied_money&#x60; plus &#x60;total_tax_money&#x60; because the inclusive tax amount is already included in both &#x60;applied_money&#x60; and &#x60;total_tax_money&#x60;. | [optional] 
**totalTaxMoney** | [**SQMoney***](SQMoney.md) | The total amount of tax money to collect for the service charge. | [optional] 
**calculationPhase** | **NSString*** | The calculation phase after which to apply the service charge. | [optional] 
**taxable** | **NSNumber*** | Indicates whether the surcharge can be taxed. Service charges calculated in the &#x60;TOTAL_PHASE&#x60; cannot be marked as taxable. | [optional] 
**appliedTaxes** | [**NSArray&lt;SQOrderLineItemAppliedTax&gt;***](SQOrderLineItemAppliedTax.md) | The list of references to &#x60;OrderReturnTax&#x60; entities applied to the &#x60;OrderReturnServiceCharge&#x60;. Each &#x60;OrderLineItemAppliedTax&#x60; has a &#x60;tax_uid&#x60; that references the &#x60;uid&#x60; of a top-level &#x60;OrderReturnTax&#x60; that is being applied to the &#x60;OrderReturnServiceCharge&#x60;. On reads, the applied amount is populated. | [optional] 
**treatmentType** | **NSString*** | The treatment type of the service charge. | [optional] 
**scope** | **NSString*** | Indicates the level at which the apportioned service charge applies. For &#x60;ORDER&#x60; scoped service charges, Square generates references in &#x60;applied_service_charges&#x60; on all order line items that do not have them. For &#x60;LINE_ITEM&#x60; scoped service charges, the service charge only applies to line items with a service charge reference in their &#x60;applied_service_charges&#x60; field.  This field is immutable. To change the scope of an apportioned service charge, you must delete the apportioned service charge and re-add it as a new apportioned service charge. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


