# SQDeviceCheckoutOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deviceId** | **NSString*** | The unique ID of the device intended for this &#x60;TerminalCheckout&#x60;. A list of &#x60;DeviceCode&#x60; objects can be retrieved from the /v2/devices/codes endpoint. Match a &#x60;DeviceCode.device_id&#x60; value with &#x60;device_id&#x60; to get the associated device code. | 
**skipReceiptScreen** | **NSNumber*** | Instructs the device to skip the receipt screen. Defaults to false. | [optional] 
**collectSignature** | **NSNumber*** | Indicates that signature collection is desired during checkout. Defaults to false. | [optional] 
**tipSettings** | [**SQTipSettings***](SQTipSettings.md) | Tip-specific settings. | [optional] 
**showItemizedCart** | **NSNumber*** | Show the itemization screen prior to taking a payment. This field is only meaningful when the checkout includes an order ID. Defaults to true. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


