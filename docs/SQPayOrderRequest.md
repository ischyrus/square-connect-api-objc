# SQPayOrderRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**idempotencyKey** | **NSString*** | A value you specify that uniquely identifies this request among requests you have sent. If you are unsure whether a particular payment request was completed successfully, you can reattempt it with the same idempotency key without worrying about duplicate payments.  For more information, see [Idempotency](https://developer.squareup.com/docs/working-with-apis/idempotency). | 
**orderVersion** | **NSNumber*** | The version of the order being paid. If not supplied, the latest version will be paid. | [optional] 
**paymentIds** | **NSArray&lt;NSString*&gt;*** | The IDs of the [payments](https://developer.squareup.com/reference/square_2023-10-18/objects/Payment) to collect. The payment total must match the order total. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


