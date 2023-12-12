# SQInvoicePaymentReminder

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uid** | **NSString*** | A Square-assigned ID that uniquely identifies the reminder within the &#x60;InvoicePaymentRequest&#x60;. | [optional] 
**relativeScheduledDays** | **NSNumber*** | The number of days before (a negative number) or after (a positive number) the payment request &#x60;due_date&#x60; when the reminder is sent. For example, -3 indicates that the reminder should be sent 3 days before the payment request &#x60;due_date&#x60;. | [optional] 
**message** | **NSString*** | The reminder message. | [optional] 
**status** | **NSString*** | The status of the reminder. | [optional] 
**sentAt** | **NSString*** | If sent, the timestamp when the reminder was sent, in RFC 3339 format. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


