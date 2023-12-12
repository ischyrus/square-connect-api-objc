# SQBulkCreateVendorsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) | Any errors that occurred during the request. | [optional] 
**responses** | [**NSDictionary&lt;SQCreateVendorResponse&gt;***](SQCreateVendorResponse.md) | A set of [CreateVendorResponse](https://developer.squareup.com/reference/square_2023-10-18/objects/CreateVendorResponse) objects encapsulating successfully created [Vendor](https://developer.squareup.com/reference/square_2023-10-18/objects/Vendor) objects or error responses for failed attempts. The set is represented by  a collection of idempotency-key/&#x60;Vendor&#x60;-object or idempotency-key/error-object pairs. The idempotency keys correspond to those specified in the input. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


