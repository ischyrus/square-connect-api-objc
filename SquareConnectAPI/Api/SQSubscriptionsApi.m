#import "SQSubscriptionsApi.h"
#import "SQQueryParamCollection.h"
#import "SQApiClient.h"
#import "SQBulkSwapPlanRequest.h"
#import "SQBulkSwapPlanResponse.h"
#import "SQCancelSubscriptionResponse.h"
#import "SQChangeBillingAnchorDateRequest.h"
#import "SQChangeBillingAnchorDateResponse.h"
#import "SQCreateSubscriptionRequest.h"
#import "SQCreateSubscriptionResponse.h"
#import "SQDeleteSubscriptionActionResponse.h"
#import "SQListSubscriptionEventsResponse.h"
#import "SQPauseSubscriptionRequest.h"
#import "SQPauseSubscriptionResponse.h"
#import "SQResumeSubscriptionRequest.h"
#import "SQResumeSubscriptionResponse.h"
#import "SQRetrieveSubscriptionResponse.h"
#import "SQSearchSubscriptionsRequest.h"
#import "SQSearchSubscriptionsResponse.h"
#import "SQSwapPlanRequest.h"
#import "SQSwapPlanResponse.h"
#import "SQUpdateSubscriptionRequest.h"
#import "SQUpdateSubscriptionResponse.h"


@interface SQSubscriptionsApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SQSubscriptionsApi

NSString* kSQSubscriptionsApiErrorDomain = @"SQSubscriptionsApiErrorDomain";
NSInteger kSQSubscriptionsApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[SQApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(SQApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// BulkSwapPlan
/// Schedules a plan variation change for all active subscriptions under a given plan variation. For more information, see [Swap Subscription Plan Variations](https://developer.squareup.com/docs/subscriptions-api/swap-plan-variations).
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQBulkSwapPlanResponse*
///
-(NSURLSessionTask*) bulkSwapPlanWithBody: (SQBulkSwapPlanRequest*) body
    completionHandler: (void (^)(SQBulkSwapPlanResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQSubscriptionsApiErrorDomain code:kSQSubscriptionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/subscriptions/bulk-swap-plan"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SQBulkSwapPlanResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQBulkSwapPlanResponse*)data, error);
                                }
                            }];
}

///
/// CancelSubscription
/// Schedules a `CANCEL` action to cancel an active subscription. This  sets the `canceled_date` field to the end of the active billing period. After this date,  the subscription status changes from ACTIVE to CANCELED.
///  @param subscriptionId The ID of the subscription to cancel. 
///
///  @returns SQCancelSubscriptionResponse*
///
-(NSURLSessionTask*) cancelSubscriptionWithSubscriptionId: (NSString*) subscriptionId
    completionHandler: (void (^)(SQCancelSubscriptionResponse* output, NSError* error)) handler {
    // verify the required parameter 'subscriptionId' is set
    if (subscriptionId == nil) {
        NSParameterAssert(subscriptionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"subscriptionId"] };
            NSError* error = [NSError errorWithDomain:kSQSubscriptionsApiErrorDomain code:kSQSubscriptionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/subscriptions/{subscription_id}/cancel"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (subscriptionId != nil) {
        pathParams[@"subscription_id"] = subscriptionId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SQCancelSubscriptionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQCancelSubscriptionResponse*)data, error);
                                }
                            }];
}

///
/// ChangeBillingAnchorDate
/// Changes the [billing anchor date](https://developer.squareup.com/docs/subscriptions-api/subscription-billing#billing-dates) for a subscription.
///  @param subscriptionId The ID of the subscription to update the billing anchor date. 
///
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQChangeBillingAnchorDateResponse*
///
-(NSURLSessionTask*) changeBillingAnchorDateWithSubscriptionId: (NSString*) subscriptionId
    body: (SQChangeBillingAnchorDateRequest*) body
    completionHandler: (void (^)(SQChangeBillingAnchorDateResponse* output, NSError* error)) handler {
    // verify the required parameter 'subscriptionId' is set
    if (subscriptionId == nil) {
        NSParameterAssert(subscriptionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"subscriptionId"] };
            NSError* error = [NSError errorWithDomain:kSQSubscriptionsApiErrorDomain code:kSQSubscriptionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQSubscriptionsApiErrorDomain code:kSQSubscriptionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/subscriptions/{subscription_id}/billing-anchor"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (subscriptionId != nil) {
        pathParams[@"subscription_id"] = subscriptionId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SQChangeBillingAnchorDateResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQChangeBillingAnchorDateResponse*)data, error);
                                }
                            }];
}

