# SQOrderFulfillmentUpdatedUpdate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fulfillmentUid** | **NSString*** | A unique ID that identifies the fulfillment only within this order. | [optional] 
**oldState** | **NSString*** | The state of the fulfillment before the change. The state is not populated if the fulfillment is created with this new &#x60;Order&#x60; version. | [optional] 
**varNewState** | **NSString*** | The state of the fulfillment after the change. The state might be equal to &#x60;old_state&#x60; if a non-state field was changed on the fulfillment (such as the tracking number). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


