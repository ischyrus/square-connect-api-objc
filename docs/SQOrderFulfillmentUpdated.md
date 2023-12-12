# SQOrderFulfillmentUpdated

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**orderId** | **NSString*** | The order&#39;s unique ID. | [optional] 
**version** | **NSNumber*** | The version number, which is incremented each time an update is committed to the order. Orders that were not created through the API do not include a version number and therefore cannot be updated.  [Read more about working with versions.](https://developer.squareup.com/docs/orders-api/manage-orders/update-orders) | [optional] 
**locationId** | **NSString*** | The ID of the seller location that this order is associated with. | [optional] 
**state** | **NSString*** | The state of the order. | [optional] 
**createdAt** | **NSString*** | The timestamp for when the order was created, in RFC 3339 format. | [optional] 
**updatedAt** | **NSString*** | The timestamp for when the order was last updated, in RFC 3339 format. | [optional] 
**fulfillmentUpdate** | [**NSArray&lt;SQOrderFulfillmentUpdatedUpdate&gt;***](SQOrderFulfillmentUpdatedUpdate.md) | The fulfillments that were updated with this version change. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


