# SQShift

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | The UUID for this object. | [optional] 
**employeeId** | **NSString*** | The ID of the employee this shift belongs to. DEPRECATED at version 2020-08-26. Use &#x60;team_member_id&#x60; instead. | [optional] 
**locationId** | **NSString*** | The ID of the location this shift occurred at. The location should be based on where the employee clocked in. | [optional] 
**timezone** | **NSString*** | The read-only convenience value that is calculated from the location based on the &#x60;location_id&#x60;. Format: the IANA timezone database identifier for the location timezone. | [optional] 
**startAt** | **NSString*** | RFC 3339; shifted to the location timezone + offset. Precision up to the minute is respected; seconds are truncated. | 
**endAt** | **NSString*** | RFC 3339; shifted to the timezone + offset. Precision up to the minute is respected; seconds are truncated. | [optional] 
**wage** | [**SQShiftWage***](SQShiftWage.md) | Job and pay related information. If the wage is not set on create, it defaults to a wage of zero. If the title is not set on create, it defaults to the name of the role the employee is assigned to, if any. | [optional] 
**breaks** | [**NSArray&lt;SQBreak&gt;***](SQBreak.md) | A list of all the paid or unpaid breaks that were taken during this shift. | [optional] 
**status** | **NSString*** | Describes the working state of the current &#x60;Shift&#x60;. | [optional] 
**version** | **NSNumber*** | Used for resolving concurrency issues. The request fails if the version provided does not match the server version at the time of the request. If not provided, Square executes a blind write; potentially overwriting data from another write. | [optional] 
**createdAt** | **NSString*** | A read-only timestamp in RFC 3339 format; presented in UTC. | [optional] 
**updatedAt** | **NSString*** | A read-only timestamp in RFC 3339 format; presented in UTC. | [optional] 
**teamMemberId** | **NSString*** | The ID of the team member this shift belongs to. Replaced &#x60;employee_id&#x60; at version \&quot;2020-08-26\&quot;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


