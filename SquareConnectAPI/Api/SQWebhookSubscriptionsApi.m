#import "SQWebhookSubscriptionsApi.h"
#import "SQQueryParamCollection.h"
#import "SQApiClient.h"
#import "SQCreateWebhookSubscriptionRequest.h"
#import "SQCreateWebhookSubscriptionResponse.h"
#import "SQDeleteWebhookSubscriptionResponse.h"
#import "SQListWebhookEventTypesResponse.h"
#import "SQListWebhookSubscriptionsResponse.h"
#import "SQRetrieveWebhookSubscriptionResponse.h"
#import "SQTestWebhookSubscriptionRequest.h"
#import "SQTestWebhookSubscriptionResponse.h"
#import "SQUpdateWebhookSubscriptionRequest.h"
#import "SQUpdateWebhookSubscriptionResponse.h"
#import "SQUpdateWebhookSubscriptionSignatureKeyRequest.h"
#import "SQUpdateWebhookSubscriptionSignatureKeyResponse.h"


@interface SQWebhookSubscriptionsApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SQWebhookSubscriptionsApi

NSString* kSQWebhookSubscriptionsApiErrorDomain = @"SQWebhookSubscriptionsApiErrorDomain";
NSInteger kSQWebhookSubscriptionsApiMissingParamErrorCode = 234513;

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
/// CreateWebhookSubscription
/// Creates a webhook subscription.
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQCreateWebhookSubscriptionResponse*
///
-(NSURLSessionTask*) createWebhookSubscriptionWithBody: (SQCreateWebhookSubscriptionRequest*) body
    completionHandler: (void (^)(SQCreateWebhookSubscriptionResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQWebhookSubscriptionsApiErrorDomain code:kSQWebhookSubscriptionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/webhooks/subscriptions"];

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
                              responseType: @"SQCreateWebhookSubscriptionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQCreateWebhookSubscriptionResponse*)data, error);
                                }
                            }];
}

///
/// DeleteWebhookSubscription
/// Deletes a webhook subscription.
///  @param subscriptionId [REQUIRED] The ID of the [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription) to delete. 
///
///  @returns SQDeleteWebhookSubscriptionResponse*
///
-(NSURLSessionTask*) deleteWebhookSubscriptionWithSubscriptionId: (NSString*) subscriptionId
    completionHandler: (void (^)(SQDeleteWebhookSubscriptionResponse* output, NSError* error)) handler {
    // verify the required parameter 'subscriptionId' is set
    if (subscriptionId == nil) {
        NSParameterAssert(subscriptionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"subscriptionId"] };
            NSError* error = [NSError errorWithDomain:kSQWebhookSubscriptionsApiErrorDomain code:kSQWebhookSubscriptionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/webhooks/subscriptions/{subscription_id}"];

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
                              responseType: @"SQDeleteWebhookSubscriptionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQDeleteWebhookSubscriptionResponse*)data, error);
                                }
                            }];
}

///
/// ListWebhookEventTypes
/// Lists all webhook event types that can be subscribed to.
///  @param apiVersion The API version for which to list event types. Setting this field overrides the default version used by the application. (optional)
///
///  @returns SQListWebhookEventTypesResponse*
///
-(NSURLSessionTask*) listWebhookEventTypesWithApiVersion: (NSString*) apiVersion
    completionHandler: (void (^)(SQListWebhookEventTypesResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/webhooks/event-types"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (apiVersion != nil) {
        queryParams[@"api_version"] = apiVersion;
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
                              responseType: @"SQListWebhookEventTypesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQListWebhookEventTypesResponse*)data, error);
                                }
                            }];
}

///
/// ListWebhookSubscriptions
/// Lists all webhook subscriptions owned by your application.
///  @param cursor A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
///
///  @param includeDisabled Includes disabled [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription)s. By default, all enabled [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription)s are returned. (optional)
///
///  @param sortOrder Sorts the returned list by when the [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription) was created with the specified order. This field defaults to ASC. (optional)
///
///  @param limit The maximum number of results to be returned in a single page. It is possible to receive fewer results than the specified limit on a given page. The default value of 100 is also the maximum allowed value.  Default: 100 (optional)
///
///  @returns SQListWebhookSubscriptionsResponse*
///
-(NSURLSessionTask*) listWebhookSubscriptionsWithCursor: (NSString*) cursor
    includeDisabled: (NSNumber*) includeDisabled
    sortOrder: (NSString*) sortOrder
    limit: (NSNumber*) limit
    completionHandler: (void (^)(SQListWebhookSubscriptionsResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/webhooks/subscriptions"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (cursor != nil) {
        queryParams[@"cursor"] = cursor;
    }
    if (includeDisabled != nil) {
        queryParams[@"include_disabled"] = [includeDisabled isEqual:@(YES)] ? @"true" : @"false";
    }
    if (sortOrder != nil) {
        queryParams[@"sort_order"] = sortOrder;
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
                              responseType: @"SQListWebhookSubscriptionsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQListWebhookSubscriptionsResponse*)data, error);
                                }
                            }];
}

