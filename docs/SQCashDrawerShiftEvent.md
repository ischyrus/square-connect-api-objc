# SQCashDrawerShiftEvent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | The unique ID of the event. | [optional] 
**eventType** | **NSString*** | The type of cash drawer shift event. | [optional] 
**eventMoney** | [**SQMoney***](SQMoney.md) | The amount of money that was added to or removed from the cash drawer in the event. The amount can be positive (for added money) or zero (for other tender type payments). The addition or removal of money can be determined by by the event type. | [optional] 
**createdAt** | **NSString*** | The event time in RFC 3339 format. | [optional] 
**_description** | **NSString*** | An optional description of the event, entered by the employee that created the event. | [optional] 
**teamMemberId** | **NSString*** | The ID of the team member that created the event. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


