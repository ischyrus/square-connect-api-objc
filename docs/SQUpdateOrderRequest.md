# SQUpdateOrderRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order** | [**SQOrder***](SQOrder.md) | The [sparse order](https://developer.squareup.com/docs/orders-api/manage-orders/update-orders#sparse-order-objects) containing only the fields to update and the version to which the update is being applied. | [optional] 
**fieldsToClear** | **NSArray&lt;NSString*&gt;*** | The [dot notation paths](https://developer.squareup.com/docs/orders-api/manage-orders/update-orders#identifying-fields-to-delete) fields to clear. For example, &#x60;line_items[uid].note&#x60;. For more information, see [Deleting fields](https://developer.squareup.com/docs/orders-api/manage-orders/update-orders#deleting-fields). | [optional] 
**idempotencyKey** | **NSString*** | A value you specify that uniquely identifies this update request.  If you are unsure whether a particular update was applied to an order successfully, you can reattempt it with the same idempotency key without worrying about creating duplicate updates to the order. The latest order version is returned.  For more information, see [Idempotency](https://developer.squareup.com/docs/build-basics/common-api-patterns/idempotency). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


