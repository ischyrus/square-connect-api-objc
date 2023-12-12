# SQListSubscriptionEventsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) | Errors encountered during the request. | [optional] 
**subscriptionEvents** | [**NSArray&lt;SQSubscriptionEvent&gt;***](SQSubscriptionEvent.md) | The retrieved subscription events. | [optional] 
**cursor** | **NSString*** | When the total number of resulting subscription events exceeds the limit of a paged response,  the response includes a cursor for you to use in a subsequent request to fetch the next set of events. If the cursor is unset, the response contains the last page of the results.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


