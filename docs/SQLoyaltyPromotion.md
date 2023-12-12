# SQLoyaltyPromotion

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | The Square-assigned ID of the promotion. | [optional] 
**name** | **NSString*** | The name of the promotion. | 
**incentive** | [**SQLoyaltyPromotionIncentive***](SQLoyaltyPromotionIncentive.md) | The points incentive for the promotion. This field defines whether promotion points are earned by multiplying base program points or by adding a specified number of points. | 
**availableTime** | [**SQLoyaltyPromotionAvailableTimeData***](SQLoyaltyPromotionAvailableTimeData.md) | The scheduling information that defines when purchases can qualify to earn points from an &#x60;ACTIVE&#x60; promotion. | 
**triggerLimit** | [**SQLoyaltyPromotionTriggerLimit***](SQLoyaltyPromotionTriggerLimit.md) | The number of times a buyer can earn promotion points during a specified interval. If not specified, buyers can trigger the promotion an unlimited number of times. | [optional] 
**status** | **NSString*** | The current status of the promotion. | [optional] 
**createdAt** | **NSString*** | The timestamp of when the promotion was created, in RFC 3339 format. | [optional] 
**canceledAt** | **NSString*** | The timestamp of when the promotion was canceled, in RFC 3339 format. | [optional] 
**updatedAt** | **NSString*** | The timestamp when the promotion was last updated, in RFC 3339 format. | [optional] 
**loyaltyProgramId** | **NSString*** | The ID of the [loyalty program](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyProgram) associated with the promotion. | [optional] 
**minimumSpendAmountMoney** | [**SQMoney***](SQMoney.md) | The minimum purchase amount required to earn promotion points. If specified, this amount is positive. | [optional] 
**qualifyingItemVariationIds** | **NSArray&lt;NSString*&gt;*** | The IDs of any qualifying &#x60;ITEM_VARIATION&#x60; [catalog objects](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject). If specified, the purchase must include at least one of these items to qualify for the promotion.  This option is valid only if the base loyalty program uses a &#x60;VISIT&#x60; or &#x60;SPEND&#x60; accrual rule. With &#x60;SPEND&#x60; accrual rules, make sure that qualifying promotional items are not excluded.  You can specify &#x60;qualifying_item_variation_ids&#x60; or &#x60;qualifying_category_ids&#x60; for a given promotion, but not both. | 
**qualifyingCategoryIds** | **NSArray&lt;NSString*&gt;*** | The IDs of any qualifying &#x60;CATEGORY&#x60; [catalog objects](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject). If specified, the purchase must include at least one item from one of these categories to qualify for the promotion.  This option is valid only if the base loyalty program uses a &#x60;VISIT&#x60; or &#x60;SPEND&#x60; accrual rule. With &#x60;SPEND&#x60; accrual rules, make sure that qualifying promotional items are not excluded.  You can specify &#x60;qualifying_category_ids&#x60; or &#x60;qualifying_item_variation_ids&#x60; for a promotion, but not both. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


