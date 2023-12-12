# SQSearchLoyaltyRewardsRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**query** | [**SQSearchLoyaltyRewardsRequestLoyaltyRewardQuery***](SQSearchLoyaltyRewardsRequestLoyaltyRewardQuery.md) | The search criteria for the request.  If empty, the endpoint retrieves all loyalty rewards in the loyalty program. | [optional] 
**limit** | **NSNumber*** | The maximum number of results to return in the response. The default value is 30. | [optional] 
**cursor** | **NSString*** | A pagination cursor returned by a previous call to  this endpoint. Provide this to retrieve the next set of  results for the original query. For more information,  see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


