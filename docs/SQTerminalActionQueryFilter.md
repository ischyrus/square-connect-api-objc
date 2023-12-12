# SQTerminalActionQueryFilter

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deviceId** | **NSString*** | &#x60;TerminalAction&#x60;s associated with a specific device. If no device is specified then all &#x60;TerminalAction&#x60;s for the merchant will be displayed. | [optional] 
**createdAt** | [**SQTimeRange***](SQTimeRange.md) | Time range for the beginning of the reporting period. Inclusive. Default value: The current time minus one day. Note that &#x60;TerminalAction&#x60;s are available for 30 days after creation. | [optional] 
**status** | **NSString*** | Filter results with the desired status of the &#x60;TerminalAction&#x60; Options: &#x60;PENDING&#x60;, &#x60;IN_PROGRESS&#x60;, &#x60;CANCEL_REQUESTED&#x60;, &#x60;CANCELED&#x60;, &#x60;COMPLETED&#x60; | [optional] 
**type** | **NSString*** | Filter results with the requested ActionType. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


