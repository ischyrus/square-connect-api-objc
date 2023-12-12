# SQV1Payment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | The payment&#39;s unique identifier. | [optional] 
**merchantId** | **NSString*** | The unique identifier of the merchant that took the payment. | [optional] 
**createdAt** | **NSString*** | The time when the payment was created, in ISO 8601 format. Reflects the time of the first payment if the object represents an incomplete partial payment, and the time of the last or complete payment otherwise. | [optional] 
**creatorId** | **NSString*** | The unique identifier of the Square account that took the payment. | [optional] 
**device** | [**SQV1Device***](SQV1Device.md) | The device that took the payment. | [optional] 
**paymentUrl** | **NSString*** | The URL of the payment&#39;s detail page in the merchant dashboard. The merchant must be signed in to the merchant dashboard to view this page. | [optional] 
**receiptUrl** | **NSString*** | The URL of the receipt for the payment. Note that for split tender payments, this URL corresponds to the receipt for the first tender listed in the payment&#39;s tender field. Each Tender object has its own receipt_url field you can use to get the other receipts associated with a split tender payment. | [optional] 
**inclusiveTaxMoney** | [**SQV1Money***](SQV1Money.md) | The sum of all inclusive taxes associated with the payment. | [optional] 
**additiveTaxMoney** | [**SQV1Money***](SQV1Money.md) | The sum of all additive taxes associated with the payment. | [optional] 
**taxMoney** | [**SQV1Money***](SQV1Money.md) | The total of all taxes applied to the payment. This is always the sum of inclusive_tax_money and additive_tax_money. | [optional] 
**tipMoney** | [**SQV1Money***](SQV1Money.md) | The total of all tips applied to the payment. | [optional] 
**discountMoney** | [**SQV1Money***](SQV1Money.md) | The total of all discounts applied to the payment. | [optional] 
**totalCollectedMoney** | [**SQV1Money***](SQV1Money.md) | The total of all discounts applied to the payment. | [optional] 
**processingFeeMoney** | [**SQV1Money***](SQV1Money.md) | The total of all processing fees collected by Square for the payment. | [optional] 
**netTotalMoney** | [**SQV1Money***](SQV1Money.md) | The amount to be deposited into the merchant&#39;s bank account for the payment. | [optional] 
**refundedMoney** | [**SQV1Money***](SQV1Money.md) | The total of all refunds applied to the payment. | [optional] 
**swedishRoundingMoney** | [**SQV1Money***](SQV1Money.md) | The total of all sales, including any applicable taxes, rounded to the smallest legal unit of currency (e.g., the nearest penny in USD, the nearest nickel in CAD) | [optional] 
**grossSalesMoney** | [**SQV1Money***](SQV1Money.md) | The total of all sales, including any applicable taxes. | [optional] 
**netSalesMoney** | [**SQV1Money***](SQV1Money.md) | The total of all sales, minus any applicable taxes. | [optional] 
**inclusiveTax** | [**NSArray&lt;SQV1PaymentTax&gt;***](SQV1PaymentTax.md) | All of the inclusive taxes associated with the payment. | [optional] 
**additiveTax** | [**NSArray&lt;SQV1PaymentTax&gt;***](SQV1PaymentTax.md) | All of the additive taxes associated with the payment. | [optional] 
**tender** | [**NSArray&lt;SQV1Tender&gt;***](SQV1Tender.md) | All of the tenders associated with the payment. | [optional] 
**refunds** | [**NSArray&lt;SQV1Refund&gt;***](SQV1Refund.md) | All of the refunds applied to the payment. Note that the value of all refunds on a payment can exceed the value of all tenders if a merchant chooses to refund money to a tender after previously accepting returned goods as part of an exchange. | [optional] 
**itemizations** | [**NSArray&lt;SQV1PaymentItemization&gt;***](SQV1PaymentItemization.md) | The items purchased in the payment. | [optional] 
**surchargeMoney** | [**SQV1Money***](SQV1Money.md) | The total of all surcharges applied to the payment. | [optional] 
**surcharges** | [**NSArray&lt;SQV1PaymentSurcharge&gt;***](SQV1PaymentSurcharge.md) | A list of all surcharges associated with the payment. | [optional] 
**isPartial** | **NSNumber*** | Indicates whether or not the payment is only partially paid for. If true, this payment will have the tenders collected so far, but the itemizations will be empty until the payment is completed. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


