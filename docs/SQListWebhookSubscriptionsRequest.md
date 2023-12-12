# SQListWebhookSubscriptionsRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cursor** | **NSString*** | A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
**includeDisabled** | **NSNumber*** | Includes disabled [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription)s. By default, all enabled [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription)s are returned. | [optional] 
**sortOrder** | **NSString*** | Sorts the returned list by when the [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription) was created with the specified order. This field defaults to ASC. | [optional] 
**limit** | **NSNumber*** | The maximum number of results to be returned in a single page. It is possible to receive fewer results than the specified limit on a given page. The default value of 100 is also the maximum allowed value.  Default: 100 | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


