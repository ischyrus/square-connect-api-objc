# SQCatalogSubscriptionPlan

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **NSString*** | The name of the plan. | 
**phases** | [**NSArray&lt;SQSubscriptionPhase&gt;***](SQSubscriptionPhase.md) | A list of SubscriptionPhase containing the [SubscriptionPhase](https://developer.squareup.com/reference/square_2023-10-18/objects/SubscriptionPhase) for this plan. This field it required. Not including this field will throw a REQUIRED_FIELD_MISSING error | [optional] 
**subscriptionPlanVariations** | [**NSArray&lt;SQCatalogObject&gt;***](SQCatalogObject.md) | The list of subscription plan variations available for this product | [optional] 
**eligibleItemIds** | **NSArray&lt;NSString*&gt;*** | The list of IDs of &#x60;CatalogItems&#x60; that are eligible for subscription by this SubscriptionPlan&#39;s variations. | [optional] 
**eligibleCategoryIds** | **NSArray&lt;NSString*&gt;*** | The list of IDs of &#x60;CatalogCategory&#x60; that are eligible for subscription by this SubscriptionPlan&#39;s variations. | [optional] 
**allItems** | **NSNumber*** | If true, all items in the merchant&#39;s catalog are subscribable by this SubscriptionPlan. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


