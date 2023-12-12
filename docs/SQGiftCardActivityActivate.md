# SQGiftCardActivityActivate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amountMoney** | [**SQMoney***](SQMoney.md) | The amount added to the gift card. This value is a positive integer.  Applications that use a custom order processing system must specify this amount in the  [CreateGiftCardActivity](https://developer.squareup.com/reference/square_2023-10-18/gift-card-activities-api/create-gift-card-activity) request. | [optional] 
**orderId** | **NSString*** | The ID of the [order](https://developer.squareup.com/reference/square_2023-10-18/objects/Order) that contains the &#x60;GIFT_CARD&#x60; line item.  Applications that use the Square Orders API to process orders must specify the order ID [CreateGiftCardActivity](https://developer.squareup.com/reference/square_2023-10-18/gift-card-activities-api/create-gift-card-activity) request. | [optional] 
**lineItemUid** | **NSString*** | The UID of the &#x60;GIFT_CARD&#x60; line item in the order that represents the gift card purchase.  Applications that use the Square Orders API to process orders must specify the line item UID in the [CreateGiftCardActivity](https://developer.squareup.com/reference/square_2023-10-18/gift-card-activities-api/create-gift-card-activity) request. | [optional] 
**referenceId** | **NSString*** | A client-specified ID that associates the gift card activity with an entity in another system.   Applications that use a custom order processing system can use this field to track information  related to an order or payment. | [optional] 
**buyerPaymentInstrumentIds** | **NSArray&lt;NSString*&gt;*** | The payment instrument IDs used to process the gift card purchase, such as a credit card ID  or bank account ID.   Applications that use a custom order processing system must specify payment instrument IDs in  the [CreateGiftCardActivity](https://developer.squareup.com/reference/square_2023-10-18/gift-card-activities-api/create-gift-card-activity) request. Square uses this information to perform compliance checks.   For applications that use the Square Orders API to process payments, Square has the necessary  instrument IDs to perform compliance checks. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


