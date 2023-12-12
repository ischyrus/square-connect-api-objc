# SQTeamMember

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | The unique ID for the team member. | [optional] 
**referenceId** | **NSString*** | A second ID used to associate the team member with an entity in another system. | [optional] 
**isOwner** | **NSNumber*** | Whether the team member is the owner of the Square account. | [optional] 
**status** | **NSString*** | Describes the status of the team member. | [optional] 
**givenName** | **NSString*** | The given name (that is, the first name) associated with the team member. | [optional] 
**familyName** | **NSString*** | The family name (that is, the last name) associated with the team member. | [optional] 
**emailAddress** | **NSString*** | The email address associated with the team member. | [optional] 
**phoneNumber** | **NSString*** | The team member&#39;s phone number, in E.164 format. For example: +14155552671 - the country code is 1 for US +551155256325 - the country code is 55 for BR | [optional] 
**createdAt** | **NSString*** | The timestamp, in RFC 3339 format, describing when the team member was created. For example, \&quot;2018-10-04T04:00:00-07:00\&quot; or \&quot;2019-02-05T12:00:00Z\&quot;. | [optional] 
**updatedAt** | **NSString*** | The timestamp, in RFC 3339 format, describing when the team member was last updated. For example, \&quot;2018-10-04T04:00:00-07:00\&quot; or \&quot;2019-02-05T12:00:00Z\&quot;. | [optional] 
**assignedLocations** | [**SQTeamMemberAssignedLocations***](SQTeamMemberAssignedLocations.md) | Describes the team member&#39;s assigned locations. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


