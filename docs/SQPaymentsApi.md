# SQPaymentsApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelPayment**](SQPaymentsApi.md#cancelpayment) | **POST** /v2/payments/{payment_id}/cancel | CancelPayment
[**cancelPaymentByIdempotencyKey**](SQPaymentsApi.md#cancelpaymentbyidempotencykey) | **POST** /v2/payments/cancel | CancelPaymentByIdempotencyKey
[**completePayment**](SQPaymentsApi.md#completepayment) | **POST** /v2/payments/{payment_id}/complete | CompletePayment
[**createPayment**](SQPaymentsApi.md#createpayment) | **POST** /v2/payments | CreatePayment
[**getPayment**](SQPaymentsApi.md#getpayment) | **GET** /v2/payments/{payment_id} | GetPayment
[**listPayments**](SQPaymentsApi.md#listpayments) | **GET** /v2/payments | ListPayments
[**updatePayment**](SQPaymentsApi.md#updatepayment) | **PUT** /v2/payments/{payment_id} | UpdatePayment


# **cancelPayment**
```objc
-(NSURLSessionTask*) cancelPaymentWithPaymentId: (NSString*) paymentId
        completionHandler: (void (^)(SQCancelPaymentResponse* output, NSError* error)) handler;
```

CancelPayment

Cancels (voids) a payment. You can use this endpoint to cancel a payment with  the APPROVED `status`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* paymentId = @"paymentId_example"; // The ID of the payment to cancel.

SQPaymentsApi*apiInstance = [[SQPaymentsApi alloc] init];

// CancelPayment
[apiInstance cancelPaymentWithPaymentId:paymentId
          completionHandler: ^(SQCancelPaymentResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQPaymentsApi->cancelPayment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentId** | **NSString***| The ID of the payment to cancel. | 

### Return type

[**SQCancelPaymentResponse***](SQCancelPaymentResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cancelPaymentByIdempotencyKey**
```objc
-(NSURLSessionTask*) cancelPaymentByIdempotencyKeyWithBody: (SQCancelPaymentByIdempotencyKeyRequest*) body
        completionHandler: (void (^)(SQCancelPaymentByIdempotencyKeyResponse* output, NSError* error)) handler;
```

CancelPaymentByIdempotencyKey

Cancels (voids) a payment identified by the idempotency key that is specified in the request.  Use this method when the status of a `CreatePayment` request is unknown (for example, after you send a `CreatePayment` request, a network error occurs and you do not get a response). In this case, you can direct Square to cancel the payment using this endpoint. In the request, you provide the same idempotency key that you provided in your `CreatePayment` request that you want to cancel. After canceling the payment, you can submit your `CreatePayment` request again.  Note that if no payment with the specified idempotency key is found, no action is taken and the endpoint returns successfully.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCancelPaymentByIdempotencyKeyRequest* body = [[SQCancelPaymentByIdempotencyKeyRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQPaymentsApi*apiInstance = [[SQPaymentsApi alloc] init];

// CancelPaymentByIdempotencyKey
[apiInstance cancelPaymentByIdempotencyKeyWithBody:body
          completionHandler: ^(SQCancelPaymentByIdempotencyKeyResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQPaymentsApi->cancelPaymentByIdempotencyKey: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCancelPaymentByIdempotencyKeyRequest***](SQCancelPaymentByIdempotencyKeyRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCancelPaymentByIdempotencyKeyResponse***](SQCancelPaymentByIdempotencyKeyResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **completePayment**
```objc
-(NSURLSessionTask*) completePaymentWithPaymentId: (NSString*) paymentId
    body: (SQCompletePaymentRequest*) body
        completionHandler: (void (^)(SQCompletePaymentResponse* output, NSError* error)) handler;
```

CompletePayment

Completes (captures) a payment. By default, payments are set to complete immediately after they are created.  You can use this endpoint to complete a payment with the APPROVED `status`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* paymentId = @"paymentId_example"; // The unique ID identifying the payment to be completed.
SQCompletePaymentRequest* body = [[SQCompletePaymentRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQPaymentsApi*apiInstance = [[SQPaymentsApi alloc] init];

// CompletePayment
[apiInstance completePaymentWithPaymentId:paymentId
              body:body
          completionHandler: ^(SQCompletePaymentResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQPaymentsApi->completePayment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentId** | **NSString***| The unique ID identifying the payment to be completed. | 
 **body** | [**SQCompletePaymentRequest***](SQCompletePaymentRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCompletePaymentResponse***](SQCompletePaymentResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPayment**
```objc
-(NSURLSessionTask*) createPaymentWithBody: (SQCreatePaymentRequest*) body
        completionHandler: (void (^)(SQCreatePaymentResponse* output, NSError* error)) handler;
```

CreatePayment

Creates a payment using the provided source. You can use this endpoint  to charge a card (credit/debit card or     Square gift card) or record a payment that the seller received outside of Square  (cash payment from a buyer or a payment that an external entity  processed on behalf of the seller).  The endpoint creates a  `Payment` object and returns it in the response.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCreatePaymentRequest* body = [[SQCreatePaymentRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQPaymentsApi*apiInstance = [[SQPaymentsApi alloc] init];

// CreatePayment
[apiInstance createPaymentWithBody:body
          completionHandler: ^(SQCreatePaymentResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQPaymentsApi->createPayment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCreatePaymentRequest***](SQCreatePaymentRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreatePaymentResponse***](SQCreatePaymentResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPayment**
```objc
-(NSURLSessionTask*) getPaymentWithPaymentId: (NSString*) paymentId
        completionHandler: (void (^)(SQGetPaymentResponse* output, NSError* error)) handler;
```

GetPayment

Retrieves details for a specific payment.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* paymentId = @"paymentId_example"; // A unique ID for the desired payment.

SQPaymentsApi*apiInstance = [[SQPaymentsApi alloc] init];

// GetPayment
[apiInstance getPaymentWithPaymentId:paymentId
          completionHandler: ^(SQGetPaymentResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQPaymentsApi->getPayment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentId** | **NSString***| A unique ID for the desired payment. | 

### Return type

[**SQGetPaymentResponse***](SQGetPaymentResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPayments**
```objc
-(NSURLSessionTask*) listPaymentsWithBeginTime: (NSString*) beginTime
    endTime: (NSString*) endTime
    sortOrder: (NSString*) sortOrder
    cursor: (NSString*) cursor
    locationId: (NSString*) locationId
    total: (NSNumber*) total
    last4: (NSString*) last4
    cardBrand: (NSString*) cardBrand
    limit: (NSNumber*) limit
        completionHandler: (void (^)(SQListPaymentsResponse* output, NSError* error)) handler;
```

ListPayments

Retrieves a list of payments taken by the account making the request.  Results are eventually consistent, and new payments or changes to payments might take several seconds to appear.  The maximum results per page is 100.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* beginTime = @"beginTime_example"; // Indicates the start of the time range to retrieve payments for, in RFC 3339 format.   The range is determined using the `created_at` field for each Payment. Inclusive. Default: The current time minus one year. (optional)
NSString* endTime = @"endTime_example"; // Indicates the end of the time range to retrieve payments for, in RFC 3339 format.  The  range is determined using the `created_at` field for each Payment.  Default: The current time. (optional)
NSString* sortOrder = @"sortOrder_example"; // The order in which results are listed by `Payment.created_at`: - `ASC` - Oldest to newest. - `DESC` - Newest to oldest (default). (optional)
NSString* cursor = @"cursor_example"; // A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
NSString* locationId = @"locationId_example"; // Limit results to the location supplied. By default, results are returned for the default (main) location associated with the seller. (optional)
NSNumber* total = @789; // The exact amount in the `total_money` for a payment. (optional)
NSString* last4 = @"last4_example"; // The last four digits of a payment card. (optional)
NSString* cardBrand = @"cardBrand_example"; // The brand of the payment card (for example, VISA). (optional)
NSNumber* limit = @56; // The maximum number of results to be returned in a single page. It is possible to receive fewer results than the specified limit on a given page.  The default value of 100 is also the maximum allowed value. If the provided value is  greater than 100, it is ignored and the default value is used instead.  Default: `100` (optional)

SQPaymentsApi*apiInstance = [[SQPaymentsApi alloc] init];

// ListPayments
[apiInstance listPaymentsWithBeginTime:beginTime
              endTime:endTime
              sortOrder:sortOrder
              cursor:cursor
              locationId:locationId
              total:total
              last4:last4
              cardBrand:cardBrand
              limit:limit
          completionHandler: ^(SQListPaymentsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQPaymentsApi->listPayments: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **beginTime** | **NSString***| Indicates the start of the time range to retrieve payments for, in RFC 3339 format.   The range is determined using the &#x60;created_at&#x60; field for each Payment. Inclusive. Default: The current time minus one year. | [optional] 
 **endTime** | **NSString***| Indicates the end of the time range to retrieve payments for, in RFC 3339 format.  The  range is determined using the &#x60;created_at&#x60; field for each Payment.  Default: The current time. | [optional] 
 **sortOrder** | **NSString***| The order in which results are listed by &#x60;Payment.created_at&#x60;: - &#x60;ASC&#x60; - Oldest to newest. - &#x60;DESC&#x60; - Newest to oldest (default). | [optional] 
 **cursor** | **NSString***| A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
 **locationId** | **NSString***| Limit results to the location supplied. By default, results are returned for the default (main) location associated with the seller. | [optional] 
 **total** | **NSNumber***| The exact amount in the &#x60;total_money&#x60; for a payment. | [optional] 
 **last4** | **NSString***| The last four digits of a payment card. | [optional] 
 **cardBrand** | **NSString***| The brand of the payment card (for example, VISA). | [optional] 
 **limit** | **NSNumber***| The maximum number of results to be returned in a single page. It is possible to receive fewer results than the specified limit on a given page.  The default value of 100 is also the maximum allowed value. If the provided value is  greater than 100, it is ignored and the default value is used instead.  Default: &#x60;100&#x60; | [optional] 

### Return type

[**SQListPaymentsResponse***](SQListPaymentsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePayment**
```objc
-(NSURLSessionTask*) updatePaymentWithPaymentId: (NSString*) paymentId
    body: (SQUpdatePaymentRequest*) body
        completionHandler: (void (^)(SQUpdatePaymentResponse* output, NSError* error)) handler;
```

UpdatePayment

Updates a payment with the APPROVED status. You can update the `amount_money` and `tip_money` using this endpoint.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* paymentId = @"paymentId_example"; // The ID of the payment to update.
SQUpdatePaymentRequest* body = [[SQUpdatePaymentRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQPaymentsApi*apiInstance = [[SQPaymentsApi alloc] init];

// UpdatePayment
[apiInstance updatePaymentWithPaymentId:paymentId
              body:body
          completionHandler: ^(SQUpdatePaymentResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQPaymentsApi->updatePayment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentId** | **NSString***| The ID of the payment to update. | 
 **body** | [**SQUpdatePaymentRequest***](SQUpdatePaymentRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpdatePaymentResponse***](SQUpdatePaymentResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

