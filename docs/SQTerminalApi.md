# SQTerminalApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelTerminalAction**](SQTerminalApi.md#cancelterminalaction) | **POST** /v2/terminals/actions/{action_id}/cancel | CancelTerminalAction
[**cancelTerminalCheckout**](SQTerminalApi.md#cancelterminalcheckout) | **POST** /v2/terminals/checkouts/{checkout_id}/cancel | CancelTerminalCheckout
[**cancelTerminalRefund**](SQTerminalApi.md#cancelterminalrefund) | **POST** /v2/terminals/refunds/{terminal_refund_id}/cancel | CancelTerminalRefund
[**createTerminalAction**](SQTerminalApi.md#createterminalaction) | **POST** /v2/terminals/actions | CreateTerminalAction
[**createTerminalCheckout**](SQTerminalApi.md#createterminalcheckout) | **POST** /v2/terminals/checkouts | CreateTerminalCheckout
[**createTerminalRefund**](SQTerminalApi.md#createterminalrefund) | **POST** /v2/terminals/refunds | CreateTerminalRefund
[**dismissTerminalAction**](SQTerminalApi.md#dismissterminalaction) | **POST** /v2/terminals/actions/{action_id}/dismiss | DismissTerminalAction
[**getTerminalAction**](SQTerminalApi.md#getterminalaction) | **GET** /v2/terminals/actions/{action_id} | GetTerminalAction
[**getTerminalCheckout**](SQTerminalApi.md#getterminalcheckout) | **GET** /v2/terminals/checkouts/{checkout_id} | GetTerminalCheckout
[**getTerminalRefund**](SQTerminalApi.md#getterminalrefund) | **GET** /v2/terminals/refunds/{terminal_refund_id} | GetTerminalRefund
[**searchTerminalActions**](SQTerminalApi.md#searchterminalactions) | **POST** /v2/terminals/actions/search | SearchTerminalActions
[**searchTerminalCheckouts**](SQTerminalApi.md#searchterminalcheckouts) | **POST** /v2/terminals/checkouts/search | SearchTerminalCheckouts
[**searchTerminalRefunds**](SQTerminalApi.md#searchterminalrefunds) | **POST** /v2/terminals/refunds/search | SearchTerminalRefunds


# **cancelTerminalAction**
```objc
-(NSURLSessionTask*) cancelTerminalActionWithActionId: (NSString*) actionId
        completionHandler: (void (^)(SQCancelTerminalActionResponse* output, NSError* error)) handler;
```

CancelTerminalAction

Cancels a Terminal action request if the status of the request permits it.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* actionId = @"actionId_example"; // Unique ID for the desired `TerminalAction`.

SQTerminalApi*apiInstance = [[SQTerminalApi alloc] init];

// CancelTerminalAction
[apiInstance cancelTerminalActionWithActionId:actionId
          completionHandler: ^(SQCancelTerminalActionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQTerminalApi->cancelTerminalAction: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **actionId** | **NSString***| Unique ID for the desired &#x60;TerminalAction&#x60;. | 

### Return type

[**SQCancelTerminalActionResponse***](SQCancelTerminalActionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cancelTerminalCheckout**
```objc
-(NSURLSessionTask*) cancelTerminalCheckoutWithCheckoutId: (NSString*) checkoutId
        completionHandler: (void (^)(SQCancelTerminalCheckoutResponse* output, NSError* error)) handler;
```

CancelTerminalCheckout

Cancels a Terminal checkout request if the status of the request permits it.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* checkoutId = @"checkoutId_example"; // The unique ID for the desired `TerminalCheckout`.

SQTerminalApi*apiInstance = [[SQTerminalApi alloc] init];

// CancelTerminalCheckout
[apiInstance cancelTerminalCheckoutWithCheckoutId:checkoutId
          completionHandler: ^(SQCancelTerminalCheckoutResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQTerminalApi->cancelTerminalCheckout: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **checkoutId** | **NSString***| The unique ID for the desired &#x60;TerminalCheckout&#x60;. | 

### Return type

[**SQCancelTerminalCheckoutResponse***](SQCancelTerminalCheckoutResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cancelTerminalRefund**
```objc
-(NSURLSessionTask*) cancelTerminalRefundWithTerminalRefundId: (NSString*) terminalRefundId
        completionHandler: (void (^)(SQCancelTerminalRefundResponse* output, NSError* error)) handler;
```

CancelTerminalRefund

Cancels an Interac Terminal refund request by refund request ID if the status of the request permits it.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* terminalRefundId = @"terminalRefundId_example"; // The unique ID for the desired `TerminalRefund`.

SQTerminalApi*apiInstance = [[SQTerminalApi alloc] init];

// CancelTerminalRefund
[apiInstance cancelTerminalRefundWithTerminalRefundId:terminalRefundId
          completionHandler: ^(SQCancelTerminalRefundResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQTerminalApi->cancelTerminalRefund: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **terminalRefundId** | **NSString***| The unique ID for the desired &#x60;TerminalRefund&#x60;. | 

### Return type

[**SQCancelTerminalRefundResponse***](SQCancelTerminalRefundResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTerminalAction**
```objc
-(NSURLSessionTask*) createTerminalActionWithBody: (SQCreateTerminalActionRequest*) body
        completionHandler: (void (^)(SQCreateTerminalActionResponse* output, NSError* error)) handler;
```

CreateTerminalAction

Creates a Terminal action request and sends it to the specified device.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCreateTerminalActionRequest* body = [[SQCreateTerminalActionRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQTerminalApi*apiInstance = [[SQTerminalApi alloc] init];

// CreateTerminalAction
[apiInstance createTerminalActionWithBody:body
          completionHandler: ^(SQCreateTerminalActionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQTerminalApi->createTerminalAction: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCreateTerminalActionRequest***](SQCreateTerminalActionRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateTerminalActionResponse***](SQCreateTerminalActionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTerminalCheckout**
```objc
-(NSURLSessionTask*) createTerminalCheckoutWithBody: (SQCreateTerminalCheckoutRequest*) body
        completionHandler: (void (^)(SQCreateTerminalCheckoutResponse* output, NSError* error)) handler;
```

CreateTerminalCheckout

Creates a Terminal checkout request and sends it to the specified device to take a payment for the requested amount.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCreateTerminalCheckoutRequest* body = [[SQCreateTerminalCheckoutRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQTerminalApi*apiInstance = [[SQTerminalApi alloc] init];

// CreateTerminalCheckout
[apiInstance createTerminalCheckoutWithBody:body
          completionHandler: ^(SQCreateTerminalCheckoutResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQTerminalApi->createTerminalCheckout: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCreateTerminalCheckoutRequest***](SQCreateTerminalCheckoutRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateTerminalCheckoutResponse***](SQCreateTerminalCheckoutResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTerminalRefund**
```objc
-(NSURLSessionTask*) createTerminalRefundWithBody: (SQCreateTerminalRefundRequest*) body
        completionHandler: (void (^)(SQCreateTerminalRefundResponse* output, NSError* error)) handler;
```

CreateTerminalRefund

Creates a request to refund an Interac payment completed on a Square Terminal. Refunds for Interac payments on a Square Terminal are supported only for Interac debit cards in Canada. Other refunds for Terminal payments should use the Refunds API. For more information, see [Refunds API](https://developer.squareup.com/reference/square_2023-10-18/refunds-api).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCreateTerminalRefundRequest* body = [[SQCreateTerminalRefundRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQTerminalApi*apiInstance = [[SQTerminalApi alloc] init];

// CreateTerminalRefund
[apiInstance createTerminalRefundWithBody:body
          completionHandler: ^(SQCreateTerminalRefundResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQTerminalApi->createTerminalRefund: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCreateTerminalRefundRequest***](SQCreateTerminalRefundRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateTerminalRefundResponse***](SQCreateTerminalRefundResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dismissTerminalAction**
```objc
-(NSURLSessionTask*) dismissTerminalActionWithActionId: (NSString*) actionId
        completionHandler: (void (^)(SQDismissTerminalActionResponse* output, NSError* error)) handler;
```

DismissTerminalAction

Dismisses a Terminal action request if the status and type of the request permits it.  See [Link and Dismiss Actions](https://developer.squareup.com/docs/terminal-api/advanced-features/custom-workflows/link-and-dismiss-actions) for more details.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* actionId = @"actionId_example"; // Unique ID for the `TerminalAction` associated with the waiting dialog to be dismissed.

SQTerminalApi*apiInstance = [[SQTerminalApi alloc] init];

// DismissTerminalAction
[apiInstance dismissTerminalActionWithActionId:actionId
          completionHandler: ^(SQDismissTerminalActionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQTerminalApi->dismissTerminalAction: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **actionId** | **NSString***| Unique ID for the &#x60;TerminalAction&#x60; associated with the waiting dialog to be dismissed. | 

### Return type

[**SQDismissTerminalActionResponse***](SQDismissTerminalActionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTerminalAction**
```objc
-(NSURLSessionTask*) getTerminalActionWithActionId: (NSString*) actionId
        completionHandler: (void (^)(SQGetTerminalActionResponse* output, NSError* error)) handler;
```

GetTerminalAction

Retrieves a Terminal action request by `action_id`. Terminal action requests are available for 30 days.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* actionId = @"actionId_example"; // Unique ID for the desired `TerminalAction`.

SQTerminalApi*apiInstance = [[SQTerminalApi alloc] init];

// GetTerminalAction
[apiInstance getTerminalActionWithActionId:actionId
          completionHandler: ^(SQGetTerminalActionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQTerminalApi->getTerminalAction: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **actionId** | **NSString***| Unique ID for the desired &#x60;TerminalAction&#x60;. | 

### Return type

[**SQGetTerminalActionResponse***](SQGetTerminalActionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTerminalCheckout**
```objc
-(NSURLSessionTask*) getTerminalCheckoutWithCheckoutId: (NSString*) checkoutId
        completionHandler: (void (^)(SQGetTerminalCheckoutResponse* output, NSError* error)) handler;
```

GetTerminalCheckout

Retrieves a Terminal checkout request by `checkout_id`. Terminal checkout requests are available for 30 days.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* checkoutId = @"checkoutId_example"; // The unique ID for the desired `TerminalCheckout`.

SQTerminalApi*apiInstance = [[SQTerminalApi alloc] init];

// GetTerminalCheckout
[apiInstance getTerminalCheckoutWithCheckoutId:checkoutId
          completionHandler: ^(SQGetTerminalCheckoutResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQTerminalApi->getTerminalCheckout: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **checkoutId** | **NSString***| The unique ID for the desired &#x60;TerminalCheckout&#x60;. | 

### Return type

[**SQGetTerminalCheckoutResponse***](SQGetTerminalCheckoutResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTerminalRefund**
```objc
-(NSURLSessionTask*) getTerminalRefundWithTerminalRefundId: (NSString*) terminalRefundId
        completionHandler: (void (^)(SQGetTerminalRefundResponse* output, NSError* error)) handler;
```

GetTerminalRefund

Retrieves an Interac Terminal refund object by ID. Terminal refund objects are available for 30 days.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* terminalRefundId = @"terminalRefundId_example"; // The unique ID for the desired `TerminalRefund`.

SQTerminalApi*apiInstance = [[SQTerminalApi alloc] init];

// GetTerminalRefund
[apiInstance getTerminalRefundWithTerminalRefundId:terminalRefundId
          completionHandler: ^(SQGetTerminalRefundResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQTerminalApi->getTerminalRefund: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **terminalRefundId** | **NSString***| The unique ID for the desired &#x60;TerminalRefund&#x60;. | 

### Return type

[**SQGetTerminalRefundResponse***](SQGetTerminalRefundResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchTerminalActions**
```objc
-(NSURLSessionTask*) searchTerminalActionsWithBody: (SQSearchTerminalActionsRequest*) body
        completionHandler: (void (^)(SQSearchTerminalActionsResponse* output, NSError* error)) handler;
```

SearchTerminalActions

Retrieves a filtered list of Terminal action requests created by the account making the request. Terminal action requests are available for 30 days.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQSearchTerminalActionsRequest* body = [[SQSearchTerminalActionsRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQTerminalApi*apiInstance = [[SQTerminalApi alloc] init];

// SearchTerminalActions
[apiInstance searchTerminalActionsWithBody:body
          completionHandler: ^(SQSearchTerminalActionsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQTerminalApi->searchTerminalActions: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQSearchTerminalActionsRequest***](SQSearchTerminalActionsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQSearchTerminalActionsResponse***](SQSearchTerminalActionsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchTerminalCheckouts**
```objc
-(NSURLSessionTask*) searchTerminalCheckoutsWithBody: (SQSearchTerminalCheckoutsRequest*) body
        completionHandler: (void (^)(SQSearchTerminalCheckoutsResponse* output, NSError* error)) handler;
```

SearchTerminalCheckouts

Returns a filtered list of Terminal checkout requests created by the application making the request. Only Terminal checkout requests created for the merchant scoped to the OAuth token are returned. Terminal checkout requests are available for 30 days.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQSearchTerminalCheckoutsRequest* body = [[SQSearchTerminalCheckoutsRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQTerminalApi*apiInstance = [[SQTerminalApi alloc] init];

// SearchTerminalCheckouts
[apiInstance searchTerminalCheckoutsWithBody:body
          completionHandler: ^(SQSearchTerminalCheckoutsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQTerminalApi->searchTerminalCheckouts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQSearchTerminalCheckoutsRequest***](SQSearchTerminalCheckoutsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQSearchTerminalCheckoutsResponse***](SQSearchTerminalCheckoutsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchTerminalRefunds**
```objc
-(NSURLSessionTask*) searchTerminalRefundsWithBody: (SQSearchTerminalRefundsRequest*) body
        completionHandler: (void (^)(SQSearchTerminalRefundsResponse* output, NSError* error)) handler;
```

SearchTerminalRefunds

Retrieves a filtered list of Interac Terminal refund requests created by the seller making the request. Terminal refund requests are available for 30 days.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQSearchTerminalRefundsRequest* body = [[SQSearchTerminalRefundsRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQTerminalApi*apiInstance = [[SQTerminalApi alloc] init];

// SearchTerminalRefunds
[apiInstance searchTerminalRefundsWithBody:body
          completionHandler: ^(SQSearchTerminalRefundsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQTerminalApi->searchTerminalRefunds: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQSearchTerminalRefundsRequest***](SQSearchTerminalRefundsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQSearchTerminalRefundsResponse***](SQSearchTerminalRefundsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

