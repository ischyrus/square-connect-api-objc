# SQCalculateLoyaltyPointsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) | Any errors that occurred during the request. | [optional] 
**points** | **NSNumber*** | The number of points that the buyer can earn from the base loyalty program. | [optional] 
**promotionPoints** | **NSNumber*** | The number of points that the buyer can earn from a loyalty promotion. To be eligible to earn promotion points, the purchase must first qualify for program points. When &#x60;order_id&#x60; is not provided in the request, this value is always 0. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


