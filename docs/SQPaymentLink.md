# SQPaymentLink

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | The Square-assigned ID of the payment link. | [optional] 
**version** | **NSNumber*** | The Square-assigned version number, which is incremented each time an update is committed to the payment link. | 
**_description** | **NSString*** | The optional description of the &#x60;payment_link&#x60; object. It is primarily for use by your application and is not used anywhere. | [optional] 
**orderId** | **NSString*** | The ID of the order associated with the payment link. | [optional] 
**checkoutOptions** | [**SQCheckoutOptions***](SQCheckoutOptions.md) | The checkout options configured for the payment link. For more information, see [Optional Checkout Configurations](https://developer.squareup.com/docs/checkout-api/optional-checkout-configurations). | [optional] 
**prePopulatedData** | [**SQPrePopulatedData***](SQPrePopulatedData.md) | Describes buyer data to prepopulate on the checkout page. | [optional] 
**url** | **NSString*** | The shortened URL of the payment link. | [optional] 
**longUrl** | **NSString*** | The long URL of the payment link. | [optional] 
**createdAt** | **NSString*** | The timestamp when the payment link was created, in RFC 3339 format. | [optional] 
**updatedAt** | **NSString*** | The timestamp when the payment link was last updated, in RFC 3339 format. | [optional] 
**paymentNote** | **NSString*** | An optional note. After Square processes the payment, this note is added to the resulting &#x60;Payment&#x60;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


