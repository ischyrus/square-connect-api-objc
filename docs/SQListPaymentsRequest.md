# SQListPaymentsRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**beginTime** | **NSString*** | Indicates the start of the time range to retrieve payments for, in RFC 3339 format.   The range is determined using the &#x60;created_at&#x60; field for each Payment. Inclusive. Default: The current time minus one year. | [optional] 
**endTime** | **NSString*** | Indicates the end of the time range to retrieve payments for, in RFC 3339 format.  The  range is determined using the &#x60;created_at&#x60; field for each Payment.  Default: The current time. | [optional] 
**sortOrder** | **NSString*** | The order in which results are listed by &#x60;Payment.created_at&#x60;: - &#x60;ASC&#x60; - Oldest to newest. - &#x60;DESC&#x60; - Newest to oldest (default). | [optional] 
**cursor** | **NSString*** | A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
**locationId** | **NSString*** | Limit results to the location supplied. By default, results are returned for the default (main) location associated with the seller. | [optional] 
**total** | **NSNumber*** | The exact amount in the &#x60;total_money&#x60; for a payment. | [optional] 
**last4** | **NSString*** | The last four digits of a payment card. | [optional] 
**cardBrand** | **NSString*** | The brand of the payment card (for example, VISA). | [optional] 
**limit** | **NSNumber*** | The maximum number of results to be returned in a single page. It is possible to receive fewer results than the specified limit on a given page.  The default value of 100 is also the maximum allowed value. If the provided value is  greater than 100, it is ignored and the default value is used instead.  Default: &#x60;100&#x60; | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


