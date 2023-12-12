# SQBatchChangeInventoryRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**idempotencyKey** | **NSString*** | A client-supplied, universally unique identifier (UUID) for the request.  See [Idempotency](https://developer.squareup.com/docs/build-basics/common-api-patterns/idempotency) in the [API Development 101](https://developer.squareup.com/docs/buildbasics) section for more information. | 
**changes** | [**NSArray&lt;SQInventoryChange&gt;***](SQInventoryChange.md) | The set of physical counts and inventory adjustments to be made. Changes are applied based on the client-supplied timestamp and may be sent out of order. | [optional] 
**ignoreUnchangedCounts** | **NSNumber*** | Indicates whether the current physical count should be ignored if the quantity is unchanged since the last physical count. Default: &#x60;true&#x60;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


