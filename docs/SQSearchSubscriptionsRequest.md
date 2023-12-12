# SQSearchSubscriptionsRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cursor** | **NSString*** | When the total number of resulting subscriptions exceeds the limit of a paged response,  specify the cursor returned from a preceding response here to fetch the next set of results. If the cursor is unset, the response contains the last page of the results.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
**limit** | **NSNumber*** | The upper limit on the number of subscriptions to return in a paged response. | [optional] 
**query** | [**SQSearchSubscriptionsQuery***](SQSearchSubscriptionsQuery.md) | A subscription query consisting of specified filtering conditions.  If this &#x60;query&#x60; field is unspecified, the &#x60;SearchSubscriptions&#x60; call will return all subscriptions. | [optional] 
**include** | **NSArray&lt;NSString*&gt;*** | An option to include related information in the response.   The supported values are:   - &#x60;actions&#x60;: to include scheduled actions on the targeted subscriptions. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


