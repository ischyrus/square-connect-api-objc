# SQSubscriptionEvent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | The ID of the subscription event. | 
**subscriptionEventType** | **NSString*** | Type of the subscription event. | 
**effectiveDate** | **NSString*** | The &#x60;YYYY-MM-DD&#x60;-formatted date (for example, 2013-01-15) when the subscription event occurred. | 
**monthlyBillingAnchorDate** | **NSNumber*** | The day-of-the-month the billing anchor date was changed to, if applicable. | [optional] 
**info** | [**SQInfo***](SQInfo.md) | Additional information about the subscription event. | [optional] 
**phases** | [**NSArray&lt;SQPhase&gt;***](SQPhase.md) | A list of Phases, to pass phase-specific information used in the swap. | [optional] 
**planVariationId** | **NSString*** | The ID of the subscription plan variation associated with the subscription. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


