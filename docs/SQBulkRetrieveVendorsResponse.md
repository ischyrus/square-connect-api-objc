# SQBulkRetrieveVendorsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) | Any errors that occurred during the request. | [optional] 
**responses** | [**NSDictionary&lt;SQRetrieveVendorResponse&gt;***](SQRetrieveVendorResponse.md) | The set of [RetrieveVendorResponse](https://developer.squareup.com/reference/square_2023-10-18/objects/RetrieveVendorResponse) objects encapsulating successfully retrieved [Vendor](https://developer.squareup.com/reference/square_2023-10-18/objects/Vendor) objects or error responses for failed attempts. The set is represented by  a collection of &#x60;Vendor&#x60;-ID/&#x60;Vendor&#x60;-object or &#x60;Vendor&#x60;-ID/error-object pairs. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


