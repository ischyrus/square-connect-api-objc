# SQUpdateInvoiceRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice** | [**SQInvoice***](SQInvoice.md) | The invoice fields to update.  The current invoice version must be specified in the &#x60;version&#x60; field. For more information, see [Update an Invoice](https://developer.squareup.com/docs/invoices-api/update-invoices). | 
**idempotencyKey** | **NSString*** | A unique string that identifies the &#x60;UpdateInvoice&#x60; request. If you do not provide &#x60;idempotency_key&#x60; (or provide an empty string as the value), the endpoint treats each request as independent.  For more information, see [Idempotency](https://developer.squareup.com/docs/build-basics/common-api-patterns/idempotency). | [optional] 
**fieldsToClear** | **NSArray&lt;NSString*&gt;*** | The list of fields to clear. For examples, see [Update an Invoice](https://developer.squareup.com/docs/invoices-api/update-invoices). | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


