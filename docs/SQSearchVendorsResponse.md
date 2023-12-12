# SQSearchVendorsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) | Errors encountered when the request fails. | [optional] 
**vendors** | [**NSArray&lt;SQVendor&gt;***](SQVendor.md) | The [Vendor](https://developer.squareup.com/reference/square_2023-10-18/objects/Vendor) objects matching the specified search filter. | [optional] 
**cursor** | **NSString*** | The pagination cursor to be used in a subsequent request. If unset, this is the final response.  See the [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination) guide for more information. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