///
/// CreateSubscription
/// Enrolls a customer in a subscription.  If you provide a card on file in the request, Square charges the card for the subscription. Otherwise, Square sends an invoice to the customer's email address. The subscription starts immediately, unless the request includes the optional `start_date`. Each individual subscription is associated with a particular location.  For more information, see [Create a subscription](https://developer.squareup.com/docs/subscriptions-api/manage-subscriptions#create-a-subscription).
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQCreateSubscriptionResponse*
///
-(NSURLSessionTask*) createSubscriptionWithBody: (SQCreateSubscriptionRequest*) body
    completionHandler: (void (^)(SQCreateSubscriptionResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQSubscriptionsApiErrorDomain code:kSQSubscriptionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/subscriptions"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SQCreateSubscriptionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQCreateSubscriptionResponse*)data, error);
                                }
                            }];
}

///
/// DeleteSubscriptionAction
/// Deletes a scheduled action for a subscription.
///  @param subscriptionId The ID of the subscription the targeted action is to act upon. 
///
///  @param actionId The ID of the targeted action to be deleted. 
///
///  @returns SQDeleteSubscriptionActionResponse*
///
-(NSURLSessionTask*) deleteSubscriptionActionWithSubscriptionId: (NSString*) subscriptionId
    actionId: (NSString*) actionId
    completionHandler: (void (^)(SQDeleteSubscriptionActionResponse* output, NSError* error)) handler {
    // verify the required parameter 'subscriptionId' is set
    if (subscriptionId == nil) {
        NSParameterAssert(subscriptionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"subscriptionId"] };
            NSError* error = [NSError errorWithDomain:kSQSubscriptionsApiErrorDomain code:kSQSubscriptionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'actionId' is set
    if (actionId == nil) {
        NSParameterAssert(actionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"actionId"] };
            NSError* error = [NSError errorWithDomain:kSQSubscriptionsApiErrorDomain code:kSQSubscriptionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/subscriptions/{subscription_id}/actions/{action_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (subscriptionId != nil) {
        pathParams[@"subscription_id"] = subscriptionId;
    }
    if (actionId != nil) {
        pathParams[@"action_id"] = actionId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SQDeleteSubscriptionActionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQDeleteSubscriptionActionResponse*)data, error);
                                }
                            }];
}

///
/// ListSubscriptionEvents
/// Lists all [events](https://developer.squareup.com/docs/subscriptions-api/actions-events) for a specific subscription.
///  @param subscriptionId The ID of the subscription to retrieve the events for. 
///
///  @param cursor When the total number of resulting subscription events exceeds the limit of a paged response,  specify the cursor returned from a preceding response here to fetch the next set of results. If the cursor is unset, the response contains the last page of the results.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
///
///  @param limit The upper limit on the number of subscription events to return in a paged response. (optional)
///
///  @returns SQListSubscriptionEventsResponse*
///
-(NSURLSessionTask*) listSubscriptionEventsWithSubscriptionId: (NSString*) subscriptionId
    cursor: (NSString*) cursor
    limit: (NSNumber*) limit
    completionHandler: (void (^)(SQListSubscriptionEventsResponse* output, NSError* error)) handler {
    // verify the required parameter 'subscriptionId' is set
    if (subscriptionId == nil) {
        NSParameterAssert(subscriptionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"subscriptionId"] };
            NSError* error = [NSError errorWithDomain:kSQSubscriptionsApiErrorDomain code:kSQSubscriptionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/subscriptions/{subscription_id}/events"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (subscriptionId != nil) {
        pathParams[@"subscription_id"] = subscriptionId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (cursor != nil) {
        queryParams[@"cursor"] = cursor;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SQListSubscriptionEventsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQListSubscriptionEventsResponse*)data, error);
                                }
                            }];
}

///
/// PauseSubscription
/// Schedules a `PAUSE` action to pause an active subscription.
///  @param subscriptionId The ID of the subscription to pause. 
///
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQPauseSubscriptionResponse*
///
-(NSURLSessionTask*) pauseSubscriptionWithSubscriptionId: (NSString*) subscriptionId
    body: (SQPauseSubscriptionRequest*) body
    completionHandler: (void (^)(SQPauseSubscriptionResponse* output, NSError* error)) handler {
    // verify the required parameter 'subscriptionId' is set
    if (subscriptionId == nil) {
        NSParameterAssert(subscriptionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"subscriptionId"] };
            NSError* error = [NSError errorWithDomain:kSQSubscriptionsApiErrorDomain code:kSQSubscriptionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQSubscriptionsApiErrorDomain code:kSQSubscriptionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/subscriptions/{subscription_id}/pause"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (subscriptionId != nil) {
        pathParams[@"subscription_id"] = subscriptionId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SQPauseSubscriptionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQPauseSubscriptionResponse*)data, error);
                                }
                            }];
}

