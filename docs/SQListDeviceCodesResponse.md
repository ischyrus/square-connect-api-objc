# SQListDeviceCodesResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) | Any errors that occurred during the request. | [optional] 
**deviceCodes** | [**NSArray&lt;SQDeviceCode&gt;***](SQDeviceCode.md) | The queried DeviceCode. | [optional] 
**cursor** | **NSString*** | A pagination cursor to retrieve the next set of results for your original query to the endpoint. This value is present only if the request succeeded and additional results are available.  See [Paginating results](https://developer.squareup.com/docs/working-with-apis/pagination) for more information. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


