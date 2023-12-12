# SQGiftCardActivityRedeem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amountMoney** | [**SQMoney***](SQMoney.md) | The amount deducted from the gift card for the redemption. This value is a positive integer.  Applications that use a custom payment processing system must specify this amount in the  [CreateGiftCardActivity](https://developer.squareup.com/reference/square_2023-10-18/gift-card-activities-api/create-gift-card-activity) request. | 
**paymentId** | **NSString*** | The ID of the payment that represents the gift card redemption. Square populates this field  if the payment was processed by Square. | [optional] 
**referenceId** | **NSString*** | A client-specified ID that associates the gift card activity with an entity in another system.   Applications that use a custom payment processing system can use this field to track information related to an order or payment. | [optional] 
**status** | **NSString*** | The status of the gift card redemption. Gift cards redeemed from Square Point of Sale or the  Square Seller Dashboard use a two-state process: &#x60;PENDING&#x60;  to &#x60;COMPLETED&#x60; or &#x60;PENDING&#x60; to  &#x60;CANCELED&#x60;. Gift cards redeemed using the Gift Card Activities API  always have a &#x60;COMPLETED&#x60; status. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


