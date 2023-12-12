# SQSubscriptionsApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulkSwapPlan**](SQSubscriptionsApi.md#bulkswapplan) | **POST** /v2/subscriptions/bulk-swap-plan | BulkSwapPlan
[**cancelSubscription**](SQSubscriptionsApi.md#cancelsubscription) | **POST** /v2/subscriptions/{subscription_id}/cancel | CancelSubscription
[**changeBillingAnchorDate**](SQSubscriptionsApi.md#changebillinganchordate) | **POST** /v2/subscriptions/{subscription_id}/billing-anchor | ChangeBillingAnchorDate
[**createSubscription**](SQSubscriptionsApi.md#createsubscription) | **POST** /v2/subscriptions | CreateSubscription
[**deleteSubscriptionAction**](SQSubscriptionsApi.md#deletesubscriptionaction) | **DELETE** /v2/subscriptions/{subscription_id}/actions/{action_id} | DeleteSubscriptionAction
[**listSubscriptionEvents**](SQSubscriptionsApi.md#listsubscriptionevents) | **GET** /v2/subscriptions/{subscription_id}/events | ListSubscriptionEvents
[**pauseSubscription**](SQSubscriptionsApi.md#pausesubscription) | **POST** /v2/subscriptions/{subscription_id}/pause | PauseSubscription
[**resumeSubscription**](SQSubscriptionsApi.md#resumesubscription) | **POST** /v2/subscriptions/{subscription_id}/resume | ResumeSubscription
[**retrieveSubscription**](SQSubscriptionsApi.md#retrievesubscription) | **GET** /v2/subscriptions/{subscription_id} | RetrieveSubscription
[**searchSubscriptions**](SQSubscriptionsApi.md#searchsubscriptions) | **POST** /v2/subscriptions/search | SearchSubscriptions
[**swapPlan**](SQSubscriptionsApi.md#swapplan) | **POST** /v2/subscriptions/{subscription_id}/swap-plan | SwapPlan
[**updateSubscription**](SQSubscriptionsApi.md#updatesubscription) | **PUT** /v2/subscriptions/{subscription_id} | UpdateSubscription


# **bulkSwapPlan**
```objc
-(NSURLSessionTask*) bulkSwapPlanWithBody: (SQBulkSwapPlanRequest*) body
        completionHandler: (void (^)(SQBulkSwapPlanResponse* output, NSError* error)) handler;
```

BulkSwapPlan

Schedules a plan variation change for all active subscriptions under a given plan variation. For more information, see [Swap Subscription Plan Variations](https://developer.squareup.com/docs/subscriptions-api/swap-plan-variations).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQBulkSwapPlanRequest* body = [[SQBulkSwapPlanRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQSubscriptionsApi*apiInstance = [[SQSubscriptionsApi alloc] init];

// BulkSwapPlan
[apiInstance bulkSwapPlanWithBody:body
          completionHandler: ^(SQBulkSwapPlanResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQSubscriptionsApi->bulkSwapPlan: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQBulkSwapPlanRequest***](SQBulkSwapPlanRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQBulkSwapPlanResponse***](SQBulkSwapPlanResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cancelSubscription**
```objc
-(NSURLSessionTask*) cancelSubscriptionWithSubscriptionId: (NSString*) subscriptionId
        completionHandler: (void (^)(SQCancelSubscriptionResponse* output, NSError* error)) handler;
```

CancelSubscription

Schedules a `CANCEL` action to cancel an active subscription. This  sets the `canceled_date` field to the end of the active billing period. After this date,  the subscription status changes from ACTIVE to CANCELED.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* subscriptionId = @"subscriptionId_example"; // The ID of the subscription to cancel.

SQSubscriptionsApi*apiInstance = [[SQSubscriptionsApi alloc] init];

// CancelSubscription
[apiInstance cancelSubscriptionWithSubscriptionId:subscriptionId
          completionHandler: ^(SQCancelSubscriptionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQSubscriptionsApi->cancelSubscription: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionId** | **NSString***| The ID of the subscription to cancel. | 

### Return type

[**SQCancelSubscriptionResponse***](SQCancelSubscriptionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **changeBillingAnchorDate**
```objc
-(NSURLSessionTask*) changeBillingAnchorDateWithSubscriptionId: (NSString*) subscriptionId
    body: (SQChangeBillingAnchorDateRequest*) body
        completionHandler: (void (^)(SQChangeBillingAnchorDateResponse* output, NSError* error)) handler;
```

ChangeBillingAnchorDate

Changes the [billing anchor date](https://developer.squareup.com/docs/subscriptions-api/subscription-billing#billing-dates) for a subscription.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* subscriptionId = @"subscriptionId_example"; // The ID of the subscription to update the billing anchor date.
SQChangeBillingAnchorDateRequest* body = [[SQChangeBillingAnchorDateRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQSubscriptionsApi*apiInstance = [[SQSubscriptionsApi alloc] init];

// ChangeBillingAnchorDate
[apiInstance changeBillingAnchorDateWithSubscriptionId:subscriptionId
              body:body
          completionHandler: ^(SQChangeBillingAnchorDateResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQSubscriptionsApi->changeBillingAnchorDate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionId** | **NSString***| The ID of the subscription to update the billing anchor date. | 
 **body** | [**SQChangeBillingAnchorDateRequest***](SQChangeBillingAnchorDateRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQChangeBillingAnchorDateResponse***](SQChangeBillingAnchorDateResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSubscription**
```objc
-(NSURLSessionTask*) createSubscriptionWithBody: (SQCreateSubscriptionRequest*) body
        completionHandler: (void (^)(SQCreateSubscriptionResponse* output, NSError* error)) handler;
```

CreateSubscription

Enrolls a customer in a subscription.  If you provide a card on file in the request, Square charges the card for the subscription. Otherwise, Square sends an invoice to the customer's email address. The subscription starts immediately, unless the request includes the optional `start_date`. Each individual subscription is associated with a particular location.  For more information, see [Create a subscription](https://developer.squareup.com/docs/subscriptions-api/manage-subscriptions#create-a-subscription).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCreateSubscriptionRequest* body = [[SQCreateSubscriptionRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQSubscriptionsApi*apiInstance = [[SQSubscriptionsApi alloc] init];

// CreateSubscription
[apiInstance createSubscriptionWithBody:body
          completionHandler: ^(SQCreateSubscriptionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQSubscriptionsApi->createSubscription: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCreateSubscriptionRequest***](SQCreateSubscriptionRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateSubscriptionResponse***](SQCreateSubscriptionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSubscriptionAction**
```objc
-(NSURLSessionTask*) deleteSubscriptionActionWithSubscriptionId: (NSString*) subscriptionId
    actionId: (NSString*) actionId
        completionHandler: (void (^)(SQDeleteSubscriptionActionResponse* output, NSError* error)) handler;
```

DeleteSubscriptionAction

Deletes a scheduled action for a subscription.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* subscriptionId = @"subscriptionId_example"; // The ID of the subscription the targeted action is to act upon.
NSString* actionId = @"actionId_example"; // The ID of the targeted action to be deleted.

SQSubscriptionsApi*apiInstance = [[SQSubscriptionsApi alloc] init];

// DeleteSubscriptionAction
[apiInstance deleteSubscriptionActionWithSubscriptionId:subscriptionId
              actionId:actionId
          completionHandler: ^(SQDeleteSubscriptionActionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQSubscriptionsApi->deleteSubscriptionAction: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionId** | **NSString***| The ID of the subscription the targeted action is to act upon. | 
 **actionId** | **NSString***| The ID of the targeted action to be deleted. | 

### Return type

[**SQDeleteSubscriptionActionResponse***](SQDeleteSubscriptionActionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSubscriptionEvents**
```objc
-(NSURLSessionTask*) listSubscriptionEventsWithSubscriptionId: (NSString*) subscriptionId
    cursor: (NSString*) cursor
    limit: (NSNumber*) limit
        completionHandler: (void (^)(SQListSubscriptionEventsResponse* output, NSError* error)) handler;
```

ListSubscriptionEvents

Lists all [events](https://developer.squareup.com/docs/subscriptions-api/actions-events) for a specific subscription.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* subscriptionId = @"subscriptionId_example"; // The ID of the subscription to retrieve the events for.
NSString* cursor = @"cursor_example"; // When the total number of resulting subscription events exceeds the limit of a paged response,  specify the cursor returned from a preceding response here to fetch the next set of results. If the cursor is unset, the response contains the last page of the results.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
NSNumber* limit = @56; // The upper limit on the number of subscription events to return in a paged response. (optional)

SQSubscriptionsApi*apiInstance = [[SQSubscriptionsApi alloc] init];

// ListSubscriptionEvents
[apiInstance listSubscriptionEventsWithSubscriptionId:subscriptionId
              cursor:cursor
              limit:limit
          completionHandler: ^(SQListSubscriptionEventsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQSubscriptionsApi->listSubscriptionEvents: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionId** | **NSString***| The ID of the subscription to retrieve the events for. | 
 **cursor** | **NSString***| When the total number of resulting subscription events exceeds the limit of a paged response,  specify the cursor returned from a preceding response here to fetch the next set of results. If the cursor is unset, the response contains the last page of the results.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
 **limit** | **NSNumber***| The upper limit on the number of subscription events to return in a paged response. | [optional] 

### Return type

[**SQListSubscriptionEventsResponse***](SQListSubscriptionEventsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pauseSubscription**
```objc
-(NSURLSessionTask*) pauseSubscriptionWithSubscriptionId: (NSString*) subscriptionId
    body: (SQPauseSubscriptionRequest*) body
        completionHandler: (void (^)(SQPauseSubscriptionResponse* output, NSError* error)) handler;
```

PauseSubscription

Schedules a `PAUSE` action to pause an active subscription.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* subscriptionId = @"subscriptionId_example"; // The ID of the subscription to pause.
SQPauseSubscriptionRequest* body = [[SQPauseSubscriptionRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQSubscriptionsApi*apiInstance = [[SQSubscriptionsApi alloc] init];

// PauseSubscription
[apiInstance pauseSubscriptionWithSubscriptionId:subscriptionId
              body:body
          completionHandler: ^(SQPauseSubscriptionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQSubscriptionsApi->pauseSubscription: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionId** | **NSString***| The ID of the subscription to pause. | 
 **body** | [**SQPauseSubscriptionRequest***](SQPauseSubscriptionRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQPauseSubscriptionResponse***](SQPauseSubscriptionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resumeSubscription**
```objc
-(NSURLSessionTask*) resumeSubscriptionWithSubscriptionId: (NSString*) subscriptionId
    body: (SQResumeSubscriptionRequest*) body
        completionHandler: (void (^)(SQResumeSubscriptionResponse* output, NSError* error)) handler;
```

ResumeSubscription

Schedules a `RESUME` action to resume a paused or a deactivated subscription.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* subscriptionId = @"subscriptionId_example"; // The ID of the subscription to resume.
SQResumeSubscriptionRequest* body = [[SQResumeSubscriptionRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQSubscriptionsApi*apiInstance = [[SQSubscriptionsApi alloc] init];

// ResumeSubscription
[apiInstance resumeSubscriptionWithSubscriptionId:subscriptionId
              body:body
          completionHandler: ^(SQResumeSubscriptionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQSubscriptionsApi->resumeSubscription: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionId** | **NSString***| The ID of the subscription to resume. | 
 **body** | [**SQResumeSubscriptionRequest***](SQResumeSubscriptionRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQResumeSubscriptionResponse***](SQResumeSubscriptionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveSubscription**
```objc
-(NSURLSessionTask*) retrieveSubscriptionWithSubscriptionId: (NSString*) subscriptionId
    include: (NSString*) include
        completionHandler: (void (^)(SQRetrieveSubscriptionResponse* output, NSError* error)) handler;
```

RetrieveSubscription

Retrieves a specific subscription.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* subscriptionId = @"subscriptionId_example"; // The ID of the subscription to retrieve.
NSString* include = @"include_example"; // A query parameter to specify related information to be included in the response.   The supported query parameter values are:   - `actions`: to include scheduled actions on the targeted subscription. (optional)

SQSubscriptionsApi*apiInstance = [[SQSubscriptionsApi alloc] init];

// RetrieveSubscription
[apiInstance retrieveSubscriptionWithSubscriptionId:subscriptionId
              include:include
          completionHandler: ^(SQRetrieveSubscriptionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQSubscriptionsApi->retrieveSubscription: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionId** | **NSString***| The ID of the subscription to retrieve. | 
 **include** | **NSString***| A query parameter to specify related information to be included in the response.   The supported query parameter values are:   - &#x60;actions&#x60;: to include scheduled actions on the targeted subscription. | [optional] 

### Return type

[**SQRetrieveSubscriptionResponse***](SQRetrieveSubscriptionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchSubscriptions**
```objc
-(NSURLSessionTask*) searchSubscriptionsWithBody: (SQSearchSubscriptionsRequest*) body
        completionHandler: (void (^)(SQSearchSubscriptionsResponse* output, NSError* error)) handler;
```

SearchSubscriptions

Searches for subscriptions.  Results are ordered chronologically by subscription creation date. If the request specifies more than one location ID, the endpoint orders the result by location ID, and then by creation date within each location. If no locations are given in the query, all locations are searched.  You can also optionally specify `customer_ids` to search by customer. If left unset, all customers associated with the specified locations are returned. If the request specifies customer IDs, the endpoint orders results first by location, within location by customer ID, and within customer by subscription creation date.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQSearchSubscriptionsRequest* body = [[SQSearchSubscriptionsRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQSubscriptionsApi*apiInstance = [[SQSubscriptionsApi alloc] init];

// SearchSubscriptions
[apiInstance searchSubscriptionsWithBody:body
          completionHandler: ^(SQSearchSubscriptionsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQSubscriptionsApi->searchSubscriptions: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQSearchSubscriptionsRequest***](SQSearchSubscriptionsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQSearchSubscriptionsResponse***](SQSearchSubscriptionsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **swapPlan**
```objc
-(NSURLSessionTask*) swapPlanWithSubscriptionId: (NSString*) subscriptionId
    body: (SQSwapPlanRequest*) body
        completionHandler: (void (^)(SQSwapPlanResponse* output, NSError* error)) handler;
```

SwapPlan

Schedules a `SWAP_PLAN` action to swap a subscription plan variation in an existing subscription.  For more information, see [Swap Subscription Plan Variations](https://developer.squareup.com/docs/subscriptions-api/swap-plan-variations).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* subscriptionId = @"subscriptionId_example"; // The ID of the subscription to swap the subscription plan for.
SQSwapPlanRequest* body = [[SQSwapPlanRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQSubscriptionsApi*apiInstance = [[SQSubscriptionsApi alloc] init];

// SwapPlan
[apiInstance swapPlanWithSubscriptionId:subscriptionId
              body:body
          completionHandler: ^(SQSwapPlanResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQSubscriptionsApi->swapPlan: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionId** | **NSString***| The ID of the subscription to swap the subscription plan for. | 
 **body** | [**SQSwapPlanRequest***](SQSwapPlanRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQSwapPlanResponse***](SQSwapPlanResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSubscription**
```objc
-(NSURLSessionTask*) updateSubscriptionWithSubscriptionId: (NSString*) subscriptionId
    body: (SQUpdateSubscriptionRequest*) body
        completionHandler: (void (^)(SQUpdateSubscriptionResponse* output, NSError* error)) handler;
```

UpdateSubscription

Updates a subscription by modifying or clearing `subscription` field values. To clear a field, set its value to `null`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* subscriptionId = @"subscriptionId_example"; // The ID of the subscription to update.
SQUpdateSubscriptionRequest* body = [[SQUpdateSubscriptionRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQSubscriptionsApi*apiInstance = [[SQSubscriptionsApi alloc] init];

// UpdateSubscription
[apiInstance updateSubscriptionWithSubscriptionId:subscriptionId
              body:body
          completionHandler: ^(SQUpdateSubscriptionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQSubscriptionsApi->updateSubscription: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionId** | **NSString***| The ID of the subscription to update. | 
 **body** | [**SQUpdateSubscriptionRequest***](SQUpdateSubscriptionRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpdateSubscriptionResponse***](SQUpdateSubscriptionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

