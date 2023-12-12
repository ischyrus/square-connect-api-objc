# SQCashDrawerShift

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | The shift unique ID. | [optional] 
**state** | **NSString*** | The shift current state. | [optional] 
**openedAt** | **NSString*** | The time when the shift began, in ISO 8601 format. | [optional] 
**endedAt** | **NSString*** | The time when the shift ended, in ISO 8601 format. | [optional] 
**closedAt** | **NSString*** | The time when the shift was closed, in ISO 8601 format. | [optional] 
**_description** | **NSString*** | The free-form text description of a cash drawer by an employee. | [optional] 
**openedCashMoney** | [**SQMoney***](SQMoney.md) | The amount of money in the cash drawer at the start of the shift. The amount must be greater than or equal to zero. | [optional] 
**cashPaymentMoney** | [**SQMoney***](SQMoney.md) | The amount of money added to the cash drawer from cash payments. This is computed by summing all events with the types CASH_TENDER_PAYMENT and CASH_TENDER_CANCELED_PAYMENT. The amount is always greater than or equal to zero. | [optional] 
**cashRefundsMoney** | [**SQMoney***](SQMoney.md) | The amount of money removed from the cash drawer from cash refunds. It is computed by summing the events of type CASH_TENDER_REFUND. The amount is always greater than or equal to zero. | [optional] 
**cashPaidInMoney** | [**SQMoney***](SQMoney.md) | The amount of money added to the cash drawer for reasons other than cash payments. It is computed by summing the events of type PAID_IN. The amount is always greater than or equal to zero. | [optional] 
**cashPaidOutMoney** | [**SQMoney***](SQMoney.md) | The amount of money removed from the cash drawer for reasons other than cash refunds. It is computed by summing the events of type PAID_OUT. The amount is always greater than or equal to zero. | [optional] 
**expectedCashMoney** | [**SQMoney***](SQMoney.md) | The amount of money that should be in the cash drawer at the end of the shift, based on the shift&#39;s other money amounts. This can be negative if employees have not correctly recorded all the events on the cash drawer. cash_paid_out_money is a summation of amounts from cash_payment_money (zero or positive), cash_refunds_money (zero or negative), cash_paid_in_money (zero or positive), and cash_paid_out_money (zero or negative) event types. | [optional] 
**closedCashMoney** | [**SQMoney***](SQMoney.md) | The amount of money found in the cash drawer at the end of the shift by an auditing employee. The amount should be positive. | [optional] 
**device** | [**SQCashDrawerDevice***](SQCashDrawerDevice.md) | The device running Square Point of Sale that was connected to the cash drawer. | [optional] 
**createdAt** | **NSString*** | The shift start time in RFC 3339 format. | [optional] 
**updatedAt** | **NSString*** | The shift updated at time in RFC 3339 format. | [optional] 
**locationId** | **NSString*** | The ID of the location the cash drawer shift belongs to. | [optional] 
**teamMemberIds** | **NSArray&lt;NSString*&gt;*** | The IDs of all team members that were logged into Square Point of Sale at any point while the cash drawer shift was open. | [optional] 
**openingTeamMemberId** | **NSString*** | The ID of the team member that started the cash drawer shift. | [optional] 
**endingTeamMemberId** | **NSString*** | The ID of the team member that ended the cash drawer shift. | [optional] 
**closingTeamMemberId** | **NSString*** | The ID of the team member that closed the cash drawer shift by auditing the cash drawer contents. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


