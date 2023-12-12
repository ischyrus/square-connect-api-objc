# SQAdjustLoyaltyPointsRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**idempotencyKey** | **NSString*** | A unique string that identifies this &#x60;AdjustLoyaltyPoints&#x60; request.  Keys can be any valid string, but must be unique for every request. | 
**adjustPoints** | [**SQLoyaltyEventAdjustPoints***](SQLoyaltyEventAdjustPoints.md) | The points to add or subtract and the reason for the adjustment. To add points, specify a positive integer. To subtract points, specify a negative integer. | 
**allowNegativeBalance** | **NSNumber*** | Indicates whether to allow a negative adjustment to result in a negative balance. If &#x60;true&#x60;, a negative balance is allowed when subtracting points. If &#x60;false&#x60;, Square returns a &#x60;BAD_REQUEST&#x60; error when subtracting the specified number of points would result in a negative balance. The default value is &#x60;false&#x60;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


