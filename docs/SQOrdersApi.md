# SQOrdersApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batchRetrieveOrders**](SQOrdersApi.md#batchretrieveorders) | **POST** /v2/orders/batch-retrieve | BatchRetrieveOrders
[**calculateOrder**](SQOrdersApi.md#calculateorder) | **POST** /v2/orders/calculate | CalculateOrder
[**cloneOrder**](SQOrdersApi.md#cloneorder) | **POST** /v2/orders/clone | CloneOrder
[**createOrder**](SQOrdersApi.md#createorder) | **POST** /v2/orders | CreateOrder
[**payOrder**](SQOrdersApi.md#payorder) | **POST** /v2/orders/{order_id}/pay | PayOrder
[**retrieveOrder**](SQOrdersApi.md#retrieveorder) | **GET** /v2/orders/{order_id} | RetrieveOrder
[**searchOrders**](SQOrdersApi.md#searchorders) | **POST** /v2/orders/search | SearchOrders
[**updateOrder**](SQOrdersApi.md#updateorder) | **PUT** /v2/orders/{order_id} | UpdateOrder


# **batchRetrieveOrders**
```objc
-(NSURLSessionTask*) batchRetrieveOrdersWithBody: (SQBatchRetrieveOrdersRequest*) body
        completionHandler: (void (^)(SQBatchRetrieveOrdersResponse* output, NSError* error)) handler;
```

BatchRetrieveOrders

Retrieves a set of [orders](https://developer.squareup.com/reference/square_2023-10-18/objects/Order) by their IDs.  If a given order ID does not exist, the ID is ignored instead of generating an error.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQBatchRetrieveOrdersRequest* body = [[SQBatchRetrieveOrdersRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQOrdersApi*apiInstance = [[SQOrdersApi alloc] init];

// BatchRetrieveOrders
[apiInstance batchRetrieveOrdersWithBody:body
          completionHandler: ^(SQBatchRetrieveOrdersResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQOrdersApi->batchRetrieveOrders: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQBatchRetrieveOrdersRequest***](SQBatchRetrieveOrdersRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQBatchRetrieveOrdersResponse***](SQBatchRetrieveOrdersResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **calculateOrder**
```objc
-(NSURLSessionTask*) calculateOrderWithBody: (SQCalculateOrderRequest*) body
        completionHandler: (void (^)(SQCalculateOrderResponse* output, NSError* error)) handler;
```

CalculateOrder

Enables applications to preview order pricing without creating an order.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCalculateOrderRequest* body = [[SQCalculateOrderRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQOrdersApi*apiInstance = [[SQOrdersApi alloc] init];

// CalculateOrder
[apiInstance calculateOrderWithBody:body
          completionHandler: ^(SQCalculateOrderResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQOrdersApi->calculateOrder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCalculateOrderRequest***](SQCalculateOrderRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCalculateOrderResponse***](SQCalculateOrderResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cloneOrder**
```objc
-(NSURLSessionTask*) cloneOrderWithBody: (SQCloneOrderRequest*) body
        completionHandler: (void (^)(SQCloneOrderResponse* output, NSError* error)) handler;
```

CloneOrder

Creates a new order, in the `DRAFT` state, by duplicating an existing order. The newly created order has only the core fields (such as line items, taxes, and discounts) copied from the original order.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCloneOrderRequest* body = [[SQCloneOrderRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQOrdersApi*apiInstance = [[SQOrdersApi alloc] init];

// CloneOrder
[apiInstance cloneOrderWithBody:body
          completionHandler: ^(SQCloneOrderResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQOrdersApi->cloneOrder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCloneOrderRequest***](SQCloneOrderRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCloneOrderResponse***](SQCloneOrderResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOrder**
```objc
-(NSURLSessionTask*) createOrderWithBody: (SQCreateOrderRequest*) body
        completionHandler: (void (^)(SQCreateOrderResponse* output, NSError* error)) handler;
```

CreateOrder

Creates a new [order](https://developer.squareup.com/reference/square_2023-10-18/objects/Order) that can include information about products for purchase and settings to apply to the purchase.  To pay for a created order, see [Pay for Orders](https://developer.squareup.com/docs/orders-api/pay-for-orders).  You can modify open orders using the [UpdateOrder](https://developer.squareup.com/reference/square_2023-10-18/orders-api/update-order) endpoint.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCreateOrderRequest* body = [[SQCreateOrderRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQOrdersApi*apiInstance = [[SQOrdersApi alloc] init];

// CreateOrder
[apiInstance createOrderWithBody:body
          completionHandler: ^(SQCreateOrderResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQOrdersApi->createOrder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCreateOrderRequest***](SQCreateOrderRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateOrderResponse***](SQCreateOrderResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payOrder**
```objc
-(NSURLSessionTask*) payOrderWithOrderId: (NSString*) orderId
    body: (SQPayOrderRequest*) body
        completionHandler: (void (^)(SQPayOrderResponse* output, NSError* error)) handler;
```

PayOrder

Pay for an [order](https://developer.squareup.com/reference/square_2023-10-18/objects/Order) using one or more approved [payments](https://developer.squareup.com/reference/square_2023-10-18/objects/Payment) or settle an order with a total of `0`.  The total of the `payment_ids` listed in the request must be equal to the order total. Orders with a total amount of `0` can be marked as paid by specifying an empty array of `payment_ids` in the request.  To be used with `PayOrder`, a payment must:  - Reference the order by specifying the `order_id` when [creating the payment](https://developer.squareup.com/reference/square_2023-10-18/payments-api/create-payment). Any approved payments that reference the same `order_id` not specified in the `payment_ids` is canceled. - Be approved with [delayed capture](https://developer.squareup.com/docs/payments-api/take-payments/card-payments/delayed-capture). Using a delayed capture payment with `PayOrder` completes the approved payment.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* orderId = @"orderId_example"; // The ID of the order being paid.
SQPayOrderRequest* body = [[SQPayOrderRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQOrdersApi*apiInstance = [[SQOrdersApi alloc] init];

// PayOrder
[apiInstance payOrderWithOrderId:orderId
              body:body
          completionHandler: ^(SQPayOrderResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQOrdersApi->payOrder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **NSString***| The ID of the order being paid. | 
 **body** | [**SQPayOrderRequest***](SQPayOrderRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQPayOrderResponse***](SQPayOrderResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveOrder**
```objc
-(NSURLSessionTask*) retrieveOrderWithOrderId: (NSString*) orderId
        completionHandler: (void (^)(SQRetrieveOrderResponse* output, NSError* error)) handler;
```

RetrieveOrder

Retrieves an [Order](https://developer.squareup.com/reference/square_2023-10-18/objects/Order) by ID.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* orderId = @"orderId_example"; // The ID of the order to retrieve.

SQOrdersApi*apiInstance = [[SQOrdersApi alloc] init];

// RetrieveOrder
[apiInstance retrieveOrderWithOrderId:orderId
          completionHandler: ^(SQRetrieveOrderResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQOrdersApi->retrieveOrder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **NSString***| The ID of the order to retrieve. | 

### Return type

[**SQRetrieveOrderResponse***](SQRetrieveOrderResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchOrders**
```objc
-(NSURLSessionTask*) searchOrdersWithBody: (SQSearchOrdersRequest*) body
        completionHandler: (void (^)(SQSearchOrdersResponse* output, NSError* error)) handler;
```

SearchOrders

Search all orders for one or more locations. Orders include all sales, returns, and exchanges regardless of how or when they entered the Square ecosystem (such as Point of Sale, Invoices, and Connect APIs).  `SearchOrders` requests need to specify which locations to search and define a [SearchOrdersQuery](https://developer.squareup.com/reference/square_2023-10-18/objects/SearchOrdersQuery) object that controls how to sort or filter the results. Your `SearchOrdersQuery` can:    Set filter criteria.   Set the sort order.   Determine whether to return results as complete `Order` objects or as [OrderEntry](https://developer.squareup.com/reference/square_2023-10-18/objects/OrderEntry) objects.  Note that details for orders processed with Square Point of Sale while in offline mode might not be transmitted to Square for up to 72 hours. Offline orders have a `created_at` value that reflects the time the order was created, not the time it was subsequently transmitted to Square.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQSearchOrdersRequest* body = [[SQSearchOrdersRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQOrdersApi*apiInstance = [[SQOrdersApi alloc] init];

// SearchOrders
[apiInstance searchOrdersWithBody:body
          completionHandler: ^(SQSearchOrdersResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQOrdersApi->searchOrders: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQSearchOrdersRequest***](SQSearchOrdersRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQSearchOrdersResponse***](SQSearchOrdersResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrder**
```objc
-(NSURLSessionTask*) updateOrderWithOrderId: (NSString*) orderId
    body: (SQUpdateOrderRequest*) body
        completionHandler: (void (^)(SQUpdateOrderResponse* output, NSError* error)) handler;
```

UpdateOrder

Updates an open [order](https://developer.squareup.com/reference/square_2023-10-18/objects/Order) by adding, replacing, or deleting fields. Orders with a `COMPLETED` or `CANCELED` state cannot be updated.  An `UpdateOrder` request requires the following:  - The `order_id` in the endpoint path, identifying the order to update. - The latest `version` of the order to update. - The [sparse order](https://developer.squareup.com/docs/orders-api/manage-orders/update-orders#sparse-order-objects) containing only the fields to update and the version to which the update is being applied. - If deleting fields, the [dot notation paths](https://developer.squareup.com/docs/orders-api/manage-orders/update-orders#identifying-fields-to-delete) identifying the fields to clear.  To pay for an order, see [Pay for Orders](https://developer.squareup.com/docs/orders-api/pay-for-orders).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* orderId = @"orderId_example"; // The ID of the order to update.
SQUpdateOrderRequest* body = [[SQUpdateOrderRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQOrdersApi*apiInstance = [[SQOrdersApi alloc] init];

// UpdateOrder
[apiInstance updateOrderWithOrderId:orderId
              body:body
          completionHandler: ^(SQUpdateOrderResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQOrdersApi->updateOrder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **NSString***| The ID of the order to update. | 
 **body** | [**SQUpdateOrderRequest***](SQUpdateOrderRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpdateOrderResponse***](SQUpdateOrderResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

