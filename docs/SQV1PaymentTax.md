# SQV1PaymentTax

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) | Any errors that occurred during the request. | [optional] 
**name** | **NSString*** | The merchant-defined name of the tax. | [optional] 
**appliedMoney** | [**SQV1Money***](SQV1Money.md) | The amount of money that this tax adds to the payment. | [optional] 
**rate** | **NSString*** | The rate of the tax, as a string representation of a decimal number. A value of 0.07 corresponds to a rate of 7%. | [optional] 
**inclusionType** | **NSString*** | Whether the tax is an ADDITIVE tax or an INCLUSIVE tax. | [optional] 
**feeId** | **NSString*** | The ID of the tax, if available. Taxes applied in older versions of Square Register might not have an ID. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


