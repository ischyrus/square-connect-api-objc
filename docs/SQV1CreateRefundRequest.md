# SQV1CreateRefundRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paymentId** | **NSString*** | The ID of the payment to refund. If you are creating a &#x60;PARTIAL&#x60; refund for a split tender payment, instead provide the id of the particular tender you want to refund. | 
**type** | **NSString*** | The type of refund (FULL or PARTIAL). | 
**reason** | **NSString*** | The reason for the refund. | 
**refundedMoney** | [**SQV1Money***](SQV1Money.md) | The amount of money to refund. Required only for PARTIAL refunds. | [optional] 
**requestIdempotenceKey** | **NSString*** | An optional key to ensure idempotence if you issue the same PARTIAL refund request more than once. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


