#import "SQPaymentsApi.h"
#import "SQQueryParamCollection.h"
#import "SQApiClient.h"
#import "SQCancelPaymentByIdempotencyKeyRequest.h"
#import "SQCancelPaymentByIdempotencyKeyResponse.h"
#import "SQCancelPaymentResponse.h"
#import "SQCompletePaymentRequest.h"
#import "SQCompletePaymentResponse.h"
#import "SQCreatePaymentRequest.h"
#import "SQCreatePaymentResponse.h"
#import "SQGetPaymentResponse.h"
#import "SQListPaymentsResponse.h"
#import "SQUpdatePaymentRequest.h"
#import "SQUpdatePaymentResponse.h"


@interface SQPaymentsApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SQPaymentsApi

NSString* kSQPaymentsApiErrorDomain = @"SQPaymentsApiErrorDomain";
NSInteger kSQPaymentsApiMissingParamErrorCode = 234513;

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
/// CancelPayment
/// Cancels (voids) a payment. You can use this endpoint to cancel a payment with  the APPROVED `status`.
///  @param paymentId The ID of the payment to cancel. 
///
///  @returns SQCancelPaymentResponse*
///
-(NSURLSessionTask*) cancelPaymentWithPaymentId: (NSString*) paymentId
    completionHandler: (void (^)(SQCancelPaymentResponse* output, NSError* error)) handler {
    // verify the required parameter 'paymentId' is set
    if (paymentId == nil) {
        NSParameterAssert(paymentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"paymentId"] };
            NSError* error = [NSError errorWithDomain:kSQPaymentsApiErrorDomain code:kSQPaymentsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/payments/{payment_id}/cancel"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (paymentId != nil) {
        pathParams[@"payment_id"] = paymentId;
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
                              responseType: @"SQCancelPaymentResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQCancelPaymentResponse*)data, error);
                                }
                            }];
}

///
/// CancelPaymentByIdempotencyKey
/// Cancels (voids) a payment identified by the idempotency key that is specified in the request.  Use this method when the status of a `CreatePayment` request is unknown (for example, after you send a `CreatePayment` request, a network error occurs and you do not get a response). In this case, you can direct Square to cancel the payment using this endpoint. In the request, you provide the same idempotency key that you provided in your `CreatePayment` request that you want to cancel. After canceling the payment, you can submit your `CreatePayment` request again.  Note that if no payment with the specified idempotency key is found, no action is taken and the endpoint returns successfully.
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQCancelPaymentByIdempotencyKeyResponse*
///
-(NSURLSessionTask*) cancelPaymentByIdempotencyKeyWithBody: (SQCancelPaymentByIdempotencyKeyRequest*) body
    completionHandler: (void (^)(SQCancelPaymentByIdempotencyKeyResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQPaymentsApiErrorDomain code:kSQPaymentsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/payments/cancel"];

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
                              responseType: @"SQCancelPaymentByIdempotencyKeyResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQCancelPaymentByIdempotencyKeyResponse*)data, error);
                                }
                            }];
}

///
/// CompletePayment
/// Completes (captures) a payment. By default, payments are set to complete immediately after they are created.  You can use this endpoint to complete a payment with the APPROVED `status`.
///  @param paymentId The unique ID identifying the payment to be completed. 
///
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQCompletePaymentResponse*
///
-(NSURLSessionTask*) completePaymentWithPaymentId: (NSString*) paymentId
    body: (SQCompletePaymentRequest*) body
    completionHandler: (void (^)(SQCompletePaymentResponse* output, NSError* error)) handler {
    // verify the required parameter 'paymentId' is set
    if (paymentId == nil) {
        NSParameterAssert(paymentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"paymentId"] };
            NSError* error = [NSError errorWithDomain:kSQPaymentsApiErrorDomain code:kSQPaymentsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQPaymentsApiErrorDomain code:kSQPaymentsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/payments/{payment_id}/complete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (paymentId != nil) {
        pathParams[@"payment_id"] = paymentId;
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
                              responseType: @"SQCompletePaymentResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQCompletePaymentResponse*)data, error);
                                }
                            }];
}

///
/// CreatePayment
/// Creates a payment using the provided source. You can use this endpoint  to charge a card (credit/debit card or     Square gift card) or record a payment that the seller received outside of Square  (cash payment from a buyer or a payment that an external entity  processed on behalf of the seller).  The endpoint creates a  `Payment` object and returns it in the response.
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQCreatePaymentResponse*
///
-(NSURLSessionTask*) createPaymentWithBody: (SQCreatePaymentRequest*) body
    completionHandler: (void (^)(SQCreatePaymentResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQPaymentsApiErrorDomain code:kSQPaymentsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/payments"];

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
                              responseType: @"SQCreatePaymentResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQCreatePaymentResponse*)data, error);
                                }
                            }];
}

