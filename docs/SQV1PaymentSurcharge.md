# SQV1PaymentSurcharge

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **NSString*** | The name of the surcharge. | [optional] 
**appliedMoney** | [**SQV1Money***](SQV1Money.md) | The amount of money applied to the order as a result of the surcharge. | [optional] 
**rate** | **NSString*** | The amount of the surcharge as a percentage. The percentage is provided as a string representing the decimal equivalent of the percentage. For example, \&quot;0.7\&quot; corresponds to a 7% surcharge. Exactly one of rate or amount_money should be set. | [optional] 
**amountMoney** | [**SQV1Money***](SQV1Money.md) | The amount of the surcharge as a Money object. Exactly one of rate or amount_money should be set. | [optional] 
**type** | **NSString*** | Indicates the source of the surcharge. For example, if it was applied as an automatic gratuity for a large group. | [optional] 
**taxable** | **NSNumber*** | Indicates whether the surcharge is taxable. | [optional] 
**taxes** | [**NSArray&lt;SQV1PaymentTax&gt;***](SQV1PaymentTax.md) | The list of taxes that should be applied to the surcharge. | [optional] 
**surchargeId** | **NSString*** | A Square-issued unique identifier associated with the surcharge. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


