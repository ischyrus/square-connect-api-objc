# SQLoyaltyAccount

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | The Square-assigned ID of the loyalty account. | [optional] 
**programId** | **NSString*** | The Square-assigned ID of the [loyalty program](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyProgram) to which the account belongs. | 
**balance** | **NSNumber*** | The available point balance in the loyalty account. If points are scheduled to expire, they are listed in the &#x60;expiring_point_deadlines&#x60; field.  Your application should be able to handle loyalty accounts that have a negative point balance (&#x60;balance&#x60; is less than 0). This might occur if a seller makes a manual adjustment or as a result of a refund or exchange. | [optional] 
**lifetimePoints** | **NSNumber*** | The total points accrued during the lifetime of the account. | [optional] 
**customerId** | **NSString*** | The Square-assigned ID of the [customer](https://developer.squareup.com/reference/square_2023-10-18/objects/Customer) that is associated with the account. | [optional] 
**enrolledAt** | **NSString*** | The timestamp when the buyer joined the loyalty program, in RFC 3339 format. This field is used to display the **Enrolled On** or **Member Since** date in first-party Square products.  If this field is not set in a &#x60;CreateLoyaltyAccount&#x60; request, Square populates it after the buyer&#39;s first action on their account  (when &#x60;AccumulateLoyaltyPoints&#x60; or &#x60;CreateLoyaltyReward&#x60; is called). In first-party flows, Square populates the field when the buyer agrees to the terms of service in Square Point of Sale.   This field is typically specified in a &#x60;CreateLoyaltyAccount&#x60; request when creating a loyalty account for a buyer who already interacted with their account.  For example, you would set this field when migrating accounts from an external system. The timestamp in the request can represent a current or previous date and time, but it cannot be set for the future. | [optional] 
**createdAt** | **NSString*** | The timestamp when the loyalty account was created, in RFC 3339 format. | [optional] 
**updatedAt** | **NSString*** | The timestamp when the loyalty account was last updated, in RFC 3339 format. | [optional] 
**mapping** | [**SQLoyaltyAccountMapping***](SQLoyaltyAccountMapping.md) | The mapping that associates the loyalty account with a buyer. Currently, a loyalty account can only be mapped to a buyer by phone number.  To create a loyalty account, you must specify the &#x60;mapping&#x60; field, with the buyer&#39;s phone number in the &#x60;phone_number&#x60; field. | [optional] 
**expiringPointDeadlines** | [**NSArray&lt;SQLoyaltyAccountExpiringPointDeadline&gt;***](SQLoyaltyAccountExpiringPointDeadline.md) | The schedule for when points expire in the loyalty account balance. This field is present only if the account has points that are scheduled to expire.   The total number of points in this field equals the number of points in the &#x60;balance&#x60; field. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


