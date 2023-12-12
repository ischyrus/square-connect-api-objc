# SQWorkweekConfig

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | The UUID for this object. | [optional] 
**startOfWeek** | **NSString*** | The day of the week on which a business week starts for compensation purposes. | 
**startOfDayLocalTime** | **NSString*** | The local time at which a business week starts. Represented as a string in &#x60;HH:MM&#x60; format (&#x60;HH:MM:SS&#x60; is also accepted, but seconds are truncated). | 
**version** | **NSNumber*** | Used for resolving concurrency issues. The request fails if the version provided does not match the server version at the time of the request. If not provided, Square executes a blind write; potentially overwriting data from another write. | [optional] 
**createdAt** | **NSString*** | A read-only timestamp in RFC 3339 format; presented in UTC. | [optional] 
**updatedAt** | **NSString*** | A read-only timestamp in RFC 3339 format; presented in UTC. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


