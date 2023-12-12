# SQV1Settlement

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | The settlement&#39;s unique identifier. | [optional] 
**status** | **NSString*** | The settlement&#39;s current status. | [optional] 
**totalMoney** | [**SQV1Money***](SQV1Money.md) | The amount of money involved in the settlement. A positive amount indicates a deposit, and a negative amount indicates a withdrawal. This amount is never zero. | [optional] 
**initiatedAt** | **NSString*** | The time when the settlement was submitted for deposit or withdrawal, in ISO 8601 format. | [optional] 
**bankAccountId** | **NSString*** | The Square-issued unique identifier for the bank account associated with the settlement. | [optional] 
**entries** | [**NSArray&lt;SQV1SettlementEntry&gt;***](SQV1SettlementEntry.md) | The entries included in this settlement. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


