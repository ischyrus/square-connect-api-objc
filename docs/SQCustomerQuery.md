# SQCustomerQuery

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**filter** | [**SQCustomerFilter***](SQCustomerFilter.md) | The filtering criteria for the search query. A query can contain multiple filters in any combination. Multiple filters are combined as &#x60;AND&#x60; statements.  __Note:__ Combining multiple filters as &#x60;OR&#x60; statements is not supported. Instead, send multiple single-filter searches and join the result sets. | [optional] 
**sort** | [**SQCustomerSort***](SQCustomerSort.md) | Sorting criteria for query results. The default behavior is to sort  customers alphabetically by &#x60;given_name&#x60; and &#x60;family_name&#x60;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


