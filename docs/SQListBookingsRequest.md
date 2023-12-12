# SQListBookingsRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**limit** | **NSNumber*** | The maximum number of results per page to return in a paged response. | [optional] 
**cursor** | **NSString*** | The pagination cursor from the preceding response to return the next page of the results. Do not set this when retrieving the first page of the results. | [optional] 
**customerId** | **NSString*** | The [customer](https://developer.squareup.com/reference/square_2023-10-18/objects/Customer) for whom to retrieve bookings. If this is not set, bookings for all customers are retrieved. | [optional] 
**teamMemberId** | **NSString*** | The team member for whom to retrieve bookings. If this is not set, bookings of all members are retrieved. | [optional] 
**locationId** | **NSString*** | The location for which to retrieve bookings. If this is not set, all locations&#39; bookings are retrieved. | [optional] 
**startAtMin** | **NSString*** | The RFC 3339 timestamp specifying the earliest of the start time. If this is not set, the current time is used. | [optional] 
**startAtMax** | **NSString*** | The RFC 3339 timestamp specifying the latest of the start time. If this is not set, the time of 31 days after &#x60;start_at_min&#x60; is used. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


