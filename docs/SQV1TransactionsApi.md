# SQV1TransactionsApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1CreateRefund**](SQV1TransactionsApi.md#v1createrefund) | **POST** /v1/{location_id}/refunds | V1CreateRefund
[**v1ListOrders**](SQV1TransactionsApi.md#v1listorders) | **GET** /v1/{location_id}/orders | V1ListOrders
[**v1ListPayments**](SQV1TransactionsApi.md#v1listpayments) | **GET** /v1/{location_id}/payments | V1ListPayments
[**v1ListRefunds**](SQV1TransactionsApi.md#v1listrefunds) | **GET** /v1/{location_id}/refunds | V1ListRefunds
[**v1ListSettlements**](SQV1TransactionsApi.md#v1listsettlements) | **GET** /v1/{location_id}/settlements | V1ListSettlements
[**v1RetrieveOrder**](SQV1TransactionsApi.md#v1retrieveorder) | **GET** /v1/{location_id}/orders/{order_id} | V1RetrieveOrder
[**v1RetrievePayment**](SQV1TransactionsApi.md#v1retrievepayment) | **GET** /v1/{location_id}/payments/{payment_id} | V1RetrievePayment
[**v1RetrieveSettlement**](SQV1TransactionsApi.md#v1retrievesettlement) | **GET** /v1/{location_id}/settlements/{settlement_id} | V1RetrieveSettlement
[**v1UpdateOrder**](SQV1TransactionsApi.md#v1updateorder) | **PUT** /v1/{location_id}/orders/{order_id} | V1UpdateOrder


# **v1CreateRefund**
```objc
-(NSURLSessionTask*) v1CreateRefundWithLocationId: (NSString*) locationId
    body: (SQV1CreateRefundRequest*) body
        completionHandler: (void (^)(SQV1Refund* output, NSError* error)) handler;
```

V1CreateRefund

Issues a refund for a previously processed payment. You must issue a refund within 60 days of the associated payment.  You cannot issue a partial refund for a split tender payment. You must instead issue a full or partial refund for a particular tender, by providing the applicable tender id to the V1CreateRefund endpoint. Issuing a full refund for a split tender payment refunds all tenders associated with the payment.  Issuing a refund for a card payment is not reversible. For development purposes, you can create fake cash payments in Square Point of Sale and refund them.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* locationId = @"locationId_example"; // The ID of the original payment's associated location.
SQV1CreateRefundRequest* body = [[SQV1CreateRefundRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQV1TransactionsApi*apiInstance = [[SQV1TransactionsApi alloc] init];

// V1CreateRefund
[apiInstance v1CreateRefundWithLocationId:locationId
              body:body
          completionHandler: ^(SQV1Refund* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQV1TransactionsApi->v1CreateRefund: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***| The ID of the original payment&#39;s associated location. | 
 **body** | [**SQV1CreateRefundRequest***](SQV1CreateRefundRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQV1Refund***](SQV1Refund.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ListOrders**
```objc
-(NSURLSessionTask*) v1ListOrdersWithLocationId: (NSString*) locationId
    order: (NSString*) order
    limit: (NSNumber*) limit
    batchToken: (NSString*) batchToken
        completionHandler: (void (^)(NSArray<SQV1Order>* output, NSError* error)) handler;
```

V1ListOrders

Provides summary information for a merchant's online store orders.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* locationId = @"locationId_example"; // The ID of the location to list online store orders for.
NSString* order = @"order_example"; // The order in which payments are listed in the response. (optional)
NSNumber* limit = @56; // The maximum number of payments to return in a single response. This value cannot exceed 200. (optional)
NSString* batchToken = @"batchToken_example"; // A pagination cursor to retrieve the next set of results for your original query to the endpoint. (optional)

SQV1TransactionsApi*apiInstance = [[SQV1TransactionsApi alloc] init];

// V1ListOrders
[apiInstance v1ListOrdersWithLocationId:locationId
              order:order
              limit:limit
              batchToken:batchToken
          completionHandler: ^(NSArray<SQV1Order>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQV1TransactionsApi->v1ListOrders: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***| The ID of the location to list online store orders for. | 
 **order** | **NSString***| The order in which payments are listed in the response. | [optional] 
 **limit** | **NSNumber***| The maximum number of payments to return in a single response. This value cannot exceed 200. | [optional] 
 **batchToken** | **NSString***| A pagination cursor to retrieve the next set of results for your original query to the endpoint. | [optional] 

### Return type

[**NSArray<SQV1Order>***](SQV1Order.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ListPayments**
```objc
-(NSURLSessionTask*) v1ListPaymentsWithLocationId: (NSString*) locationId
    order: (NSString*) order
    beginTime: (NSString*) beginTime
    endTime: (NSString*) endTime
    limit: (NSNumber*) limit
    batchToken: (NSString*) batchToken
    includePartial: (NSNumber*) includePartial
        completionHandler: (void (^)(NSArray<SQV1Payment>* output, NSError* error)) handler;
```

V1ListPayments

Provides summary information for all payments taken for a given Square account during a date range. Date ranges cannot exceed 1 year in length. See Date ranges for details of inclusive and exclusive dates.  *Note**: Details for payments processed with Square Point of Sale while in offline mode may not be transmitted to Square for up to 72 hours. Offline payments have a `created_at` value that reflects the time the payment was originally processed, not the time it was subsequently transmitted to Square. Consequently, the ListPayments endpoint might list an offline payment chronologically between online payments that were seen in a previous request.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* locationId = @"locationId_example"; // The ID of the location to list payments for. If you specify me, this endpoint returns payments aggregated from all of the business's locations.
NSString* order = @"order_example"; // The order in which payments are listed in the response. (optional)
NSString* beginTime = @"beginTime_example"; // The beginning of the requested reporting period, in ISO 8601 format. If this value is before January 1, 2013 (2013-01-01T00:00:00Z), this endpoint returns an error. Default value: The current time minus one year. (optional)
NSString* endTime = @"endTime_example"; // The end of the requested reporting period, in ISO 8601 format. If this value is more than one year greater than begin_time, this endpoint returns an error. Default value: The current time. (optional)
NSNumber* limit = @56; // The maximum number of payments to return in a single response. This value cannot exceed 200. (optional)
NSString* batchToken = @"batchToken_example"; // A pagination cursor to retrieve the next set of results for your original query to the endpoint. (optional)
NSNumber* includePartial = @true; // Indicates whether or not to include partial payments in the response. Partial payments will have the tenders collected so far, but the itemizations will be empty until the payment is completed. (optional)

SQV1TransactionsApi*apiInstance = [[SQV1TransactionsApi alloc] init];

// V1ListPayments
[apiInstance v1ListPaymentsWithLocationId:locationId
              order:order
              beginTime:beginTime
              endTime:endTime
              limit:limit
              batchToken:batchToken
              includePartial:includePartial
          completionHandler: ^(NSArray<SQV1Payment>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQV1TransactionsApi->v1ListPayments: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***| The ID of the location to list payments for. If you specify me, this endpoint returns payments aggregated from all of the business&#39;s locations. | 
 **order** | **NSString***| The order in which payments are listed in the response. | [optional] 
 **beginTime** | **NSString***| The beginning of the requested reporting period, in ISO 8601 format. If this value is before January 1, 2013 (2013-01-01T00:00:00Z), this endpoint returns an error. Default value: The current time minus one year. | [optional] 
 **endTime** | **NSString***| The end of the requested reporting period, in ISO 8601 format. If this value is more than one year greater than begin_time, this endpoint returns an error. Default value: The current time. | [optional] 
 **limit** | **NSNumber***| The maximum number of payments to return in a single response. This value cannot exceed 200. | [optional] 
 **batchToken** | **NSString***| A pagination cursor to retrieve the next set of results for your original query to the endpoint. | [optional] 
 **includePartial** | **NSNumber***| Indicates whether or not to include partial payments in the response. Partial payments will have the tenders collected so far, but the itemizations will be empty until the payment is completed. | [optional] 

### Return type

[**NSArray<SQV1Payment>***](SQV1Payment.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ListRefunds**
```objc
-(NSURLSessionTask*) v1ListRefundsWithLocationId: (NSString*) locationId
    order: (NSString*) order
    beginTime: (NSString*) beginTime
    endTime: (NSString*) endTime
    limit: (NSNumber*) limit
    batchToken: (NSString*) batchToken
        completionHandler: (void (^)(NSArray<SQV1Refund>* output, NSError* error)) handler;
```

V1ListRefunds

Provides the details for all refunds initiated by a merchant or any of the merchant's mobile staff during a date range. Date ranges cannot exceed one year in length.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* locationId = @"locationId_example"; // The ID of the location to list refunds for.
NSString* order = @"order_example"; // The order in which payments are listed in the response. (optional)
NSString* beginTime = @"beginTime_example"; // The beginning of the requested reporting period, in ISO 8601 format. If this value is before January 1, 2013 (2013-01-01T00:00:00Z), this endpoint returns an error. Default value: The current time minus one year. (optional)
NSString* endTime = @"endTime_example"; // The end of the requested reporting period, in ISO 8601 format. If this value is more than one year greater than begin_time, this endpoint returns an error. Default value: The current time. (optional)
NSNumber* limit = @56; // The approximate number of refunds to return in a single response. Default: 100. Max: 200. Response may contain more results than the prescribed limit when refunds are made simultaneously to multiple tenders in a payment or when refunds are generated in an exchange to account for the value of returned goods. (optional)
NSString* batchToken = @"batchToken_example"; // A pagination cursor to retrieve the next set of results for your original query to the endpoint. (optional)

SQV1TransactionsApi*apiInstance = [[SQV1TransactionsApi alloc] init];

// V1ListRefunds
[apiInstance v1ListRefundsWithLocationId:locationId
              order:order
              beginTime:beginTime
              endTime:endTime
              limit:limit
              batchToken:batchToken
          completionHandler: ^(NSArray<SQV1Refund>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQV1TransactionsApi->v1ListRefunds: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***| The ID of the location to list refunds for. | 
 **order** | **NSString***| The order in which payments are listed in the response. | [optional] 
 **beginTime** | **NSString***| The beginning of the requested reporting period, in ISO 8601 format. If this value is before January 1, 2013 (2013-01-01T00:00:00Z), this endpoint returns an error. Default value: The current time minus one year. | [optional] 
 **endTime** | **NSString***| The end of the requested reporting period, in ISO 8601 format. If this value is more than one year greater than begin_time, this endpoint returns an error. Default value: The current time. | [optional] 
 **limit** | **NSNumber***| The approximate number of refunds to return in a single response. Default: 100. Max: 200. Response may contain more results than the prescribed limit when refunds are made simultaneously to multiple tenders in a payment or when refunds are generated in an exchange to account for the value of returned goods. | [optional] 
 **batchToken** | **NSString***| A pagination cursor to retrieve the next set of results for your original query to the endpoint. | [optional] 

### Return type

[**NSArray<SQV1Refund>***](SQV1Refund.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ListSettlements**
```objc
-(NSURLSessionTask*) v1ListSettlementsWithLocationId: (NSString*) locationId
    order: (NSString*) order
    beginTime: (NSString*) beginTime
    endTime: (NSString*) endTime
    limit: (NSNumber*) limit
    status: (NSString*) status
    batchToken: (NSString*) batchToken
        completionHandler: (void (^)(NSArray<SQV1Settlement>* output, NSError* error)) handler;
```

V1ListSettlements

Provides summary information for all deposits and withdrawals initiated by Square to a linked bank account during a date range. Date ranges cannot exceed one year in length.  *Note**: the ListSettlements endpoint does not provide entry information.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* locationId = @"locationId_example"; // The ID of the location to list settlements for. If you specify me, this endpoint returns settlements aggregated from all of the business's locations.
NSString* order = @"order_example"; // The order in which settlements are listed in the response. (optional)
NSString* beginTime = @"beginTime_example"; // The beginning of the requested reporting period, in ISO 8601 format. If this value is before January 1, 2013 (2013-01-01T00:00:00Z), this endpoint returns an error. Default value: The current time minus one year. (optional)
NSString* endTime = @"endTime_example"; // The end of the requested reporting period, in ISO 8601 format. If this value is more than one year greater than begin_time, this endpoint returns an error. Default value: The current time. (optional)
NSNumber* limit = @56; // The maximum number of settlements to return in a single response. This value cannot exceed 200. (optional)
NSString* status = @"status_example"; // Provide this parameter to retrieve only settlements with a particular status (SENT or FAILED). (optional)
NSString* batchToken = @"batchToken_example"; // A pagination cursor to retrieve the next set of results for your original query to the endpoint. (optional)

SQV1TransactionsApi*apiInstance = [[SQV1TransactionsApi alloc] init];

// V1ListSettlements
[apiInstance v1ListSettlementsWithLocationId:locationId
              order:order
              beginTime:beginTime
              endTime:endTime
              limit:limit
              status:status
              batchToken:batchToken
          completionHandler: ^(NSArray<SQV1Settlement>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQV1TransactionsApi->v1ListSettlements: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***| The ID of the location to list settlements for. If you specify me, this endpoint returns settlements aggregated from all of the business&#39;s locations. | 
 **order** | **NSString***| The order in which settlements are listed in the response. | [optional] 
 **beginTime** | **NSString***| The beginning of the requested reporting period, in ISO 8601 format. If this value is before January 1, 2013 (2013-01-01T00:00:00Z), this endpoint returns an error. Default value: The current time minus one year. | [optional] 
 **endTime** | **NSString***| The end of the requested reporting period, in ISO 8601 format. If this value is more than one year greater than begin_time, this endpoint returns an error. Default value: The current time. | [optional] 
 **limit** | **NSNumber***| The maximum number of settlements to return in a single response. This value cannot exceed 200. | [optional] 
 **status** | **NSString***| Provide this parameter to retrieve only settlements with a particular status (SENT or FAILED). | [optional] 
 **batchToken** | **NSString***| A pagination cursor to retrieve the next set of results for your original query to the endpoint. | [optional] 

### Return type

[**NSArray<SQV1Settlement>***](SQV1Settlement.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1RetrieveOrder**
```objc
-(NSURLSessionTask*) v1RetrieveOrderWithLocationId: (NSString*) locationId
    orderId: (NSString*) orderId
        completionHandler: (void (^)(SQV1Order* output, NSError* error)) handler;
```

V1RetrieveOrder

Provides comprehensive information for a single online store order, including the order's history.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* locationId = @"locationId_example"; // The ID of the order's associated location.
NSString* orderId = @"orderId_example"; // The order's Square-issued ID. You obtain this value from Order objects returned by the List Orders endpoint

SQV1TransactionsApi*apiInstance = [[SQV1TransactionsApi alloc] init];

// V1RetrieveOrder
[apiInstance v1RetrieveOrderWithLocationId:locationId
              orderId:orderId
          completionHandler: ^(SQV1Order* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQV1TransactionsApi->v1RetrieveOrder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***| The ID of the order&#39;s associated location. | 
 **orderId** | **NSString***| The order&#39;s Square-issued ID. You obtain this value from Order objects returned by the List Orders endpoint | 

### Return type

[**SQV1Order***](SQV1Order.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1RetrievePayment**
```objc
-(NSURLSessionTask*) v1RetrievePaymentWithLocationId: (NSString*) locationId
    paymentId: (NSString*) paymentId
        completionHandler: (void (^)(SQV1Payment* output, NSError* error)) handler;
```

V1RetrievePayment

Provides comprehensive information for a single payment.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* locationId = @"locationId_example"; // The ID of the payment's associated location.
NSString* paymentId = @"paymentId_example"; // The Square-issued payment ID. payment_id comes from Payment objects returned by the List Payments endpoint, Settlement objects returned by the List Settlements endpoint, or Refund objects returned by the List Refunds endpoint.

SQV1TransactionsApi*apiInstance = [[SQV1TransactionsApi alloc] init];

// V1RetrievePayment
[apiInstance v1RetrievePaymentWithLocationId:locationId
              paymentId:paymentId
          completionHandler: ^(SQV1Payment* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQV1TransactionsApi->v1RetrievePayment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***| The ID of the payment&#39;s associated location. | 
 **paymentId** | **NSString***| The Square-issued payment ID. payment_id comes from Payment objects returned by the List Payments endpoint, Settlement objects returned by the List Settlements endpoint, or Refund objects returned by the List Refunds endpoint. | 

### Return type

[**SQV1Payment***](SQV1Payment.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1RetrieveSettlement**
```objc
-(NSURLSessionTask*) v1RetrieveSettlementWithLocationId: (NSString*) locationId
    settlementId: (NSString*) settlementId
        completionHandler: (void (^)(SQV1Settlement* output, NSError* error)) handler;
```

V1RetrieveSettlement

Provides comprehensive information for a single settlement.  The returned `Settlement` objects include an `entries` field that lists the transactions that contribute to the settlement total. Most settlement entries correspond to a payment payout, but settlement entries are also generated for less common events, like refunds, manual adjustments, or chargeback holds.  Square initiates its regular deposits as indicated in the [Deposit Options with Square](https://squareup.com/help/us/en/article/3807) help article. Details for a regular deposit are usually not available from Connect API endpoints before 10 p.m. PST the same day.  Square does not know when an initiated settlement **completes**, only whether it has failed. A completed settlement is typically reflected in a bank account within 3 business days, but in exceptional cases it may take longer.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* locationId = @"locationId_example"; // The ID of the settlements's associated location.
NSString* settlementId = @"settlementId_example"; // The settlement's Square-issued ID. You obtain this value from Settlement objects returned by the List Settlements endpoint.

SQV1TransactionsApi*apiInstance = [[SQV1TransactionsApi alloc] init];

// V1RetrieveSettlement
[apiInstance v1RetrieveSettlementWithLocationId:locationId
              settlementId:settlementId
          completionHandler: ^(SQV1Settlement* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQV1TransactionsApi->v1RetrieveSettlement: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***| The ID of the settlements&#39;s associated location. | 
 **settlementId** | **NSString***| The settlement&#39;s Square-issued ID. You obtain this value from Settlement objects returned by the List Settlements endpoint. | 

### Return type

[**SQV1Settlement***](SQV1Settlement.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1UpdateOrder**
```objc
-(NSURLSessionTask*) v1UpdateOrderWithLocationId: (NSString*) locationId
    orderId: (NSString*) orderId
    body: (SQV1UpdateOrderRequest*) body
        completionHandler: (void (^)(SQV1Order* output, NSError* error)) handler;
```

V1UpdateOrder

Updates the details of an online store order. Every update you perform on an order corresponds to one of three actions:

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* locationId = @"locationId_example"; // The ID of the order's associated location.
NSString* orderId = @"orderId_example"; // The order's Square-issued ID. You obtain this value from Order objects returned by the List Orders endpoint
SQV1UpdateOrderRequest* body = [[SQV1UpdateOrderRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQV1TransactionsApi*apiInstance = [[SQV1TransactionsApi alloc] init];

// V1UpdateOrder
[apiInstance v1UpdateOrderWithLocationId:locationId
              orderId:orderId
              body:body
          completionHandler: ^(SQV1Order* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQV1TransactionsApi->v1UpdateOrder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***| The ID of the order&#39;s associated location. | 
 **orderId** | **NSString***| The order&#39;s Square-issued ID. You obtain this value from Order objects returned by the List Orders endpoint | 
 **body** | [**SQV1UpdateOrderRequest***](SQV1UpdateOrderRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQV1Order***](SQV1Order.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