///
/// RetrieveWebhookSubscription
/// Retrieves a webhook subscription identified by its ID.
///  @param subscriptionId [REQUIRED] The ID of the [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription) to retrieve. 
///
///  @returns SQRetrieveWebhookSubscriptionResponse*
///
-(NSURLSessionTask*) retrieveWebhookSubscriptionWithSubscriptionId: (NSString*) subscriptionId
    completionHandler: (void (^)(SQRetrieveWebhookSubscriptionResponse* output, NSError* error)) handler {
    // verify the required parameter 'subscriptionId' is set
    if (subscriptionId == nil) {
        NSParameterAssert(subscriptionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"subscriptionId"] };
            NSError* error = [NSError errorWithDomain:kSQWebhookSubscriptionsApiErrorDomain code:kSQWebhookSubscriptionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/webhooks/subscriptions/{subscription_id}"];

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
                              responseType: @"SQRetrieveWebhookSubscriptionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQRetrieveWebhookSubscriptionResponse*)data, error);
                                }
                            }];
}

///
/// TestWebhookSubscription
/// Tests a webhook subscription by sending a test event to the notification URL.
///  @param subscriptionId [REQUIRED] The ID of the [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription) to test. 
///
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQTestWebhookSubscriptionResponse*
///
-(NSURLSessionTask*) testWebhookSubscriptionWithSubscriptionId: (NSString*) subscriptionId
    body: (SQTestWebhookSubscriptionRequest*) body
    completionHandler: (void (^)(SQTestWebhookSubscriptionResponse* output, NSError* error)) handler {
    // verify the required parameter 'subscriptionId' is set
    if (subscriptionId == nil) {
        NSParameterAssert(subscriptionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"subscriptionId"] };
            NSError* error = [NSError errorWithDomain:kSQWebhookSubscriptionsApiErrorDomain code:kSQWebhookSubscriptionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQWebhookSubscriptionsApiErrorDomain code:kSQWebhookSubscriptionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/webhooks/subscriptions/{subscription_id}/test"];

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
                              responseType: @"SQTestWebhookSubscriptionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQTestWebhookSubscriptionResponse*)data, error);
                                }
                            }];
}

///
/// UpdateWebhookSubscription
/// Updates a webhook subscription.
///  @param subscriptionId [REQUIRED] The ID of the [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription) to update. 
///
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQUpdateWebhookSubscriptionResponse*
///
-(NSURLSessionTask*) updateWebhookSubscriptionWithSubscriptionId: (NSString*) subscriptionId
    body: (SQUpdateWebhookSubscriptionRequest*) body
    completionHandler: (void (^)(SQUpdateWebhookSubscriptionResponse* output, NSError* error)) handler {
    // verify the required parameter 'subscriptionId' is set
    if (subscriptionId == nil) {
        NSParameterAssert(subscriptionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"subscriptionId"] };
            NSError* error = [NSError errorWithDomain:kSQWebhookSubscriptionsApiErrorDomain code:kSQWebhookSubscriptionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQWebhookSubscriptionsApiErrorDomain code:kSQWebhookSubscriptionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/webhooks/subscriptions/{subscription_id}"];

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
                              responseType: @"SQUpdateWebhookSubscriptionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQUpdateWebhookSubscriptionResponse*)data, error);
                                }
                            }];
}

///
/// UpdateWebhookSubscriptionSignatureKey
/// Updates a webhook subscription by replacing the existing signature key with a new one.
///  @param subscriptionId [REQUIRED] The ID of the [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription) to update. 
///
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQUpdateWebhookSubscriptionSignatureKeyResponse*
///
-(NSURLSessionTask*) updateWebhookSubscriptionSignatureKeyWithSubscriptionId: (NSString*) subscriptionId
    body: (SQUpdateWebhookSubscriptionSignatureKeyRequest*) body
    completionHandler: (void (^)(SQUpdateWebhookSubscriptionSignatureKeyResponse* output, NSError* error)) handler {
    // verify the required parameter 'subscriptionId' is set
    if (subscriptionId == nil) {
        NSParameterAssert(subscriptionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"subscriptionId"] };
            NSError* error = [NSError errorWithDomain:kSQWebhookSubscriptionsApiErrorDomain code:kSQWebhookSubscriptionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQWebhookSubscriptionsApiErrorDomain code:kSQWebhookSubscriptionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/webhooks/subscriptions/{subscription_id}/signature-key"];

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
                              responseType: @"SQUpdateWebhookSubscriptionSignatureKeyResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQUpdateWebhookSubscriptionSignatureKeyResponse*)data, error);
                                }
                            }];
}



@end
