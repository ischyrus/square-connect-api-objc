# SQListCustomersRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cursor** | **NSString*** | A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for your original query.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
**limit** | **NSNumber*** | The maximum number of results to return in a single page. This limit is advisory. The response might contain more or fewer results. If the specified limit is less than 1 or greater than 100, Square returns a &#x60;400 VALUE_TOO_LOW&#x60; or &#x60;400 VALUE_TOO_HIGH&#x60; error. The default value is 100.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
**sortField** | **NSString*** | Indicates how customers should be sorted.  The default value is &#x60;DEFAULT&#x60;. | [optional] 
**sortOrder** | **NSString*** | Indicates whether customers should be sorted in ascending (&#x60;ASC&#x60;) or descending (&#x60;DESC&#x60;) order.  The default value is &#x60;ASC&#x60;. | [optional] 
**count** | **NSNumber*** | Indicates whether to return the total count of customers in the &#x60;count&#x60; field of the response.  The default value is &#x60;false&#x60;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


