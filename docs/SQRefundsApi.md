# SQRefundsApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPaymentRefund**](SQRefundsApi.md#getpaymentrefund) | **GET** /v2/refunds/{refund_id} | GetPaymentRefund
[**listPaymentRefunds**](SQRefundsApi.md#listpaymentrefunds) | **GET** /v2/refunds | ListPaymentRefunds
[**refundPayment**](SQRefundsApi.md#refundpayment) | **POST** /v2/refunds | RefundPayment


# **getPaymentRefund**
```objc
-(NSURLSessionTask*) getPaymentRefundWithRefundId: (NSString*) refundId
        completionHandler: (void (^)(SQGetPaymentRefundResponse* output, NSError* error)) handler;
```

GetPaymentRefund

Retrieves a specific refund using the `refund_id`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* refundId = @"refundId_example"; // The unique ID for the desired `PaymentRefund`.

SQRefundsApi*apiInstance = [[SQRefundsApi alloc] init];

// GetPaymentRefund
[apiInstance getPaymentRefundWithRefundId:refundId
          completionHandler: ^(SQGetPaymentRefundResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQRefundsApi->getPaymentRefund: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refundId** | **NSString***| The unique ID for the desired &#x60;PaymentRefund&#x60;. | 

### Return type

[**SQGetPaymentRefundResponse***](SQGetPaymentRefundResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPaymentRefunds**
```objc
-(NSURLSessionTask*) listPaymentRefundsWithBeginTime: (NSString*) beginTime
    endTime: (NSString*) endTime
    sortOrder: (NSString*) sortOrder
    cursor: (NSString*) cursor
    locationId: (NSString*) locationId
    status: (NSString*) status
    sourceType: (NSString*) sourceType
    limit: (NSNumber*) limit
        completionHandler: (void (^)(SQListPaymentRefundsResponse* output, NSError* error)) handler;
```

ListPaymentRefunds

Retrieves a list of refunds for the account making the request.  Results are eventually consistent, and new refunds or changes to refunds might take several seconds to appear.  The maximum results per page is 100.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* beginTime = @"beginTime_example"; // Indicates the start of the time range to retrieve each `PaymentRefund` for, in RFC 3339  format.  The range is determined using the `created_at` field for each `PaymentRefund`.   Default: The current time minus one year. (optional)
NSString* endTime = @"endTime_example"; // Indicates the end of the time range to retrieve each `PaymentRefund` for, in RFC 3339  format.  The range is determined using the `created_at` field for each `PaymentRefund`.  Default: The current time. (optional)
NSString* sortOrder = @"sortOrder_example"; // The order in which results are listed by `PaymentRefund.created_at`: - `ASC` - Oldest to newest. - `DESC` - Newest to oldest (default). (optional)
NSString* cursor = @"cursor_example"; // A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
NSString* locationId = @"locationId_example"; // Limit results to the location supplied. By default, results are returned for all locations associated with the seller. (optional)
NSString* status = @"status_example"; // If provided, only refunds with the given status are returned. For a list of refund status values, see [PaymentRefund](https://developer.squareup.com/reference/square_2023-10-18/objects/PaymentRefund).  Default: If omitted, refunds are returned regardless of their status. (optional)
NSString* sourceType = @"sourceType_example"; // If provided, only returns refunds whose payments have the indicated source type. Current values include `CARD`, `BANK_ACCOUNT`, `WALLET`, `CASH`, and `EXTERNAL`. For information about these payment source types, see [Take Payments](https://developer.squareup.com/docs/payments-api/take-payments).  Default: If omitted, refunds are returned regardless of the source type. (optional)
NSNumber* limit = @56; // The maximum number of results to be returned in a single page.  It is possible to receive fewer results than the specified limit on a given page.  If the supplied value is greater than 100, no more than 100 results are returned.  Default: 100 (optional)

SQRefundsApi*apiInstance = [[SQRefundsApi alloc] init];

// ListPaymentRefunds
[apiInstance listPaymentRefundsWithBeginTime:beginTime
              endTime:endTime
              sortOrder:sortOrder
              cursor:cursor
              locationId:locationId
              status:status
              sourceType:sourceType
              limit:limit
          completionHandler: ^(SQListPaymentRefundsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQRefundsApi->listPaymentRefunds: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **beginTime** | **NSString***| Indicates the start of the time range to retrieve each &#x60;PaymentRefund&#x60; for, in RFC 3339  format.  The range is determined using the &#x60;created_at&#x60; field for each &#x60;PaymentRefund&#x60;.   Default: The current time minus one year. | [optional] 
 **endTime** | **NSString***| Indicates the end of the time range to retrieve each &#x60;PaymentRefund&#x60; for, in RFC 3339  format.  The range is determined using the &#x60;created_at&#x60; field for each &#x60;PaymentRefund&#x60;.  Default: The current time. | [optional] 
 **sortOrder** | **NSString***| The order in which results are listed by &#x60;PaymentRefund.created_at&#x60;: - &#x60;ASC&#x60; - Oldest to newest. - &#x60;DESC&#x60; - Newest to oldest (default). | [optional] 
 **cursor** | **NSString***| A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
 **locationId** | **NSString***| Limit results to the location supplied. By default, results are returned for all locations associated with the seller. | [optional] 
 **status** | **NSString***| If provided, only refunds with the given status are returned. For a list of refund status values, see [PaymentRefund](https://developer.squareup.com/reference/square_2023-10-18/objects/PaymentRefund).  Default: If omitted, refunds are returned regardless of their status. | [optional] 
 **sourceType** | **NSString***| If provided, only returns refunds whose payments have the indicated source type. Current values include &#x60;CARD&#x60;, &#x60;BANK_ACCOUNT&#x60;, &#x60;WALLET&#x60;, &#x60;CASH&#x60;, and &#x60;EXTERNAL&#x60;. For information about these payment source types, see [Take Payments](https://developer.squareup.com/docs/payments-api/take-payments).  Default: If omitted, refunds are returned regardless of the source type. | [optional] 
 **limit** | **NSNumber***| The maximum number of results to be returned in a single page.  It is possible to receive fewer results than the specified limit on a given page.  If the supplied value is greater than 100, no more than 100 results are returned.  Default: 100 | [optional] 

### Return type

[**SQListPaymentRefundsResponse***](SQListPaymentRefundsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refundPayment**
```objc
-(NSURLSessionTask*) refundPaymentWithBody: (SQRefundPaymentRequest*) body
        completionHandler: (void (^)(SQRefundPaymentResponse* output, NSError* error)) handler;
```

RefundPayment

Refunds a payment. You can refund the entire payment amount or a portion of it. You can use this endpoint to refund a card payment or record a  refund of a cash or external payment. For more information, see [Refund Payment](https://developer.squareup.com/docs/payments-api/refund-payments).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQRefundPaymentRequest* body = [[SQRefundPaymentRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQRefundsApi*apiInstance = [[SQRefundsApi alloc] init];

// RefundPayment
[apiInstance refundPaymentWithBody:body
          completionHandler: ^(SQRefundPaymentResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQRefundsApi->refundPayment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQRefundPaymentRequest***](SQRefundPaymentRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQRefundPaymentResponse***](SQRefundPaymentResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

