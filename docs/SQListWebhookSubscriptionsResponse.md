# SQListWebhookSubscriptionsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) | Information on errors encountered during the request. | [optional] 
**subscriptions** | [**NSArray&lt;SQWebhookSubscription&gt;***](SQWebhookSubscription.md) | The requested list of [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription)s. | [optional] 
**cursor** | **NSString*** | The pagination cursor to be used in a subsequent request. If empty, this is the final response.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


