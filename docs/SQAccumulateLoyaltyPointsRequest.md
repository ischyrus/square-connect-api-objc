# SQAccumulateLoyaltyPointsRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accumulatePoints** | [**SQLoyaltyEventAccumulatePoints***](SQLoyaltyEventAccumulatePoints.md) | The points to add to the account.  If you are using the Orders API to manage orders, specify the order ID. Otherwise, specify the points to add. | 
**idempotencyKey** | **NSString*** | A unique string that identifies the &#x60;AccumulateLoyaltyPoints&#x60; request.  Keys can be any valid string but must be unique for every request. | 
**locationId** | **NSString*** | The [location](https://developer.squareup.com/reference/square_2023-10-18/objects/Location) where the purchase was made. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


