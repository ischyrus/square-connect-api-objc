# SQCardPaymentDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **NSString*** | The card payment&#39;s current state. The state can be AUTHORIZED, CAPTURED, VOIDED, or FAILED. | [optional] 
**card** | [**SQCard***](SQCard.md) | The credit card&#39;s non-confidential details. | [optional] 
**entryMethod** | **NSString*** | The method used to enter the card&#39;s details for the payment. The method can be &#x60;KEYED&#x60;, &#x60;SWIPED&#x60;, &#x60;EMV&#x60;, &#x60;ON_FILE&#x60;, or &#x60;CONTACTLESS&#x60;. | [optional] 
**cvvStatus** | **NSString*** | The status code returned from the Card Verification Value (CVV) check. The code can be &#x60;CVV_ACCEPTED&#x60;, &#x60;CVV_REJECTED&#x60;, or &#x60;CVV_NOT_CHECKED&#x60;. | [optional] 
**avsStatus** | **NSString*** | The status code returned from the Address Verification System (AVS) check. The code can be &#x60;AVS_ACCEPTED&#x60;, &#x60;AVS_REJECTED&#x60;, or &#x60;AVS_NOT_CHECKED&#x60;. | [optional] 
**authResultCode** | **NSString*** | The status code returned by the card issuer that describes the payment&#39;s authorization status. | [optional] 
**applicationIdentifier** | **NSString*** | For EMV payments, the application ID identifies the EMV application used for the payment. | [optional] 
**applicationName** | **NSString*** | For EMV payments, the human-readable name of the EMV application used for the payment. | [optional] 
**applicationCryptogram** | **NSString*** | For EMV payments, the cryptogram generated for the payment. | [optional] 
**verificationMethod** | **NSString*** | For EMV payments, the method used to verify the cardholder&#39;s identity. The method can be &#x60;PIN&#x60;, &#x60;SIGNATURE&#x60;, &#x60;PIN_AND_SIGNATURE&#x60;, &#x60;ON_DEVICE&#x60;, or &#x60;NONE&#x60;. | [optional] 
**verificationResults** | **NSString*** | For EMV payments, the results of the cardholder verification. The result can be &#x60;SUCCESS&#x60;, &#x60;FAILURE&#x60;, or &#x60;UNKNOWN&#x60;. | [optional] 
**statementDescription** | **NSString*** | The statement description sent to the card networks.  Note: The actual statement description varies and is likely to be truncated and appended with additional information on a per issuer basis. | [optional] 
**deviceDetails** | [**SQDeviceDetails***](SQDeviceDetails.md) | __Deprecated__: Use &#x60;Payment.device_details&#x60; instead.  Details about the device that took the payment. | [optional] 
**cardPaymentTimeline** | [**SQCardPaymentTimeline***](SQCardPaymentTimeline.md) | The timeline for card payments. | [optional] 
**refundRequiresCardPresence** | **NSNumber*** | Whether the card must be physically present for the payment to be refunded.  If set to &#x60;true&#x60;, the card must be present. | [optional] 
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) | Information about errors encountered during the request. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


