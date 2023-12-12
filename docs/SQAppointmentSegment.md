# SQAppointmentSegment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**durationMinutes** | **NSNumber*** | The time span in minutes of an appointment segment. | [optional] 
**serviceVariationId** | **NSString*** | The ID of the [CatalogItemVariation](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogItemVariation) object representing the service booked in this segment. | [optional] 
**teamMemberId** | **NSString*** | The ID of the [TeamMember](https://developer.squareup.com/reference/square_2023-10-18/objects/TeamMember) object representing the team member booked in this segment. | 
**serviceVariationVersion** | **NSNumber*** | The current version of the item variation representing the service booked in this segment. | [optional] 
**intermissionMinutes** | **NSNumber*** | Time between the end of this segment and the beginning of the subsequent segment. | [optional] 
**anyTeamMember** | **NSNumber*** | Whether the customer accepts any team member, instead of a specific one, to serve this segment. | [optional] 
**resourceIds** | **NSArray&lt;NSString*&gt;*** | The IDs of the seller-accessible resources used for this appointment segment. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


