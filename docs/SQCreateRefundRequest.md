# SQCreateRefundRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**idempotencyKey** | **NSString*** | A value you specify that uniquely identifies this refund among refunds you&#39;ve created for the tender.  If you&#39;re unsure whether a particular refund succeeded, you can reattempt it with the same idempotency key without worrying about duplicating the refund.  See [Idempotency keys](https://developer.squareup.com/docs/working-with-apis/idempotency) for more information. | 
**tenderId** | **NSString*** | The ID of the tender to refund.  A [&#x60;Transaction&#x60;](https://developer.squareup.com/reference/square_2023-10-18/objects/Transaction) has one or more &#x60;tenders&#x60; (i.e., methods of payment) associated with it, and you refund each tender separately with the Connect API. | 
**reason** | **NSString*** | A description of the reason for the refund.  Default value: &#x60;Refund via API&#x60; | [optional] 
**amountMoney** | [**SQMoney***](SQMoney.md) | The amount of money to refund.  Note that you specify the amount in the __smallest denomination of the applicable currency__. For example, US dollar amounts are specified in cents. See [Working with monetary amounts](https://developer.squareup.com/docs/build-basics/working-with-monetary-amounts) for details.  This amount cannot exceed the amount that was originally charged to the tender that corresponds to &#x60;tender_id&#x60;. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


