# SQTerminalAction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | A unique ID for this &#x60;TerminalAction&#x60;. | [optional] 
**deviceId** | **NSString*** | The unique Id of the device intended for this &#x60;TerminalAction&#x60;. The Id can be retrieved from /v2/devices api. | [optional] 
**deadlineDuration** | **NSString*** | The duration as an RFC 3339 duration, after which the action will be automatically canceled. TerminalActions that are &#x60;PENDING&#x60; will be automatically &#x60;CANCELED&#x60; and have a cancellation reason of &#x60;TIMED_OUT&#x60;  Default: 5 minutes from creation  Maximum: 5 minutes | [optional] 
**status** | **NSString*** | The status of the &#x60;TerminalAction&#x60;. Options: &#x60;PENDING&#x60;, &#x60;IN_PROGRESS&#x60;, &#x60;CANCEL_REQUESTED&#x60;, &#x60;CANCELED&#x60;, &#x60;COMPLETED&#x60; | [optional] 
**cancelReason** | **NSString*** | The reason why &#x60;TerminalAction&#x60; is canceled. Present if the status is &#x60;CANCELED&#x60;. | [optional] 
**createdAt** | **NSString*** | The time when the &#x60;TerminalAction&#x60; was created as an RFC 3339 timestamp. | [optional] 
**updatedAt** | **NSString*** | The time when the &#x60;TerminalAction&#x60; was last updated as an RFC 3339 timestamp. | [optional] 
**appId** | **NSString*** | The ID of the application that created the action. | [optional] 
**locationId** | **NSString*** | The location id the action is attached to, if a link can be made. | [optional] 
**type** | **NSString*** | Represents the type of the action. | [optional] 
**qrCodeOptions** | [**SQQrCodeOptions***](SQQrCodeOptions.md) | Describes configuration for the QR code action. Requires &#x60;QR_CODE&#x60; type. | [optional] 
**saveCardOptions** | [**SQSaveCardOptions***](SQSaveCardOptions.md) | Describes configuration for the save-card action. Requires &#x60;SAVE_CARD&#x60; type. | [optional] 
**signatureOptions** | [**SQSignatureOptions***](SQSignatureOptions.md) | Describes configuration for the signature capture action. Requires &#x60;SIGNATURE&#x60; type. | [optional] 
**confirmationOptions** | [**SQConfirmationOptions***](SQConfirmationOptions.md) | Describes configuration for the confirmation action. Requires &#x60;CONFIRMATION&#x60; type. | [optional] 
**receiptOptions** | [**SQReceiptOptions***](SQReceiptOptions.md) | Describes configuration for the receipt action. Requires &#x60;RECEIPT&#x60; type. | [optional] 
**dataCollectionOptions** | [**SQDataCollectionOptions***](SQDataCollectionOptions.md) | Describes configuration for the data collection action. Requires &#x60;DATA_COLLECTION&#x60; type. | [optional] 
**selectOptions** | [**SQSelectOptions***](SQSelectOptions.md) | Describes configuration for the select action. Requires &#x60;SELECT&#x60; type. | [optional] 
**deviceMetadata** | [**SQDeviceMetadata***](SQDeviceMetadata.md) | Details about the Terminal that received the action request (such as battery level, operating system version, and network connection settings).  Only available for &#x60;PING&#x60; action type. | [optional] 
**awaitNextAction** | **NSNumber*** | Indicates the action will be linked to another action and requires a waiting dialog to be displayed instead of returning to the idle screen on completion of the action.  Only supported on SIGNATURE, CONFIRMATION, DATA_COLLECTION, and SELECT types. | [optional] 
**awaitNextActionDuration** | **NSString*** | The timeout duration of the waiting dialog as an RFC 3339 duration, after which the waiting dialog will no longer be displayed and the Terminal will return to the idle screen.  Default: 5 minutes from when the waiting dialog is displayed  Maximum: 5 minutes | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


