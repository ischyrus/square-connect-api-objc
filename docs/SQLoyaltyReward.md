# SQLoyaltyReward

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | The Square-assigned ID of the loyalty reward. | [optional] 
**status** | **NSString*** | The status of a loyalty reward. | [optional] 
**loyaltyAccountId** | **NSString*** | The Square-assigned ID of the [loyalty account](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyAccount) to which the reward belongs. | 
**rewardTierId** | **NSString*** | The Square-assigned ID of the [reward tier](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyProgramRewardTier) used to create the reward. | 
**points** | **NSNumber*** | The number of loyalty points used for the reward. | [optional] 
**orderId** | **NSString*** | The Square-assigned ID of the [order](https://developer.squareup.com/reference/square_2023-10-18/objects/Order) to which the reward is attached. | [optional] 
**createdAt** | **NSString*** | The timestamp when the reward was created, in RFC 3339 format. | [optional] 
**updatedAt** | **NSString*** | The timestamp when the reward was last updated, in RFC 3339 format. | [optional] 
**redeemedAt** | **NSString*** | The timestamp when the reward was redeemed, in RFC 3339 format. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


