# SQListCardsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) | Information on errors encountered during the request. | [optional] 
**cards** | [**NSArray&lt;SQCard&gt;***](SQCard.md) | The requested list of &#x60;Card&#x60;s. | [optional] 
**cursor** | **NSString*** | The pagination cursor to be used in a subsequent request. If empty, this is the final response.  See [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination) for more information. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


