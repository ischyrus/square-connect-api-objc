# SQSubscriptionAction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | The ID of an action scoped to a subscription. | [optional] 
**type** | **NSString*** | The type of the action. | [optional] 
**effectiveDate** | **NSString*** | The &#x60;YYYY-MM-DD&#x60;-formatted date when the action occurs on the subscription. | [optional] 
**monthlyBillingAnchorDate** | **NSNumber*** | The new billing anchor day value, for a &#x60;CHANGE_BILLING_ANCHOR_DATE&#x60; action. | [optional] 
**phases** | [**NSArray&lt;SQPhase&gt;***](SQPhase.md) | A list of Phases, to pass phase-specific information used in the swap. | [optional] 
**varNewPlanVariationId** | **NSString*** | The target subscription plan variation that a subscription switches to, for a &#x60;SWAP_PLAN&#x60; action. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


