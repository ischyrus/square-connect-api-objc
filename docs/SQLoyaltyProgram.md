# SQLoyaltyProgram

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | The Square-assigned ID of the loyalty program. Updates to  the loyalty program do not modify the identifier. | [optional] 
**status** | **NSString*** | Whether the program is currently active. | [optional] 
**rewardTiers** | [**NSArray&lt;SQLoyaltyProgramRewardTier&gt;***](SQLoyaltyProgramRewardTier.md) | The list of rewards for buyers, sorted by ascending points. | [optional] 
**expirationPolicy** | [**SQLoyaltyProgramExpirationPolicy***](SQLoyaltyProgramExpirationPolicy.md) | If present, details for how points expire. | [optional] 
**terminology** | [**SQLoyaltyProgramTerminology***](SQLoyaltyProgramTerminology.md) | A cosmetic name for the “points” currency. | [optional] 
**locationIds** | **NSArray&lt;NSString*&gt;*** | The [locations](https://developer.squareup.com/reference/square_2023-10-18/objects/Location) at which the program is active. | 
**createdAt** | **NSString*** | The timestamp when the program was created, in RFC 3339 format. | [optional] 
**updatedAt** | **NSString*** | The timestamp when the reward was last updated, in RFC 3339 format. | [optional] 
**accrualRules** | [**NSArray&lt;SQLoyaltyProgramAccrualRule&gt;***](SQLoyaltyProgramAccrualRule.md) | Defines how buyers can earn loyalty points from the base loyalty program. To check for associated [loyalty promotions](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyPromotion) that enable buyers to earn extra points, call [ListLoyaltyPromotions](https://developer.squareup.com/reference/square_2023-10-18/loyalty-api/list-loyalty-promotions). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


