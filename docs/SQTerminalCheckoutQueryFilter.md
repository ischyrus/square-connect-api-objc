# SQTerminalCheckoutQueryFilter

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deviceId** | **NSString*** | The &#x60;TerminalCheckout&#x60; objects associated with a specific device. If no device is specified, then all &#x60;TerminalCheckout&#x60; objects for the merchant are displayed. | [optional] 
**createdAt** | [**SQTimeRange***](SQTimeRange.md) | The time range for the beginning of the reporting period, which is inclusive. Default value: The current time minus one day. Note that &#x60;TerminalCheckout&#x60;s are available for 30 days after creation. | [optional] 
**status** | **NSString*** | Filtered results with the desired status of the &#x60;TerminalCheckout&#x60;. Options: &#x60;PENDING&#x60;, &#x60;IN_PROGRESS&#x60;, &#x60;CANCEL_REQUESTED&#x60;, &#x60;CANCELED&#x60;, &#x60;COMPLETED&#x60; | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


