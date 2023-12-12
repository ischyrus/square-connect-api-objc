# SQSearchLoyaltyEventsRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**query** | [**SQLoyaltyEventQuery***](SQLoyaltyEventQuery.md) | A set of one or more predefined query filters to apply when  searching for loyalty events. The endpoint performs a logical AND to  evaluate multiple filters and performs a logical OR on arrays   that specifies multiple field values. | [optional] 
**limit** | **NSNumber*** | The maximum number of results to include in the response.  The last page might contain fewer events.  The default is 30 events. | [optional] 
**cursor** | **NSString*** | A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


