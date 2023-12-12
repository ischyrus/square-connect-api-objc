# SQProcessingFee

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**effectiveAt** | **NSString*** | The timestamp of when the fee takes effect, in RFC 3339 format. | [optional] 
**type** | **NSString*** | The type of fee assessed or adjusted. The fee type can be &#x60;INITIAL&#x60; or &#x60;ADJUSTMENT&#x60;. | [optional] 
**amountMoney** | [**SQMoney***](SQMoney.md) | The fee amount, which might be negative, that is assessed or adjusted by Square.  Positive values represent funds being assessed, while negative values represent funds being returned. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


