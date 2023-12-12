# SQTerminalRefundQueryFilter

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deviceId** | **NSString*** | &#x60;TerminalRefund&#x60; objects associated with a specific device. If no device is specified, then all &#x60;TerminalRefund&#x60; objects for the signed-in account are displayed. | [optional] 
**createdAt** | [**SQTimeRange***](SQTimeRange.md) | The timestamp for the beginning of the reporting period, in RFC 3339 format. Inclusive. Default value: The current time minus one day. Note that &#x60;TerminalRefund&#x60;s are available for 30 days after creation. | [optional] 
**status** | **NSString*** | Filtered results with the desired status of the &#x60;TerminalRefund&#x60;. Options: &#x60;PENDING&#x60;, &#x60;IN_PROGRESS&#x60;, &#x60;CANCEL_REQUESTED&#x60;, &#x60;CANCELED&#x60;, or &#x60;COMPLETED&#x60;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

