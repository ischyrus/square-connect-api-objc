# SQCheckoutApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCheckout**](SQCheckoutApi.md#createcheckout) | **POST** /v2/locations/{location_id}/checkouts | CreateCheckout
[**createPaymentLink**](SQCheckoutApi.md#createpaymentlink) | **POST** /v2/online-checkout/payment-links | CreatePaymentLink
[**deletePaymentLink**](SQCheckoutApi.md#deletepaymentlink) | **DELETE** /v2/online-checkout/payment-links/{id} | DeletePaymentLink
[**listPaymentLinks**](SQCheckoutApi.md#listpaymentlinks) | **GET** /v2/online-checkout/payment-links | ListPaymentLinks
[**retrievePaymentLink**](SQCheckoutApi.md#retrievepaymentlink) | **GET** /v2/online-checkout/payment-links/{id} | RetrievePaymentLink
[**updatePaymentLink**](SQCheckoutApi.md#updatepaymentlink) | **PUT** /v2/online-checkout/payment-links/{id} | UpdatePaymentLink


# **createCheckout**
```objc
-(NSURLSessionTask*) createCheckoutWithLocationId: (NSString*) locationId
    body: (SQCreateCheckoutRequest*) body
        completionHandler: (void (^)(SQCreateCheckoutResponse* output, NSError* error)) handler;
```

CreateCheckout

Links a `checkoutId` to a `checkout_page_url` that customers are directed to in order to provide their payment information using a payment processing workflow hosted on connect.squareup.com.    NOTE: The Checkout API has been updated with new features.  For more information, see [Checkout API highlights](https://developer.squareup.com/docs/checkout-api#checkout-api-highlights).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* locationId = @"locationId_example"; // The ID of the business location to associate the checkout with.
SQCreateCheckoutRequest* body = [[SQCreateCheckoutRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQCheckoutApi*apiInstance = [[SQCheckoutApi alloc] init];

// CreateCheckout
[apiInstance createCheckoutWithLocationId:locationId
              body:body
          completionHandler: ^(SQCreateCheckoutResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCheckoutApi->createCheckout: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***| The ID of the business location to associate the checkout with. | 
 **body** | [**SQCreateCheckoutRequest***](SQCreateCheckoutRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateCheckoutResponse***](SQCreateCheckoutResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPaymentLink**
```objc
-(NSURLSessionTask*) createPaymentLinkWithBody: (SQCreatePaymentLinkRequest*) body
        completionHandler: (void (^)(SQCreatePaymentLinkResponse* output, NSError* error)) handler;
```

CreatePaymentLink

Creates a Square-hosted checkout page. Applications can share the resulting payment link with their buyer to pay for goods and services.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCreatePaymentLinkRequest* body = [[SQCreatePaymentLinkRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQCheckoutApi*apiInstance = [[SQCheckoutApi alloc] init];

// CreatePaymentLink
[apiInstance createPaymentLinkWithBody:body
          completionHandler: ^(SQCreatePaymentLinkResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCheckoutApi->createPaymentLink: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCreatePaymentLinkRequest***](SQCreatePaymentLinkRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreatePaymentLinkResponse***](SQCreatePaymentLinkResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePaymentLink**
```objc
-(NSURLSessionTask*) deletePaymentLinkWithId: (NSString*) _id
        completionHandler: (void (^)(SQDeletePaymentLinkResponse* output, NSError* error)) handler;
```

DeletePaymentLink

Deletes a payment link.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* _id = @"_id_example"; // The ID of the payment link to delete.

SQCheckoutApi*apiInstance = [[SQCheckoutApi alloc] init];

// DeletePaymentLink
[apiInstance deletePaymentLinkWithId:_id
          completionHandler: ^(SQDeletePaymentLinkResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCheckoutApi->deletePaymentLink: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| The ID of the payment link to delete. | 

### Return type

[**SQDeletePaymentLinkResponse***](SQDeletePaymentLinkResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPaymentLinks**
```objc
-(NSURLSessionTask*) listPaymentLinksWithCursor: (NSString*) cursor
    limit: (NSNumber*) limit
        completionHandler: (void (^)(SQListPaymentLinksResponse* output, NSError* error)) handler;
```

ListPaymentLinks

Lists all payment links.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* cursor = @"cursor_example"; // A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. If a cursor is not provided, the endpoint returns the first page of the results. For more  information, see [Pagination](https://developer.squareup.com/docs/basics/api101/pagination). (optional)
NSNumber* limit = @56; // A limit on the number of results to return per page. The limit is advisory and the implementation might return more or less results. If the supplied limit is negative, zero, or greater than the maximum limit of 1000, it is ignored.  Default value: `100` (optional)

SQCheckoutApi*apiInstance = [[SQCheckoutApi alloc] init];

// ListPaymentLinks
[apiInstance listPaymentLinksWithCursor:cursor
              limit:limit
          completionHandler: ^(SQListPaymentLinksResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCheckoutApi->listPaymentLinks: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **NSString***| A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. If a cursor is not provided, the endpoint returns the first page of the results. For more  information, see [Pagination](https://developer.squareup.com/docs/basics/api101/pagination). | [optional] 
 **limit** | **NSNumber***| A limit on the number of results to return per page. The limit is advisory and the implementation might return more or less results. If the supplied limit is negative, zero, or greater than the maximum limit of 1000, it is ignored.  Default value: &#x60;100&#x60; | [optional] 

### Return type

[**SQListPaymentLinksResponse***](SQListPaymentLinksResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrievePaymentLink**
```objc
-(NSURLSessionTask*) retrievePaymentLinkWithId: (NSString*) _id
        completionHandler: (void (^)(SQRetrievePaymentLinkResponse* output, NSError* error)) handler;
```

RetrievePaymentLink

Retrieves a payment link.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* _id = @"_id_example"; // The ID of link to retrieve.

SQCheckoutApi*apiInstance = [[SQCheckoutApi alloc] init];

// RetrievePaymentLink
[apiInstance retrievePaymentLinkWithId:_id
          completionHandler: ^(SQRetrievePaymentLinkResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCheckoutApi->retrievePaymentLink: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| The ID of link to retrieve. | 

### Return type

[**SQRetrievePaymentLinkResponse***](SQRetrievePaymentLinkResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePaymentLink**
```objc
-(NSURLSessionTask*) updatePaymentLinkWithId: (NSString*) _id
    body: (SQUpdatePaymentLinkRequest*) body
        completionHandler: (void (^)(SQUpdatePaymentLinkResponse* output, NSError* error)) handler;
```

UpdatePaymentLink

Updates a payment link. You can update the `payment_link` fields such as `description`, `checkout_options`, and  `pre_populated_data`. You cannot update other fields such as the `order_id`, `version`, `URL`, or `timestamp` field.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* _id = @"_id_example"; // The ID of the payment link to update.
SQUpdatePaymentLinkRequest* body = [[SQUpdatePaymentLinkRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQCheckoutApi*apiInstance = [[SQCheckoutApi alloc] init];

// UpdatePaymentLink
[apiInstance updatePaymentLinkWithId:_id
              body:body
          completionHandler: ^(SQUpdatePaymentLinkResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCheckoutApi->updatePaymentLink: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| The ID of the payment link to update. | 
 **body** | [**SQUpdatePaymentLinkRequest***](SQUpdatePaymentLinkRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpdatePaymentLinkResponse***](SQUpdatePaymentLinkResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

