# SQCatalogSubscriptionPlanVariation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **NSString*** | The name of the plan variation. | 
**phases** | [**NSArray&lt;SQSubscriptionPhase&gt;***](SQSubscriptionPhase.md) | A list containing each [SubscriptionPhase](https://developer.squareup.com/reference/square_2023-10-18/objects/SubscriptionPhase) for this plan variation. | 
**subscriptionPlanId** | **NSString*** | The id of the subscription plan, if there is one. | [optional] 
**monthlyBillingAnchorDate** | **NSNumber*** | The day of the month the billing period starts. | [optional] 
**canProrate** | **NSNumber*** | Whether bills for this plan variation can be split for proration. | [optional] 
**successorPlanVariationId** | **NSString*** | The ID of a \&quot;successor\&quot; plan variation to this one. If the field is set, and this object is disabled at all locations, it indicates that this variation is deprecated and the object identified by the successor ID be used in its stead. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


