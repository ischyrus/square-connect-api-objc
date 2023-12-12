# SQSearchLoyaltyRewardsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) | Any errors that occurred during the request. | [optional] 
**rewards** | [**NSArray&lt;SQLoyaltyReward&gt;***](SQLoyaltyReward.md) | The loyalty rewards that satisfy the search criteria. These are returned in descending order by &#x60;updated_at&#x60;. | [optional] 
**cursor** | **NSString*** | The pagination cursor to be used in a subsequent  request. If empty, this is the final response. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


