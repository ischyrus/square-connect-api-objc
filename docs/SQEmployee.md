# SQEmployee

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | UUID for this object. | [optional] 
**firstName** | **NSString*** | The employee&#39;s first name. | [optional] 
**lastName** | **NSString*** | The employee&#39;s last name. | [optional] 
**email** | **NSString*** | The employee&#39;s email address | [optional] 
**phoneNumber** | **NSString*** | The employee&#39;s phone number in E.164 format, i.e. \&quot;+12125554250\&quot; | [optional] 
**locationIds** | **NSArray&lt;NSString*&gt;*** | A list of location IDs where this employee has access to. | [optional] 
**status** | **NSString*** | Specifies the status of the employees being fetched. | [optional] 
**isOwner** | **NSNumber*** | Whether this employee is the owner of the merchant. Each merchant has one owner employee, and that employee has full authority over the account. | [optional] 
**createdAt** | **NSString*** | A read-only timestamp in RFC 3339 format. | [optional] 
**updatedAt** | **NSString*** | A read-only timestamp in RFC 3339 format. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


