# SQTender

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | The tender&#39;s unique ID. It is the associated payment ID. | [optional] 
**locationId** | **NSString*** | The ID of the transaction&#39;s associated location. | [optional] 
**transactionId** | **NSString*** | The ID of the tender&#39;s associated transaction. | [optional] 
**createdAt** | **NSString*** | The timestamp for when the tender was created, in RFC 3339 format. | [optional] 
**note** | **NSString*** | An optional note associated with the tender at the time of payment. | [optional] 
**amountMoney** | [**SQMoney***](SQMoney.md) | The total amount of the tender, including &#x60;tip_money&#x60;. If the tender has a &#x60;payment_id&#x60;, the &#x60;total_money&#x60; of the corresponding [Payment](https://developer.squareup.com/reference/square_2023-10-18/objects/Payment) will be equal to the &#x60;amount_money&#x60; of the tender. | [optional] 
**tipMoney** | [**SQMoney***](SQMoney.md) | The tip&#39;s amount of the tender. | [optional] 
**processingFeeMoney** | [**SQMoney***](SQMoney.md) | The amount of any Square processing fees applied to the tender.  This field is not immediately populated when a new transaction is created. It is usually available after about ten seconds. | [optional] 
**customerId** | **NSString*** | If the tender is associated with a customer or represents a customer&#39;s card on file, this is the ID of the associated customer. | [optional] 
**type** | **NSString*** | The type of tender, such as &#x60;CARD&#x60; or &#x60;CASH&#x60;. | 
**cardDetails** | [**SQTenderCardDetails***](SQTenderCardDetails.md) | The details of the card tender.  This value is present only if the value of &#x60;type&#x60; is &#x60;CARD&#x60;. | [optional] 
**cashDetails** | [**SQTenderCashDetails***](SQTenderCashDetails.md) | The details of the cash tender.  This value is present only if the value of &#x60;type&#x60; is &#x60;CASH&#x60;. | [optional] 
**bankAccountDetails** | [**SQTenderBankAccountDetails***](SQTenderBankAccountDetails.md) | The details of the bank account tender.  This value is present only if the value of &#x60;type&#x60; is &#x60;BANK_ACCOUNT&#x60;. | [optional] 
**buyNowPayLaterDetails** | [**SQTenderBuyNowPayLaterDetails***](SQTenderBuyNowPayLaterDetails.md) | The details of a Buy Now Pay Later tender.  This value is present only if the value of &#x60;type&#x60; is &#x60;BUY_NOW_PAY_LATER&#x60;. | [optional] 
**squareAccountDetails** | [**SQTenderSquareAccountDetails***](SQTenderSquareAccountDetails.md) | The details of a Square Account tender.  This value is present only if the value of &#x60;type&#x60; is &#x60;SQUARE_ACCOUNT&#x60;. | [optional] 
**additionalRecipients** | [**NSArray&lt;SQAdditionalRecipient&gt;***](SQAdditionalRecipient.md) | Additional recipients (other than the merchant) receiving a portion of this tender. For example, fees assessed on the purchase by a third party integration. | [optional] 
**paymentId** | **NSString*** | The ID of the [Payment](https://developer.squareup.com/reference/square_2023-10-18/objects/Payment) that corresponds to this tender. This value is only present for payments created with the v2 Payments API. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


