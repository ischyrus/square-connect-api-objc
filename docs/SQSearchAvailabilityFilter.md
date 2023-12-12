# SQSearchAvailabilityFilter

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**startAtRange** | [**SQTimeRange***](SQTimeRange.md) | The query expression to search for buy-accessible availabilities with their starting times falling within the specified time range. The time range must be at least 24 hours and at most 32 days long. For waitlist availabilities, the time range can be 0 or more up to 367 days long. | 
**locationId** | **NSString*** | The query expression to search for buyer-accessible availabilities with their location IDs matching the specified location ID. This query expression cannot be set if &#x60;booking_id&#x60; is set. | [optional] 
**segmentFilters** | [**NSArray&lt;SQSegmentFilter&gt;***](SQSegmentFilter.md) | The query expression to search for buyer-accessible availabilities matching the specified list of segment filters. If the size of the &#x60;segment_filters&#x60; list is &#x60;n&#x60;, the search returns availabilities with &#x60;n&#x60; segments per availability.  This query expression cannot be set if &#x60;booking_id&#x60; is set. | [optional] 
**bookingId** | **NSString*** | The query expression to search for buyer-accessible availabilities for an existing booking by matching the specified &#x60;booking_id&#x60; value. This is commonly used to reschedule an appointment. If this expression is set, the &#x60;location_id&#x60; and &#x60;segment_filters&#x60; expressions cannot be set. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


