# SQPublishInvoiceRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**version** | **NSNumber*** | The version of the [invoice](https://developer.squareup.com/reference/square_2023-10-18/objects/Invoice) to publish. This must match the current version of the invoice; otherwise, the request is rejected. | 
**idempotencyKey** | **NSString*** | A unique string that identifies the &#x60;PublishInvoice&#x60; request. If you do not  provide &#x60;idempotency_key&#x60; (or provide an empty string as the value), the endpoint  treats each request as independent.  For more information, see [Idempotency](https://developer.squareup.com/docs/build-basics/common-api-patterns/idempotency). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