///
/// GetPayment
/// Retrieves details for a specific payment.
///  @param paymentId A unique ID for the desired payment. 
///
///  @returns SQGetPaymentResponse*
///
-(NSURLSessionTask*) getPaymentWithPaymentId: (NSString*) paymentId
    completionHandler: (void (^)(SQGetPaymentResponse* output, NSError* error)) handler {
    // verify the required parameter 'paymentId' is set
    if (paymentId == nil) {
        NSParameterAssert(paymentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"paymentId"] };
            NSError* error = [NSError errorWithDomain:kSQPaymentsApiErrorDomain code:kSQPaymentsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/payments/{payment_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (paymentId != nil) {
        pathParams[@"payment_id"] = paymentId;
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
                              responseType: @"SQGetPaymentResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQGetPaymentResponse*)data, error);
                                }
                            }];
}

///
/// ListPayments
/// Retrieves a list of payments taken by the account making the request.  Results are eventually consistent, and new payments or changes to payments might take several seconds to appear.  The maximum results per page is 100.
///  @param beginTime Indicates the start of the time range to retrieve payments for, in RFC 3339 format.   The range is determined using the `created_at` field for each Payment. Inclusive. Default: The current time minus one year. (optional)
///
///  @param endTime Indicates the end of the time range to retrieve payments for, in RFC 3339 format.  The  range is determined using the `created_at` field for each Payment.  Default: The current time. (optional)
///
///  @param sortOrder The order in which results are listed by `Payment.created_at`: - `ASC` - Oldest to newest. - `DESC` - Newest to oldest (default). (optional)
///
///  @param cursor A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
///
///  @param locationId Limit results to the location supplied. By default, results are returned for the default (main) location associated with the seller. (optional)
///
///  @param total The exact amount in the `total_money` for a payment. (optional)
///
///  @param last4 The last four digits of a payment card. (optional)
///
///  @param cardBrand The brand of the payment card (for example, VISA). (optional)
///
///  @param limit The maximum number of results to be returned in a single page. It is possible to receive fewer results than the specified limit on a given page.  The default value of 100 is also the maximum allowed value. If the provided value is  greater than 100, it is ignored and the default value is used instead.  Default: `100` (optional)
///
///  @returns SQListPaymentsResponse*
///
-(NSURLSessionTask*) listPaymentsWithBeginTime: (NSString*) beginTime
    endTime: (NSString*) endTime
    sortOrder: (NSString*) sortOrder
    cursor: (NSString*) cursor
    locationId: (NSString*) locationId
    total: (NSNumber*) total
    last4: (NSString*) last4
    cardBrand: (NSString*) cardBrand
    limit: (NSNumber*) limit
    completionHandler: (void (^)(SQListPaymentsResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/payments"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (beginTime != nil) {
        queryParams[@"begin_time"] = beginTime;
    }
    if (endTime != nil) {
        queryParams[@"end_time"] = endTime;
    }
    if (sortOrder != nil) {
        queryParams[@"sort_order"] = sortOrder;
    }
    if (cursor != nil) {
        queryParams[@"cursor"] = cursor;
    }
    if (locationId != nil) {
        queryParams[@"location_id"] = locationId;
    }
    if (total != nil) {
        queryParams[@"total"] = total;
    }
    if (last4 != nil) {
        queryParams[@"last_4"] = last4;
    }
    if (cardBrand != nil) {
        queryParams[@"card_brand"] = cardBrand;
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
                              responseType: @"SQListPaymentsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQListPaymentsResponse*)data, error);
                                }
                            }];
}

///
/// UpdatePayment
/// Updates a payment with the APPROVED status. You can update the `amount_money` and `tip_money` using this endpoint.
///  @param paymentId The ID of the payment to update. 
///
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQUpdatePaymentResponse*
///
-(NSURLSessionTask*) updatePaymentWithPaymentId: (NSString*) paymentId
    body: (SQUpdatePaymentRequest*) body
    completionHandler: (void (^)(SQUpdatePaymentResponse* output, NSError* error)) handler {
    // verify the required parameter 'paymentId' is set
    if (paymentId == nil) {
        NSParameterAssert(paymentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"paymentId"] };
            NSError* error = [NSError errorWithDomain:kSQPaymentsApiErrorDomain code:kSQPaymentsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQPaymentsApiErrorDomain code:kSQPaymentsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/payments/{payment_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (paymentId != nil) {
        pathParams[@"payment_id"] = paymentId;
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
                              responseType: @"SQUpdatePaymentResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQUpdatePaymentResponse*)data, error);
                                }
                            }];
}



@end
