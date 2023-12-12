# SQBankAccountPaymentDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bankName** | **NSString*** | The name of the bank associated with the bank account. | [optional] 
**transferType** | **NSString*** | The type of the bank transfer. The type can be &#x60;ACH&#x60; or &#x60;UNKNOWN&#x60;. | [optional] 
**accountOwnershipType** | **NSString*** | The ownership type of the bank account performing the transfer. The type can be &#x60;INDIVIDUAL&#x60;, &#x60;COMPANY&#x60;, or &#x60;ACCOUNT_TYPE_UNKNOWN&#x60;. | [optional] 
**fingerprint** | **NSString*** | Uniquely identifies the bank account for this seller and can be used to determine if payments are from the same bank account. | [optional] 
**country** | **NSString*** | The two-letter ISO code representing the country the bank account is located in. | [optional] 
**statementDescription** | **NSString*** | The statement description as sent to the bank. | [optional] 
**achDetails** | [**SQACHDetails***](SQACHDetails.md) | ACH-specific information about the transfer. The information is only populated if the &#x60;transfer_type&#x60; is &#x60;ACH&#x60;. | [optional] 
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) | Information about errors encountered during the request. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


