# SQInvoiceRecipient

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customerId** | **NSString*** | The ID of the customer. This is the customer profile ID that  you provide when creating a draft invoice. | [optional] 
**givenName** | **NSString*** | The recipient&#39;s given (that is, first) name. | [optional] 
**familyName** | **NSString*** | The recipient&#39;s family (that is, last) name. | [optional] 
**emailAddress** | **NSString*** | The recipient&#39;s email address. | [optional] 
**address** | [**SQAddress***](SQAddress.md) | The recipient&#39;s physical address. | [optional] 
**phoneNumber** | **NSString*** | The recipient&#39;s phone number. | [optional] 
**companyName** | **NSString*** | The name of the recipient&#39;s company. | [optional] 
**taxIds** | [**SQInvoiceRecipientTaxIds***](SQInvoiceRecipientTaxIds.md) | The recipient&#39;s tax IDs. The country of the seller account determines whether this field  is available for the customer. For more information, see [Invoice recipient tax IDs](https://developer.squareup.com/docs/invoices-api/overview#recipient-tax-ids). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


