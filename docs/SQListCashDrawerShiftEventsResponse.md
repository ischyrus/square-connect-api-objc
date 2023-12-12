# SQListCashDrawerShiftEventsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cursor** | **NSString*** | Opaque cursor for fetching the next page. Cursor is not present in the last page of results. | [optional] 
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) | Any errors that occurred during the request. | [optional] 
**cashDrawerShiftEvents** | [**NSArray&lt;SQCashDrawerShiftEvent&gt;***](SQCashDrawerShiftEvent.md) | All of the events (payments, refunds, etc.) for a cash drawer during the shift. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


