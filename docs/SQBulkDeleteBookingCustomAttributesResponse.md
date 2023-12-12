# SQBulkDeleteBookingCustomAttributesResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**values** | [**NSDictionary&lt;SQBookingCustomAttributeDeleteResponse&gt;***](SQBookingCustomAttributeDeleteResponse.md) | A map of responses that correspond to individual delete requests. Each response has the same ID as the corresponding request and contains &#x60;booking_id&#x60; and  &#x60;errors&#x60; field. | [optional] 
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) | Any errors that occurred during the request. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