///
/// ResumeSubscription
/// Schedules a `RESUME` action to resume a paused or a deactivated subscription.
///  @param subscriptionId The ID of the subscription to resume. 
///
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQResumeSubscriptionResponse*
///
-(NSURLSessionTask*) resumeSubscriptionWithSubscriptionId: (NSString*) subscriptionId
    body: (SQResumeSubscriptionRequest*) body
    completionHandler: (void (^)(SQResumeSubscriptionResponse* output, NSError* error)) handler {
    // verify the required parameter 'subscriptionId' is set
    if (subscriptionId == nil) {
        NSParameterAssert(subscriptionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"subscriptionId"] };
            NSError* error = [NSError errorWithDomain:kSQSubscriptionsApiErrorDomain code:kSQSubscriptionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQSubscriptionsApiErrorDomain code:kSQSubscriptionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/subscriptions/{subscription_id}/resume"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (subscriptionId != nil) {
        pathParams[@"subscription_id"] = subscriptionId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SQResumeSubscriptionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQResumeSubscriptionResponse*)data, error);
                                }
                            }];
}

///
/// RetrieveSubscription
/// Retrieves a specific subscription.
///  @param subscriptionId The ID of the subscription to retrieve. 
///
///  @param include A query parameter to specify related information to be included in the response.   The supported query parameter values are:   - `actions`: to include scheduled actions on the targeted subscription. (optional)
///
///  @returns SQRetrieveSubscriptionResponse*
///
-(NSURLSessionTask*) retrieveSubscriptionWithSubscriptionId: (NSString*) subscriptionId
    include: (NSString*) include
    completionHandler: (void (^)(SQRetrieveSubscriptionResponse* output, NSError* error)) handler {
    // verify the required parameter 'subscriptionId' is set
    if (subscriptionId == nil) {
        NSParameterAssert(subscriptionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"subscriptionId"] };
            NSError* error = [NSError errorWithDomain:kSQSubscriptionsApiErrorDomain code:kSQSubscriptionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/subscriptions/{subscription_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (subscriptionId != nil) {
        pathParams[@"subscription_id"] = subscriptionId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (include != nil) {
        queryParams[@"include"] = include;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SQRetrieveSubscriptionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQRetrieveSubscriptionResponse*)data, error);
                                }
                            }];
}

///
/// SearchSubscriptions
/// Searches for subscriptions.  Results are ordered chronologically by subscription creation date. If the request specifies more than one location ID, the endpoint orders the result by location ID, and then by creation date within each location. If no locations are given in the query, all locations are searched.  You can also optionally specify `customer_ids` to search by customer. If left unset, all customers associated with the specified locations are returned. If the request specifies customer IDs, the endpoint orders results first by location, within location by customer ID, and within customer by subscription creation date.
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQSearchSubscriptionsResponse*
///
-(NSURLSessionTask*) searchSubscriptionsWithBody: (SQSearchSubscriptionsRequest*) body
    completionHandler: (void (^)(SQSearchSubscriptionsResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQSubscriptionsApiErrorDomain code:kSQSubscriptionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/subscriptions/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SQSearchSubscriptionsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQSearchSubscriptionsResponse*)data, error);
                                }
                            }];
}

///
/// SwapPlan
/// Schedules a `SWAP_PLAN` action to swap a subscription plan variation in an existing subscription.  For more information, see [Swap Subscription Plan Variations](https://developer.squareup.com/docs/subscriptions-api/swap-plan-variations).
///  @param subscriptionId The ID of the subscription to swap the subscription plan for. 
///
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQSwapPlanResponse*
///
-(NSURLSessionTask*) swapPlanWithSubscriptionId: (NSString*) subscriptionId
    body: (SQSwapPlanRequest*) body
    completionHandler: (void (^)(SQSwapPlanResponse* output, NSError* error)) handler {
    // verify the required parameter 'subscriptionId' is set
    if (subscriptionId == nil) {
        NSParameterAssert(subscriptionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"subscriptionId"] };
            NSError* error = [NSError errorWithDomain:kSQSubscriptionsApiErrorDomain code:kSQSubscriptionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQSubscriptionsApiErrorDomain code:kSQSubscriptionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/subscriptions/{subscription_id}/swap-plan"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (subscriptionId != nil) {
        pathParams[@"subscription_id"] = subscriptionId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SQSwapPlanResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQSwapPlanResponse*)data, error);
                                }
                            }];
}

///
/// UpdateSubscription
/// Updates a subscription by modifying or clearing `subscription` field values. To clear a field, set its value to `null`.
///  @param subscriptionId The ID of the subscription to update. 
///
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQUpdateSubscriptionResponse*
///
-(NSURLSessionTask*) updateSubscriptionWithSubscriptionId: (NSString*) subscriptionId
    body: (SQUpdateSubscriptionRequest*) body
    completionHandler: (void (^)(SQUpdateSubscriptionResponse* output, NSError* error)) handler {
    // verify the required parameter 'subscriptionId' is set
    if (subscriptionId == nil) {
        NSParameterAssert(subscriptionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"subscriptionId"] };
            NSError* error = [NSError errorWithDomain:kSQSubscriptionsApiErrorDomain code:kSQSubscriptionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQSubscriptionsApiErrorDomain code:kSQSubscriptionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/subscriptions/{subscription_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (subscriptionId != nil) {
        pathParams[@"subscription_id"] = subscriptionId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SQUpdateSubscriptionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQUpdateSubscriptionResponse*)data, error);
                                }
                            }];
}



@end
