# SQCreateTeamMemberRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**idempotencyKey** | **NSString*** | A unique string that identifies this &#x60;CreateTeamMember&#x60; request. Keys can be any valid string, but must be unique for every request. For more information, see [Idempotency](https://developer.squareup.com/docs/build-basics/common-api-patterns/idempotency).  The minimum length is 1 and the maximum length is 45. | [optional] 
**teamMember** | [**SQTeamMember***](SQTeamMember.md) | **Required** The data used to create the &#x60;TeamMember&#x60; object. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


