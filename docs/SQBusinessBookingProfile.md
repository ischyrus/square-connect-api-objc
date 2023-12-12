# SQBusinessBookingProfile

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sellerId** | **NSString*** | The ID of the seller, obtainable using the Merchants API. | [optional] 
**createdAt** | **NSString*** | The RFC 3339 timestamp specifying the booking&#39;s creation time. | [optional] 
**bookingEnabled** | **NSNumber*** | Indicates whether the seller is open for booking. | [optional] 
**customerTimezoneChoice** | **NSString*** | The choice of customer&#39;s time zone information of a booking. The Square online booking site and all notifications to customers uses either the seller location’s time zone or the time zone the customer chooses at booking. | [optional] 
**bookingPolicy** | **NSString*** | The policy for the seller to automatically accept booking requests (&#x60;ACCEPT_ALL&#x60;) or not (&#x60;REQUIRES_ACCEPTANCE&#x60;). | [optional] 
**allowUserCancel** | **NSNumber*** | Indicates whether customers can cancel or reschedule their own bookings (&#x60;true&#x60;) or not (&#x60;false&#x60;). | [optional] 
**businessAppointmentSettings** | [**SQBusinessAppointmentSettings***](SQBusinessAppointmentSettings.md) | Settings for appointment-type bookings. | [optional] 
**supportSellerLevelWrites** | **NSNumber*** | Indicates whether the seller&#39;s subscription to Square Appointments supports creating, updating or canceling an appointment through the API (&#x60;true&#x60;) or not (&#x60;false&#x60;) using seller permission. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


