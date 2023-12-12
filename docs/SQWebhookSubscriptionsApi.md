# SQWebhookSubscriptionsApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWebhookSubscription**](SQWebhookSubscriptionsApi.md#createwebhooksubscription) | **POST** /v2/webhooks/subscriptions | CreateWebhookSubscription
[**deleteWebhookSubscription**](SQWebhookSubscriptionsApi.md#deletewebhooksubscription) | **DELETE** /v2/webhooks/subscriptions/{subscription_id} | DeleteWebhookSubscription
[**listWebhookEventTypes**](SQWebhookSubscriptionsApi.md#listwebhookeventtypes) | **GET** /v2/webhooks/event-types | ListWebhookEventTypes
[**listWebhookSubscriptions**](SQWebhookSubscriptionsApi.md#listwebhooksubscriptions) | **GET** /v2/webhooks/subscriptions | ListWebhookSubscriptions
[**retrieveWebhookSubscription**](SQWebhookSubscriptionsApi.md#retrievewebhooksubscription) | **GET** /v2/webhooks/subscriptions/{subscription_id} | RetrieveWebhookSubscription
[**testWebhookSubscription**](SQWebhookSubscriptionsApi.md#testwebhooksubscription) | **POST** /v2/webhooks/subscriptions/{subscription_id}/test | TestWebhookSubscription
[**updateWebhookSubscription**](SQWebhookSubscriptionsApi.md#updatewebhooksubscription) | **PUT** /v2/webhooks/subscriptions/{subscription_id} | UpdateWebhookSubscription
[**updateWebhookSubscriptionSignatureKey**](SQWebhookSubscriptionsApi.md#updatewebhooksubscriptionsignaturekey) | **POST** /v2/webhooks/subscriptions/{subscription_id}/signature-key | UpdateWebhookSubscriptionSignatureKey


# **createWebhookSubscription**
```objc
-(NSURLSessionTask*) createWebhookSubscriptionWithBody: (SQCreateWebhookSubscriptionRequest*) body
        completionHandler: (void (^)(SQCreateWebhookSubscriptionResponse* output, NSError* error)) handler;
```

CreateWebhookSubscription

Creates a webhook subscription.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCreateWebhookSubscriptionRequest* body = [[SQCreateWebhookSubscriptionRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQWebhookSubscriptionsApi*apiInstance = [[SQWebhookSubscriptionsApi alloc] init];

// CreateWebhookSubscription
[apiInstance createWebhookSubscriptionWithBody:body
          completionHandler: ^(SQCreateWebhookSubscriptionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQWebhookSubscriptionsApi->createWebhookSubscription: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCreateWebhookSubscriptionRequest***](SQCreateWebhookSubscriptionRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateWebhookSubscriptionResponse***](SQCreateWebhookSubscriptionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWebhookSubscription**
```objc
-(NSURLSessionTask*) deleteWebhookSubscriptionWithSubscriptionId: (NSString*) subscriptionId
        completionHandler: (void (^)(SQDeleteWebhookSubscriptionResponse* output, NSError* error)) handler;
```

DeleteWebhookSubscription

Deletes a webhook subscription.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* subscriptionId = @"subscriptionId_example"; // [REQUIRED] The ID of the [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription) to delete.

SQWebhookSubscriptionsApi*apiInstance = [[SQWebhookSubscriptionsApi alloc] init];

// DeleteWebhookSubscription
[apiInstance deleteWebhookSubscriptionWithSubscriptionId:subscriptionId
          completionHandler: ^(SQDeleteWebhookSubscriptionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQWebhookSubscriptionsApi->deleteWebhookSubscription: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionId** | **NSString***| [REQUIRED] The ID of the [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription) to delete. | 

### Return type

[**SQDeleteWebhookSubscriptionResponse***](SQDeleteWebhookSubscriptionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWebhookEventTypes**
```objc
-(NSURLSessionTask*) listWebhookEventTypesWithApiVersion: (NSString*) apiVersion
        completionHandler: (void (^)(SQListWebhookEventTypesResponse* output, NSError* error)) handler;
```

ListWebhookEventTypes

Lists all webhook event types that can be subscribed to.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* apiVersion = @"apiVersion_example"; // The API version for which to list event types. Setting this field overrides the default version used by the application. (optional)

SQWebhookSubscriptionsApi*apiInstance = [[SQWebhookSubscriptionsApi alloc] init];

// ListWebhookEventTypes
[apiInstance listWebhookEventTypesWithApiVersion:apiVersion
          completionHandler: ^(SQListWebhookEventTypesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQWebhookSubscriptionsApi->listWebhookEventTypes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **NSString***| The API version for which to list event types. Setting this field overrides the default version used by the application. | [optional] 

### Return type

[**SQListWebhookEventTypesResponse***](SQListWebhookEventTypesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWebhookSubscriptions**
```objc
-(NSURLSessionTask*) listWebhookSubscriptionsWithCursor: (NSString*) cursor
    includeDisabled: (NSNumber*) includeDisabled
    sortOrder: (NSString*) sortOrder
    limit: (NSNumber*) limit
        completionHandler: (void (^)(SQListWebhookSubscriptionsResponse* output, NSError* error)) handler;
```

ListWebhookSubscriptions

Lists all webhook subscriptions owned by your application.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* cursor = @"cursor_example"; // A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
NSNumber* includeDisabled = @true; // Includes disabled [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription)s. By default, all enabled [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription)s are returned. (optional)
NSString* sortOrder = @"sortOrder_example"; // Sorts the returned list by when the [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription) was created with the specified order. This field defaults to ASC. (optional)
NSNumber* limit = @56; // The maximum number of results to be returned in a single page. It is possible to receive fewer results than the specified limit on a given page. The default value of 100 is also the maximum allowed value.  Default: 100 (optional)

SQWebhookSubscriptionsApi*apiInstance = [[SQWebhookSubscriptionsApi alloc] init];

// ListWebhookSubscriptions
[apiInstance listWebhookSubscriptionsWithCursor:cursor
              includeDisabled:includeDisabled
              sortOrder:sortOrder
              limit:limit
          completionHandler: ^(SQListWebhookSubscriptionsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQWebhookSubscriptionsApi->listWebhookSubscriptions: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **NSString***| A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
 **includeDisabled** | **NSNumber***| Includes disabled [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription)s. By default, all enabled [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription)s are returned. | [optional] 
 **sortOrder** | **NSString***| Sorts the returned list by when the [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription) was created with the specified order. This field defaults to ASC. | [optional] 
 **limit** | **NSNumber***| The maximum number of results to be returned in a single page. It is possible to receive fewer results than the specified limit on a given page. The default value of 100 is also the maximum allowed value.  Default: 100 | [optional] 

### Return type

[**SQListWebhookSubscriptionsResponse***](SQListWebhookSubscriptionsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveWebhookSubscription**
```objc
-(NSURLSessionTask*) retrieveWebhookSubscriptionWithSubscriptionId: (NSString*) subscriptionId
        completionHandler: (void (^)(SQRetrieveWebhookSubscriptionResponse* output, NSError* error)) handler;
```

RetrieveWebhookSubscription

Retrieves a webhook subscription identified by its ID.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* subscriptionId = @"subscriptionId_example"; // [REQUIRED] The ID of the [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription) to retrieve.

SQWebhookSubscriptionsApi*apiInstance = [[SQWebhookSubscriptionsApi alloc] init];

// RetrieveWebhookSubscription
[apiInstance retrieveWebhookSubscriptionWithSubscriptionId:subscriptionId
          completionHandler: ^(SQRetrieveWebhookSubscriptionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQWebhookSubscriptionsApi->retrieveWebhookSubscription: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionId** | **NSString***| [REQUIRED] The ID of the [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription) to retrieve. | 

### Return type

[**SQRetrieveWebhookSubscriptionResponse***](SQRetrieveWebhookSubscriptionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testWebhookSubscription**
```objc
-(NSURLSessionTask*) testWebhookSubscriptionWithSubscriptionId: (NSString*) subscriptionId
    body: (SQTestWebhookSubscriptionRequest*) body
        completionHandler: (void (^)(SQTestWebhookSubscriptionResponse* output, NSError* error)) handler;
```

TestWebhookSubscription

Tests a webhook subscription by sending a test event to the notification URL.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* subscriptionId = @"subscriptionId_example"; // [REQUIRED] The ID of the [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription) to test.
SQTestWebhookSubscriptionRequest* body = [[SQTestWebhookSubscriptionRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQWebhookSubscriptionsApi*apiInstance = [[SQWebhookSubscriptionsApi alloc] init];

// TestWebhookSubscription
[apiInstance testWebhookSubscriptionWithSubscriptionId:subscriptionId
              body:body
          completionHandler: ^(SQTestWebhookSubscriptionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQWebhookSubscriptionsApi->testWebhookSubscription: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionId** | **NSString***| [REQUIRED] The ID of the [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription) to test. | 
 **body** | [**SQTestWebhookSubscriptionRequest***](SQTestWebhookSubscriptionRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQTestWebhookSubscriptionResponse***](SQTestWebhookSubscriptionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWebhookSubscription**
```objc
-(NSURLSessionTask*) updateWebhookSubscriptionWithSubscriptionId: (NSString*) subscriptionId
    body: (SQUpdateWebhookSubscriptionRequest*) body
        completionHandler: (void (^)(SQUpdateWebhookSubscriptionResponse* output, NSError* error)) handler;
```

UpdateWebhookSubscription

Updates a webhook subscription.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* subscriptionId = @"subscriptionId_example"; // [REQUIRED] The ID of the [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription) to update.
SQUpdateWebhookSubscriptionRequest* body = [[SQUpdateWebhookSubscriptionRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQWebhookSubscriptionsApi*apiInstance = [[SQWebhookSubscriptionsApi alloc] init];

// UpdateWebhookSubscription
[apiInstance updateWebhookSubscriptionWithSubscriptionId:subscriptionId
              body:body
          completionHandler: ^(SQUpdateWebhookSubscriptionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQWebhookSubscriptionsApi->updateWebhookSubscription: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionId** | **NSString***| [REQUIRED] The ID of the [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription) to update. | 
 **body** | [**SQUpdateWebhookSubscriptionRequest***](SQUpdateWebhookSubscriptionRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpdateWebhookSubscriptionResponse***](SQUpdateWebhookSubscriptionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWebhookSubscriptionSignatureKey**
```objc
-(NSURLSessionTask*) updateWebhookSubscriptionSignatureKeyWithSubscriptionId: (NSString*) subscriptionId
    body: (SQUpdateWebhookSubscriptionSignatureKeyRequest*) body
        completionHandler: (void (^)(SQUpdateWebhookSubscriptionSignatureKeyResponse* output, NSError* error)) handler;
```

UpdateWebhookSubscriptionSignatureKey

Updates a webhook subscription by replacing the existing signature key with a new one.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* subscriptionId = @"subscriptionId_example"; // [REQUIRED] The ID of the [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription) to update.
SQUpdateWebhookSubscriptionSignatureKeyRequest* body = [[SQUpdateWebhookSubscriptionSignatureKeyRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQWebhookSubscriptionsApi*apiInstance = [[SQWebhookSubscriptionsApi alloc] init];

// UpdateWebhookSubscriptionSignatureKey
[apiInstance updateWebhookSubscriptionSignatureKeyWithSubscriptionId:subscriptionId
              body:body
          completionHandler: ^(SQUpdateWebhookSubscriptionSignatureKeyResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQWebhookSubscriptionsApi->updateWebhookSubscriptionSignatureKey: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionId** | **NSString***| [REQUIRED] The ID of the [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription) to update. | 
 **body** | [**SQUpdateWebhookSubscriptionSignatureKeyRequest***](SQUpdateWebhookSubscriptionSignatureKeyRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpdateWebhookSubscriptionSignatureKeyResponse***](SQUpdateWebhookSubscriptionSignatureKeyResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

