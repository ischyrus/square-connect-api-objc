# SQSearchCustomersRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cursor** | **NSString*** | Include the pagination cursor in subsequent calls to this endpoint to retrieve the next set of results associated with the original query.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
**limit** | **NSNumber*** | The maximum number of results to return in a single page. This limit is advisory. The response might contain more or fewer results. If the specified limit is invalid, Square returns a &#x60;400 VALUE_TOO_LOW&#x60; or &#x60;400 VALUE_TOO_HIGH&#x60; error. The default value is 100.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
**query** | [**SQCustomerQuery***](SQCustomerQuery.md) | The filtering and sorting criteria for the search request. If a query is not specified, Square returns all customer profiles ordered alphabetically by &#x60;given_name&#x60; and &#x60;family_name&#x60;. | [optional] 
**count** | **NSNumber*** | Indicates whether to return the total count of matching customers in the &#x60;count&#x60; field of the response.  The default value is &#x60;false&#x60;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


