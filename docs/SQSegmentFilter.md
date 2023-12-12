# SQSegmentFilter

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceVariationId** | **NSString*** | The ID of the [CatalogItemVariation](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogItemVariation) object representing the service booked in this segment. | 
**teamMemberIdFilter** | [**SQFilterValue***](SQFilterValue.md) | A query filter to search for buyer-accessible appointment segments with service-providing team members matching the specified list of team member IDs.  Supported query expressions are - &#x60;ANY&#x60;: return the appointment segments with team members whose IDs match any member in this list. - &#x60;NONE&#x60;: return the appointment segments with team members whose IDs are not in this list. - &#x60;ALL&#x60;: not supported.  When no expression is specified, any service-providing team member is eligible to fulfill the Booking. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


