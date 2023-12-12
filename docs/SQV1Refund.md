# SQV1Refund

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **NSString*** | The type of refund | [optional] 
**reason** | **NSString*** | The merchant-specified reason for the refund. | [optional] 
**refundedMoney** | [**SQV1Money***](SQV1Money.md) | The amount of money refunded. This amount is always negative. | [optional] 
**refundedProcessingFeeMoney** | [**SQV1Money***](SQV1Money.md) | The amount of processing fee money refunded. This amount is always positive. | [optional] 
**refundedTaxMoney** | [**SQV1Money***](SQV1Money.md) | The total amount of tax money refunded. This amount is always negative. | [optional] 
**refundedAdditiveTaxMoney** | [**SQV1Money***](SQV1Money.md) | The amount of additive tax money refunded. This amount is always negative. | [optional] 
**refundedAdditiveTax** | [**NSArray&lt;SQV1PaymentTax&gt;***](SQV1PaymentTax.md) | All of the additive taxes associated with the refund. | [optional] 
**refundedInclusiveTaxMoney** | [**SQV1Money***](SQV1Money.md) | The amount of inclusive tax money refunded. This amount is always negative. | [optional] 
**refundedInclusiveTax** | [**NSArray&lt;SQV1PaymentTax&gt;***](SQV1PaymentTax.md) | All of the inclusive taxes associated with the refund. | [optional] 
**refundedTipMoney** | [**SQV1Money***](SQV1Money.md) | The amount of tip money refunded. This amount is always negative. | [optional] 
**refundedDiscountMoney** | [**SQV1Money***](SQV1Money.md) | The amount of discount money refunded. This amount is always positive. | [optional] 
**refundedSurchargeMoney** | [**SQV1Money***](SQV1Money.md) | The amount of surcharge money refunded. This amount is always negative. | [optional] 
**refundedSurcharges** | [**NSArray&lt;SQV1PaymentSurcharge&gt;***](SQV1PaymentSurcharge.md) | A list of all surcharges associated with the refund. | [optional] 
**createdAt** | **NSString*** | The time when the merchant initiated the refund for Square to process, in ISO 8601 format. | [optional] 
**processedAt** | **NSString*** | The time when Square processed the refund on behalf of the merchant, in ISO 8601 format. | [optional] 
**paymentId** | **NSString*** | A Square-issued ID associated with the refund. For single-tender refunds, payment_id is the ID of the original payment ID. For split-tender refunds, payment_id is the ID of the original tender. For exchange-based refunds (is_exchange &#x3D;&#x3D; true), payment_id is the ID of the original payment ID even if the payment includes other tenders. | [optional] 
**merchantId** | **NSString*** |  | [optional] 
**isExchange** | **NSNumber*** | Indicates whether or not the refund is associated with an exchange. If is_exchange is true, the refund reflects the value of goods returned in the exchange not the total money refunded. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


