# SQV1Tender

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | The tender&#39;s unique ID. | [optional] 
**type** | **NSString*** | The type of tender. | [optional] 
**name** | **NSString*** | A human-readable description of the tender. | [optional] 
**employeeId** | **NSString*** | The ID of the employee that processed the tender. | [optional] 
**receiptUrl** | **NSString*** | The URL of the receipt for the tender. | [optional] 
**cardBrand** | **NSString*** | The brand of credit card provided. | [optional] 
**panSuffix** | **NSString*** | The last four digits of the provided credit card&#39;s account number. | [optional] 
**entryMethod** | **NSString*** | The tender&#39;s unique ID. | [optional] 
**paymentNote** | **NSString*** | Notes entered by the merchant about the tender at the time of payment, if any. Typically only present for tender with the type: OTHER. | [optional] 
**totalMoney** | [**SQV1Money***](SQV1Money.md) | The total amount of money provided in this form of tender. | [optional] 
**tenderedMoney** | [**SQV1Money***](SQV1Money.md) | The amount of total_money applied to the payment. | [optional] 
**tenderedAt** | **NSString*** | The time when the tender was created, in ISO 8601 format. | [optional] 
**settledAt** | **NSString*** | The time when the tender was settled, in ISO 8601 format. | [optional] 
**changeBackMoney** | [**SQV1Money***](SQV1Money.md) | The amount of total_money returned to the buyer as change. | [optional] 
**refundedMoney** | [**SQV1Money***](SQV1Money.md) | The total of all refunds applied to this tender. This amount is always negative or zero. | [optional] 
**isExchange** | **NSNumber*** | Indicates whether or not the tender is associated with an exchange. If is_exchange is true, the tender represents the value of goods returned in an exchange not the actual money paid. The exchange value reduces the tender amounts needed to pay for items purchased in the exchange. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


