# SQTransactionsApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**captureTransaction**](SQTransactionsApi.md#capturetransaction) | **POST** /v2/locations/{location_id}/transactions/{transaction_id}/capture | CaptureTransaction
[**listTransactions**](SQTransactionsApi.md#listtransactions) | **GET** /v2/locations/{location_id}/transactions | ListTransactions
[**retrieveTransaction**](SQTransactionsApi.md#retrievetransaction) | **GET** /v2/locations/{location_id}/transactions/{transaction_id} | RetrieveTransaction
[**voidTransaction**](SQTransactionsApi.md#voidtransaction) | **POST** /v2/locations/{location_id}/transactions/{transaction_id}/void | VoidTransaction


# **captureTransaction**
```objc
-(NSURLSessionTask*) captureTransactionWithLocationId: (NSString*) locationId
    transactionId: (NSString*) transactionId
        completionHandler: (void (^)(SQCaptureTransactionResponse* output, NSError* error)) handler;
```

CaptureTransaction

Captures a transaction that was created with the [Charge](https://developer.squareup.com/reference/square_2023-10-18/transactions-api/charge) endpoint with a `delay_capture` value of `true`.   See [Delayed capture transactions](https://developer.squareup.com/docs/payments/transactions/overview#delayed-capture) for more information.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* locationId = @"locationId_example"; // 
NSString* transactionId = @"transactionId_example"; // 

SQTransactionsApi*apiInstance = [[SQTransactionsApi alloc] init];

// CaptureTransaction
[apiInstance captureTransactionWithLocationId:locationId
              transactionId:transactionId
          completionHandler: ^(SQCaptureTransactionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQTransactionsApi->captureTransaction: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***|  | 
 **transactionId** | **NSString***|  | 

### Return type

[**SQCaptureTransactionResponse***](SQCaptureTransactionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTransactions**
```objc
-(NSURLSessionTask*) listTransactionsWithLocationId: (NSString*) locationId
    beginTime: (NSString*) beginTime
    endTime: (NSString*) endTime
    sortOrder: (NSString*) sortOrder
    cursor: (NSString*) cursor
        completionHandler: (void (^)(SQListTransactionsResponse* output, NSError* error)) handler;
```

ListTransactions

Lists transactions for a particular location.  Transactions include payment information from sales and exchanges and refund information from returns and exchanges.  Max results per [page](https://developer.squareup.com/docs/working-with-apis/pagination): 50

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* locationId = @"locationId_example"; // The ID of the location to list transactions for.
NSString* beginTime = @"beginTime_example"; // The beginning of the requested reporting period, in RFC 3339 format.  See [Date ranges](https://developer.squareup.com/docs/build-basics/working-with-dates) for details on date inclusivity/exclusivity.  Default value: The current time minus one year. (optional)
NSString* endTime = @"endTime_example"; // The end of the requested reporting period, in RFC 3339 format.  See [Date ranges](https://developer.squareup.com/docs/build-basics/working-with-dates) for details on date inclusivity/exclusivity.  Default value: The current time. (optional)
NSString* sortOrder = @"sortOrder_example"; // The order in which results are listed in the response (`ASC` for oldest first, `DESC` for newest first).  Default value: `DESC` (optional)
NSString* cursor = @"cursor_example"; // A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Paginating results](https://developer.squareup.com/docs/working-with-apis/pagination) for more information. (optional)

SQTransactionsApi*apiInstance = [[SQTransactionsApi alloc] init];

// ListTransactions
[apiInstance listTransactionsWithLocationId:locationId
              beginTime:beginTime
              endTime:endTime
              sortOrder:sortOrder
              cursor:cursor
          completionHandler: ^(SQListTransactionsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQTransactionsApi->listTransactions: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***| The ID of the location to list transactions for. | 
 **beginTime** | **NSString***| The beginning of the requested reporting period, in RFC 3339 format.  See [Date ranges](https://developer.squareup.com/docs/build-basics/working-with-dates) for details on date inclusivity/exclusivity.  Default value: The current time minus one year. | [optional] 
 **endTime** | **NSString***| The end of the requested reporting period, in RFC 3339 format.  See [Date ranges](https://developer.squareup.com/docs/build-basics/working-with-dates) for details on date inclusivity/exclusivity.  Default value: The current time. | [optional] 
 **sortOrder** | **NSString***| The order in which results are listed in the response (&#x60;ASC&#x60; for oldest first, &#x60;DESC&#x60; for newest first).  Default value: &#x60;DESC&#x60; | [optional] 
 **cursor** | **NSString***| A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Paginating results](https://developer.squareup.com/docs/working-with-apis/pagination) for more information. | [optional] 

### Return type

[**SQListTransactionsResponse***](SQListTransactionsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveTransaction**
```objc
-(NSURLSessionTask*) retrieveTransactionWithLocationId: (NSString*) locationId
    transactionId: (NSString*) transactionId
        completionHandler: (void (^)(SQRetrieveTransactionResponse* output, NSError* error)) handler;
```

RetrieveTransaction

Retrieves details for a single transaction.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* locationId = @"locationId_example"; // The ID of the transaction's associated location.
NSString* transactionId = @"transactionId_example"; // The ID of the transaction to retrieve.

SQTransactionsApi*apiInstance = [[SQTransactionsApi alloc] init];

// RetrieveTransaction
[apiInstance retrieveTransactionWithLocationId:locationId
              transactionId:transactionId
          completionHandler: ^(SQRetrieveTransactionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQTransactionsApi->retrieveTransaction: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***| The ID of the transaction&#39;s associated location. | 
 **transactionId** | **NSString***| The ID of the transaction to retrieve. | 

### Return type

[**SQRetrieveTransactionResponse***](SQRetrieveTransactionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **voidTransaction**
```objc
-(NSURLSessionTask*) voidTransactionWithLocationId: (NSString*) locationId
    transactionId: (NSString*) transactionId
        completionHandler: (void (^)(SQVoidTransactionResponse* output, NSError* error)) handler;
```

VoidTransaction

Cancels a transaction that was created with the [Charge](https://developer.squareup.com/reference/square_2023-10-18/transactions-api/charge) endpoint with a `delay_capture` value of `true`.   See [Delayed capture transactions](https://developer.squareup.com/docs/payments/transactions/overview#delayed-capture) for more information.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* locationId = @"locationId_example"; // 
NSString* transactionId = @"transactionId_example"; // 

SQTransactionsApi*apiInstance = [[SQTransactionsApi alloc] init];

// VoidTransaction
[apiInstance voidTransactionWithLocationId:locationId
              transactionId:transactionId
          completionHandler: ^(SQVoidTransactionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQTransactionsApi->voidTransaction: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***|  | 
 **transactionId** | **NSString***|  | 

### Return type

[**SQVoidTransactionResponse***](SQVoidTransactionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

