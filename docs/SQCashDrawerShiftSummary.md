# SQCashDrawerShiftSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | The shift unique ID. | [optional] 
**state** | **NSString*** | The shift current state. | [optional] 
**openedAt** | **NSString*** | The shift start time in ISO 8601 format. | [optional] 
**endedAt** | **NSString*** | The shift end time in ISO 8601 format. | [optional] 
**closedAt** | **NSString*** | The shift close time in ISO 8601 format. | [optional] 
**_description** | **NSString*** | An employee free-text description of a cash drawer shift. | [optional] 
**openedCashMoney** | [**SQMoney***](SQMoney.md) | The amount of money in the cash drawer at the start of the shift. This must be a positive amount. | [optional] 
**expectedCashMoney** | [**SQMoney***](SQMoney.md) | The amount of money that should be in the cash drawer at the end of the shift, based on the cash drawer events on the shift. The amount is correct if all shift employees accurately recorded their cash drawer shift events. Unrecorded events and events with the wrong amount result in an incorrect expected_cash_money amount that can be negative. | [optional] 
**closedCashMoney** | [**SQMoney***](SQMoney.md) | The amount of money found in the cash drawer at the end of the shift by an auditing employee. The amount must be greater than or equal to zero. | [optional] 
**createdAt** | **NSString*** | The shift start time in RFC 3339 format. | [optional] 
**updatedAt** | **NSString*** | The shift updated at time in RFC 3339 format. | [optional] 
**locationId** | **NSString*** | The ID of the location the cash drawer shift belongs to. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


