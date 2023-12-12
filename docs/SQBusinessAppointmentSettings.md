# SQBusinessAppointmentSettings

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**locationTypes** | **NSArray&lt;NSString*&gt;*** | Types of the location allowed for bookings. | [optional] 
**alignmentTime** | **NSString*** | The time unit of the service duration for bookings. | [optional] 
**minBookingLeadTimeSeconds** | **NSNumber*** | The minimum lead time in seconds before a service can be booked. A booking must be created at least this amount of time before its starting time. | [optional] 
**maxBookingLeadTimeSeconds** | **NSNumber*** | The maximum lead time in seconds before a service can be booked. A booking must be created at most this amount of time before its starting time. | [optional] 
**anyTeamMemberBookingEnabled** | **NSNumber*** | Indicates whether a customer can choose from all available time slots and have a staff member assigned automatically (&#x60;true&#x60;) or not (&#x60;false&#x60;). | [optional] 
**multipleServiceBookingEnabled** | **NSNumber*** | Indicates whether a customer can book multiple services in a single online booking. | [optional] 
**maxAppointmentsPerDayLimitType** | **NSString*** | Indicates whether the daily appointment limit applies to team members or to business locations. | [optional] 
**maxAppointmentsPerDayLimit** | **NSNumber*** | The maximum number of daily appointments per team member or per location. | [optional] 
**cancellationWindowSeconds** | **NSNumber*** | The cut-off time in seconds for allowing clients to cancel or reschedule an appointment. | [optional] 
**cancellationFeeMoney** | [**SQMoney***](SQMoney.md) | The flat-fee amount charged for a no-show booking. | [optional] 
**cancellationPolicy** | **NSString*** | The cancellation policy adopted by the seller. | [optional] 
**cancellationPolicyText** | **NSString*** | The free-form text of the seller&#39;s cancellation policy. | [optional] 
**skipBookingFlowStaffSelection** | **NSNumber*** | Indicates whether customers has an assigned staff member (&#x60;true&#x60;) or can select s staff member of their choice (&#x60;false&#x60;). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


