# SQTerminalRefund

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | A unique ID for this &#x60;TerminalRefund&#x60;. | [optional] 
**refundId** | **NSString*** | The reference to the payment refund created by completing this &#x60;TerminalRefund&#x60;. | [optional] 
**paymentId** | **NSString*** | The unique ID of the payment being refunded. | 
**orderId** | **NSString*** | The reference to the Square order ID for the payment identified by the &#x60;payment_id&#x60;. | [optional] 
**amountMoney** | [**SQMoney***](SQMoney.md) | The amount of money, inclusive of &#x60;tax_money&#x60;, that the &#x60;TerminalRefund&#x60; should return. This value is limited to the amount taken in the original payment minus any completed or pending refunds. | 
**reason** | **NSString*** | A description of the reason for the refund. | 
**deviceId** | **NSString*** | The unique ID of the device intended for this &#x60;TerminalRefund&#x60;. The Id can be retrieved from /v2/devices api. | 
**deadlineDuration** | **NSString*** | The RFC 3339 duration, after which the refund is automatically canceled. A &#x60;TerminalRefund&#x60; that is &#x60;PENDING&#x60; is automatically &#x60;CANCELED&#x60; and has a cancellation reason of &#x60;TIMED_OUT&#x60;.  Default: 5 minutes from creation.  Maximum: 5 minutes | [optional] 
**status** | **NSString*** | The status of the &#x60;TerminalRefund&#x60;. Options: &#x60;PENDING&#x60;, &#x60;IN_PROGRESS&#x60;, &#x60;CANCEL_REQUESTED&#x60;, &#x60;CANCELED&#x60;, or &#x60;COMPLETED&#x60;. | [optional] 
**cancelReason** | **NSString*** | Present if the status is &#x60;CANCELED&#x60;. | [optional] 
**createdAt** | **NSString*** | The time when the &#x60;TerminalRefund&#x60; was created, as an RFC 3339 timestamp. | [optional] 
**updatedAt** | **NSString*** | The time when the &#x60;TerminalRefund&#x60; was last updated, as an RFC 3339 timestamp. | [optional] 
**appId** | **NSString*** | The ID of the application that created the refund. | [optional] 
**locationId** | **NSString*** | The location of the device where the &#x60;TerminalRefund&#x60; was directed. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


