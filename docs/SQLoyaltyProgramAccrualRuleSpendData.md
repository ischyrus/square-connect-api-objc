# SQLoyaltyProgramAccrualRuleSpendData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amountMoney** | [**SQMoney***](SQMoney.md) | The amount that buyers must spend to earn points.  For example, given an \&quot;Earn 1 point for every $10 spent\&quot; accrual rule, a buyer who spends $105 earns 10 points. | 
**excludedCategoryIds** | **NSArray&lt;NSString*&gt;*** | The IDs of any &#x60;CATEGORY&#x60; catalog objects that are excluded from points accrual.  You can use the [BatchRetrieveCatalogObjects](https://developer.squareup.com/reference/square_2023-10-18/catalog-api/batch-retrieve-catalog-objects) endpoint to retrieve information about the excluded categories. | [optional] 
**excludedItemVariationIds** | **NSArray&lt;NSString*&gt;*** | The IDs of any &#x60;ITEM_VARIATION&#x60; catalog objects that are excluded from points accrual.  You can use the [BatchRetrieveCatalogObjects](https://developer.squareup.com/reference/square_2023-10-18/catalog-api/batch-retrieve-catalog-objects) endpoint to retrieve information about the excluded item variations. | [optional] 
**taxMode** | **NSString*** | Indicates how taxes should be treated when calculating the purchase amount used for points accrual. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


