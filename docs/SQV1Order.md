# SQV1Order

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) | Any errors that occurred during the request. | [optional] 
**_id** | **NSString*** | The order&#39;s unique identifier. | [optional] 
**buyerEmail** | **NSString*** | The email address of the order&#39;s buyer. | [optional] 
**recipientName** | **NSString*** | The name of the order&#39;s buyer. | [optional] 
**recipientPhoneNumber** | **NSString*** | The phone number to use for the order&#39;s delivery. | [optional] 
**state** | **NSString*** | Whether the tax is an ADDITIVE tax or an INCLUSIVE tax. | [optional] 
**shippingAddress** | [**SQAddress***](SQAddress.md) | The address to ship the order to. | [optional] 
**subtotalMoney** | [**SQV1Money***](SQV1Money.md) | The amount of all items purchased in the order, before taxes and shipping. | [optional] 
**totalShippingMoney** | [**SQV1Money***](SQV1Money.md) | The shipping cost for the order. | [optional] 
**totalTaxMoney** | [**SQV1Money***](SQV1Money.md) | The total of all taxes applied to the order. | [optional] 
**totalPriceMoney** | [**SQV1Money***](SQV1Money.md) | The total cost of the order. | [optional] 
**totalDiscountMoney** | [**SQV1Money***](SQV1Money.md) | The total of all discounts applied to the order. | [optional] 
**createdAt** | **NSString*** | The time when the order was created, in ISO 8601 format. | [optional] 
**updatedAt** | **NSString*** | The time when the order was last modified, in ISO 8601 format. | [optional] 
**expiresAt** | **NSString*** | The time when the order expires if no action is taken, in ISO 8601 format. | [optional] 
**paymentId** | **NSString*** | The unique identifier of the payment associated with the order. | [optional] 
**buyerNote** | **NSString*** | A note provided by the buyer when the order was created, if any. | [optional] 
**completedNote** | **NSString*** | A note provided by the merchant when the order&#39;s state was set to COMPLETED, if any | [optional] 
**refundedNote** | **NSString*** | A note provided by the merchant when the order&#39;s state was set to REFUNDED, if any. | [optional] 
**canceledNote** | **NSString*** | A note provided by the merchant when the order&#39;s state was set to CANCELED, if any. | [optional] 
**tender** | [**SQV1Tender***](SQV1Tender.md) | The tender used to pay for the order. | [optional] 
**orderHistory** | [**NSArray&lt;SQV1OrderHistoryEntry&gt;***](SQV1OrderHistoryEntry.md) | The history of actions associated with the order. | [optional] 
**promoCode** | **NSString*** | The promo code provided by the buyer, if any. | [optional] 
**btcReceiveAddress** | **NSString*** | For Bitcoin transactions, the address that the buyer sent Bitcoin to. | [optional] 
**btcPriceSatoshi** | **NSNumber*** | For Bitcoin transactions, the price of the buyer&#39;s order in satoshi (100 million satoshi equals 1 BTC). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


