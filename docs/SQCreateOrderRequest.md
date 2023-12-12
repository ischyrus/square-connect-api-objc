# SQCreateOrderRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order** | [**SQOrder***](SQOrder.md) | The order to create. If this field is set, the only other top-level field that can be set is the &#x60;idempotency_key&#x60;. | [optional] 
**idempotencyKey** | **NSString*** | A value you specify that uniquely identifies this order among orders you have created.  If you are unsure whether a particular order was created successfully, you can try it again with the same idempotency key without worrying about creating duplicate orders.  For more information, see [Idempotency](https://developer.squareup.com/docs/build-basics/common-api-patterns/idempotency). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


