# SQDeletePaymentLinkResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) |  | [optional] 
**_id** | **NSString*** | The ID of the link that is deleted. | [optional] 
**cancelledOrderId** | **NSString*** | The ID of the order that is canceled. When a payment link is deleted, Square updates the the &#x60;state&#x60; (of the order that the checkout link created) to CANCELED. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


