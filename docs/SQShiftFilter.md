# SQShiftFilter

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**locationIds** | **NSArray&lt;NSString*&gt;*** | Fetch shifts for the specified location. | 
**employeeIds** | **NSArray&lt;NSString*&gt;*** | Fetch shifts for the specified employees. DEPRECATED at version 2020-08-26. Use &#x60;team_member_ids&#x60; instead. | [optional] 
**status** | **NSString*** | Fetch a &#x60;Shift&#x60; instance by &#x60;Shift.status&#x60;. | [optional] 
**start** | [**SQTimeRange***](SQTimeRange.md) | Fetch &#x60;Shift&#x60; instances that start in the time range - Inclusive. | [optional] 
**end** | [**SQTimeRange***](SQTimeRange.md) | Fetch the &#x60;Shift&#x60; instances that end in the time range - Inclusive. | [optional] 
**workday** | [**SQShiftWorkday***](SQShiftWorkday.md) | Fetch the &#x60;Shift&#x60; instances based on the workday date range. | [optional] 
**teamMemberIds** | **NSArray&lt;NSString*&gt;*** | Fetch shifts for the specified team members. Replaced &#x60;employee_ids&#x60; at version \&quot;2020-08-26\&quot;. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


