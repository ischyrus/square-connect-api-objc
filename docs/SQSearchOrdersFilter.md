# SQSearchOrdersFilter

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**stateFilter** | [**SQSearchOrdersStateFilter***](SQSearchOrdersStateFilter.md) | Filter by [OrderState](https://developer.squareup.com/reference/square_2023-10-18/enums/OrderState). | [optional] 
**dateTimeFilter** | [**SQSearchOrdersDateTimeFilter***](SQSearchOrdersDateTimeFilter.md) | Filter for results within a time range.  __Important:__ If you filter for orders by time range, you must set &#x60;SearchOrdersSort&#x60; to sort by the same field. [Learn more about filtering orders by time range.](https://developer.squareup.com/docs/orders-api/manage-orders/search-orders#important-note-about-filtering-orders-by-time-range) | [optional] 
**fulfillmentFilter** | [**SQSearchOrdersFulfillmentFilter***](SQSearchOrdersFulfillmentFilter.md) | Filter by the fulfillment type or state. | [optional] 
**sourceFilter** | [**SQSearchOrdersSourceFilter***](SQSearchOrdersSourceFilter.md) | Filter by the source of the order. | [optional] 
**customerFilter** | [**SQSearchOrdersCustomerFilter***](SQSearchOrdersCustomerFilter.md) | Filter by customers associated with the order. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


