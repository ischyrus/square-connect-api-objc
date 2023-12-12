# SQAccumulateLoyaltyPointsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) | Any errors that occurred during the request. | [optional] 
**event** | [**SQLoyaltyEvent***](SQLoyaltyEvent.md) | The resulting loyalty event. Starting in Square version 2022-08-17, this field is no longer returned. | [optional] 
**events** | [**NSArray&lt;SQLoyaltyEvent&gt;***](SQLoyaltyEvent.md) | The resulting loyalty events. If the purchase qualifies for points, the &#x60;ACCUMULATE_POINTS&#x60; event is always included. When using the Orders API, the &#x60;ACCUMULATE_PROMOTION_POINTS&#x60; event is included if the purchase also qualifies for a loyalty promotion. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


