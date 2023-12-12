# SQCheckoutOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowTipping** | **NSNumber*** | Indicates whether the payment allows tipping. | [optional] 
**customFields** | [**NSArray&lt;SQCustomField&gt;***](SQCustomField.md) | The custom fields requesting information from the buyer. | [optional] 
**subscriptionPlanId** | **NSString*** | The ID of the subscription plan for the buyer to pay and subscribe. For more information, see [Subscription Plan Checkout](https://developer.squareup.com/docs/checkout-api/subscription-plan-checkout). | [optional] 
**redirectUrl** | **NSString*** | The confirmation page URL to redirect the buyer to after Square processes the payment. | [optional] 
**merchantSupportEmail** | **NSString*** | The email address that buyers can use to contact the seller. | [optional] 
**askForShippingAddress** | **NSNumber*** | Indicates whether to include the address fields in the payment form. | [optional] 
**acceptedPaymentMethods** | [**SQAcceptedPaymentMethods***](SQAcceptedPaymentMethods.md) | The methods allowed for buyers during checkout. | [optional] 
**appFeeMoney** | [**SQMoney***](SQMoney.md) | The amount of money that the developer is taking as a fee for facilitating the payment on behalf of the seller.  The amount cannot be more than 90% of the total amount of the payment.  The amount must be specified in the smallest denomination of the applicable currency (for example, US dollar amounts are specified in cents). For more information, see [Working with Monetary Amounts](https://developer.squareup.com/docs/build-basics/common-data-types/working-with-monetary-amounts).  The fee currency code must match the currency associated with the seller that is accepting the payment. The application must be from a developer account in the same country and using the same currency code as the seller. For more information about the application fee scenario, see [Take Payments and Collect Fees](https://developer.squareup.com/docs/payments-api/take-payments-and-collect-fees).  To set this field, &#x60;PAYMENTS_WRITE_ADDITIONAL_RECIPIENTS&#x60; OAuth permission is required. For more information, see [Permissions](https://developer.squareup.com/docs/payments-api/collect-fees/additional-considerations#permissions). | [optional] 
**shippingFee** | [**SQShippingFee***](SQShippingFee.md) | The fee associated with shipping to be applied to the &#x60;Order&#x60; as a service charge. | [optional] 
**enableCoupon** | **NSNumber*** | Indicates whether to include the &#x60;Add coupon&#x60; section for the buyer to provide a Square marketing coupon in the payment form. | [optional] 
**enableLoyalty** | **NSNumber*** | Indicates whether to include the &#x60;REWARDS&#x60; section for the buyer to opt in to loyalty, redeem rewards in the payment form, or both. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


