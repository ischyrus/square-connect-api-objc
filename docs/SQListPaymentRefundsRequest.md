# SQListPaymentRefundsRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**beginTime** | **NSString*** | Indicates the start of the time range to retrieve each &#x60;PaymentRefund&#x60; for, in RFC 3339  format.  The range is determined using the &#x60;created_at&#x60; field for each &#x60;PaymentRefund&#x60;.   Default: The current time minus one year. | [optional] 
**endTime** | **NSString*** | Indicates the end of the time range to retrieve each &#x60;PaymentRefund&#x60; for, in RFC 3339  format.  The range is determined using the &#x60;created_at&#x60; field for each &#x60;PaymentRefund&#x60;.  Default: The current time. | [optional] 
**sortOrder** | **NSString*** | The order in which results are listed by &#x60;PaymentRefund.created_at&#x60;: - &#x60;ASC&#x60; - Oldest to newest. - &#x60;DESC&#x60; - Newest to oldest (default). | [optional] 
**cursor** | **NSString*** | A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
**locationId** | **NSString*** | Limit results to the location supplied. By default, results are returned for all locations associated with the seller. | [optional] 
**status** | **NSString*** | If provided, only refunds with the given status are returned. For a list of refund status values, see [PaymentRefund](https://developer.squareup.com/reference/square_2023-10-18/objects/PaymentRefund).  Default: If omitted, refunds are returned regardless of their status. | [optional] 
**sourceType** | **NSString*** | If provided, only returns refunds whose payments have the indicated source type. Current values include &#x60;CARD&#x60;, &#x60;BANK_ACCOUNT&#x60;, &#x60;WALLET&#x60;, &#x60;CASH&#x60;, and &#x60;EXTERNAL&#x60;. For information about these payment source types, see [Take Payments](https://developer.squareup.com/docs/payments-api/take-payments).  Default: If omitted, refunds are returned regardless of the source type. | [optional] 
**limit** | **NSNumber*** | The maximum number of results to be returned in a single page.  It is possible to receive fewer results than the specified limit on a given page.  If the supplied value is greater than 100, no more than 100 results are returned.  Default: 100 | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


