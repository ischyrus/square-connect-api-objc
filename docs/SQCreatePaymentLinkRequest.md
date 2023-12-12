# SQCreatePaymentLinkRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**idempotencyKey** | **NSString*** | A unique string that identifies this &#x60;CreatePaymentLinkRequest&#x60; request. If you do not provide a unique string (or provide an empty string as the value), the endpoint treats each request as independent.  For more information, see [Idempotency](https://developer.squareup.com/docs/docs/working-with-apis/idempotency). | [optional] 
**_description** | **NSString*** | A description of the payment link. You provide this optional description that is useful in your application context. It is not used anywhere. | [optional] 
**quickPay** | [**SQQuickPay***](SQQuickPay.md) | Describes an ad hoc item and price for which to generate a quick pay checkout link. For more information, see [Quick Pay Checkout](https://developer.squareup.com/docs/checkout-api/quick-pay-checkout). | [optional] 
**order** | [**SQOrder***](SQOrder.md) | Describes the &#x60;Order&#x60; for which to create a checkout link. For more information, see [Square Order Checkout](https://developer.squareup.com/docs/checkout-api/square-order-checkout). | [optional] 
**checkoutOptions** | [**SQCheckoutOptions***](SQCheckoutOptions.md) | Describes optional fields to add to the resulting checkout page. For more information, see [Optional Checkout Configurations](https://developer.squareup.com/docs/checkout-api/optional-checkout-configurations). | [optional] 
**prePopulatedData** | [**SQPrePopulatedData***](SQPrePopulatedData.md) | Describes fields to prepopulate in the resulting checkout page. For more information, see [Prepopulate the shipping address](https://developer.squareup.com/docs/checkout-api/optional-checkout-configurations#prepopulate-the-shipping-address). | [optional] 
**paymentNote** | **NSString*** | A note for the payment. After processing the payment, Square adds this note to the resulting &#x60;Payment&#x60;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


