# SQListDeviceCodesRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cursor** | **NSString*** | A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Paginating results](https://developer.squareup.com/docs/working-with-apis/pagination) for more information. | [optional] 
**locationId** | **NSString*** | If specified, only returns DeviceCodes of the specified location. Returns DeviceCodes of all locations if empty. | [optional] 
**productType** | **NSString*** | If specified, only returns DeviceCodes targeting the specified product type. Returns DeviceCodes of all product types if empty. | [optional] 
**status** | **NSArray&lt;NSString*&gt;*** | If specified, returns DeviceCodes with the specified statuses. Returns DeviceCodes of status &#x60;PAIRED&#x60; and &#x60;UNPAIRED&#x60; if empty. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


