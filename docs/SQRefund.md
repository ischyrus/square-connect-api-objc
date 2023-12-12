# SQRefund

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | The refund&#39;s unique ID. | 
**locationId** | **NSString*** | The ID of the refund&#39;s associated location. | 
**transactionId** | **NSString*** | The ID of the transaction that the refunded tender is part of. | [optional] 
**tenderId** | **NSString*** | The ID of the refunded tender. | 
**createdAt** | **NSString*** | The timestamp for when the refund was created, in RFC 3339 format. | [optional] 
**reason** | **NSString*** | The reason for the refund being issued. | 
**amountMoney** | [**SQMoney***](SQMoney.md) | The amount of money refunded to the buyer. | 
**status** | **NSString*** | The current status of the refund (&#x60;PENDING&#x60;, &#x60;APPROVED&#x60;, &#x60;REJECTED&#x60;, or &#x60;FAILED&#x60;). | 
**processingFeeMoney** | [**SQMoney***](SQMoney.md) | The amount of Square processing fee money refunded to the *merchant*. | [optional] 
**additionalRecipients** | [**NSArray&lt;SQAdditionalRecipient&gt;***](SQAdditionalRecipient.md) | Additional recipients (other than the merchant) receiving a portion of this refund. For example, fees assessed on a refund of a purchase by a third party integration. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


