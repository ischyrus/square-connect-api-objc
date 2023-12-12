#import "SQV1TransactionsApi.h"
#import "SQQueryParamCollection.h"
#import "SQApiClient.h"
#import "SQV1CreateRefundRequest.h"
#import "SQV1Order.h"
#import "SQV1Payment.h"
#import "SQV1Refund.h"
#import "SQV1Settlement.h"
#import "SQV1UpdateOrderRequest.h"


@interface SQV1TransactionsApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SQV1TransactionsApi

NSString* kSQV1TransactionsApiErrorDomain = @"SQV1TransactionsApiErrorDomain";
NSInteger kSQV1TransactionsApiMissingParamErrorCode = 234513;

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
/// V1CreateRefund
/// Issues a refund for a previously processed payment. You must issue a refund within 60 days of the associated payment.  You cannot issue a partial refund for a split tender payment. You must instead issue a full or partial refund for a particular tender, by providing the applicable tender id to the V1CreateRefund endpoint. Issuing a full refund for a split tender payment refunds all tenders associated with the payment.  Issuing a refund for a card payment is not reversible. For development purposes, you can create fake cash payments in Square Point of Sale and refund them.
///  @param locationId The ID of the original payment's associated location. 
///
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQV1Refund*
///
-(NSURLSessionTask*) v1CreateRefundWithLocationId: (NSString*) locationId
    body: (SQV1CreateRefundRequest*) body
    completionHandler: (void (^)(SQV1Refund* output, NSError* error)) handler {
    // verify the required parameter 'locationId' is set
    if (locationId == nil) {
        NSParameterAssert(locationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"locationId"] };
            NSError* error = [NSError errorWithDomain:kSQV1TransactionsApiErrorDomain code:kSQV1TransactionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQV1TransactionsApiErrorDomain code:kSQV1TransactionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/{location_id}/refunds"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (locationId != nil) {
        pathParams[@"location_id"] = locationId;
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
                              responseType: @"SQV1Refund*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQV1Refund*)data, error);
                                }
                            }];
}

///
/// V1ListOrders
/// Provides summary information for a merchant's online store orders.
///  @param locationId The ID of the location to list online store orders for. 
///
///  @param order The order in which payments are listed in the response. (optional)
///
///  @param limit The maximum number of payments to return in a single response. This value cannot exceed 200. (optional)
///
///  @param batchToken A pagination cursor to retrieve the next set of results for your original query to the endpoint. (optional)
///
///  @returns NSArray<SQV1Order>*
///
-(NSURLSessionTask*) v1ListOrdersWithLocationId: (NSString*) locationId
    order: (NSString*) order
    limit: (NSNumber*) limit
    batchToken: (NSString*) batchToken
    completionHandler: (void (^)(NSArray<SQV1Order>* output, NSError* error)) handler {
    // verify the required parameter 'locationId' is set
    if (locationId == nil) {
        NSParameterAssert(locationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"locationId"] };
            NSError* error = [NSError errorWithDomain:kSQV1TransactionsApiErrorDomain code:kSQV1TransactionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/{location_id}/orders"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (locationId != nil) {
        pathParams[@"location_id"] = locationId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (order != nil) {
        queryParams[@"order"] = order;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (batchToken != nil) {
        queryParams[@"batch_token"] = batchToken;
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
                              responseType: @"NSArray<SQV1Order>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SQV1Order>*)data, error);
                                }
                            }];
}

///
/// V1ListPayments
/// Provides summary information for all payments taken for a given Square account during a date range. Date ranges cannot exceed 1 year in length. See Date ranges for details of inclusive and exclusive dates.  *Note**: Details for payments processed with Square Point of Sale while in offline mode may not be transmitted to Square for up to 72 hours. Offline payments have a `created_at` value that reflects the time the payment was originally processed, not the time it was subsequently transmitted to Square. Consequently, the ListPayments endpoint might list an offline payment chronologically between online payments that were seen in a previous request.
///  @param locationId The ID of the location to list payments for. If you specify me, this endpoint returns payments aggregated from all of the business's locations. 
///
///  @param order The order in which payments are listed in the response. (optional)
///
///  @param beginTime The beginning of the requested reporting period, in ISO 8601 format. If this value is before January 1, 2013 (2013-01-01T00:00:00Z), this endpoint returns an error. Default value: The current time minus one year. (optional)
///
///  @param endTime The end of the requested reporting period, in ISO 8601 format. If this value is more than one year greater than begin_time, this endpoint returns an error. Default value: The current time. (optional)
///
///  @param limit The maximum number of payments to return in a single response. This value cannot exceed 200. (optional)
///
///  @param batchToken A pagination cursor to retrieve the next set of results for your original query to the endpoint. (optional)
///
///  @param includePartial Indicates whether or not to include partial payments in the response. Partial payments will have the tenders collected so far, but the itemizations will be empty until the payment is completed. (optional)
///
///  @returns NSArray<SQV1Payment>*
///
-(NSURLSessionTask*) v1ListPaymentsWithLocationId: (NSString*) locationId
    order: (NSString*) order
    beginTime: (NSString*) beginTime
    endTime: (NSString*) endTime
    limit: (NSNumber*) limit
    batchToken: (NSString*) batchToken
    includePartial: (NSNumber*) includePartial
    completionHandler: (void (^)(NSArray<SQV1Payment>* output, NSError* error)) handler {
    // verify the required parameter 'locationId' is set
    if (locationId == nil) {
        NSParameterAssert(locationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"locationId"] };
            NSError* error = [NSError errorWithDomain:kSQV1TransactionsApiErrorDomain code:kSQV1TransactionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/{location_id}/payments"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (locationId != nil) {
        pathParams[@"location_id"] = locationId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (order != nil) {
        queryParams[@"order"] = order;
    }
    if (beginTime != nil) {
        queryParams[@"begin_time"] = beginTime;
    }
    if (endTime != nil) {
        queryParams[@"end_time"] = endTime;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (batchToken != nil) {
        queryParams[@"batch_token"] = batchToken;
    }
    if (includePartial != nil) {
        queryParams[@"include_partial"] = [includePartial isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"NSArray<SQV1Payment>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SQV1Payment>*)data, error);
                                }
                            }];
}

///
/// V1ListRefunds
/// Provides the details for all refunds initiated by a merchant or any of the merchant's mobile staff during a date range. Date ranges cannot exceed one year in length.
///  @param locationId The ID of the location to list refunds for. 
///
///  @param order The order in which payments are listed in the response. (optional)
///
///  @param beginTime The beginning of the requested reporting period, in ISO 8601 format. If this value is before January 1, 2013 (2013-01-01T00:00:00Z), this endpoint returns an error. Default value: The current time minus one year. (optional)
///
///  @param endTime The end of the requested reporting period, in ISO 8601 format. If this value is more than one year greater than begin_time, this endpoint returns an error. Default value: The current time. (optional)
///
///  @param limit The approximate number of refunds to return in a single response. Default: 100. Max: 200. Response may contain more results than the prescribed limit when refunds are made simultaneously to multiple tenders in a payment or when refunds are generated in an exchange to account for the value of returned goods. (optional)
///
///  @param batchToken A pagination cursor to retrieve the next set of results for your original query to the endpoint. (optional)
///
///  @returns NSArray<SQV1Refund>*
///
-(NSURLSessionTask*) v1ListRefundsWithLocationId: (NSString*) locationId
    order: (NSString*) order
    beginTime: (NSString*) beginTime
    endTime: (NSString*) endTime
    limit: (NSNumber*) limit
    batchToken: (NSString*) batchToken
    completionHandler: (void (^)(NSArray<SQV1Refund>* output, NSError* error)) handler {
    // verify the required parameter 'locationId' is set
    if (locationId == nil) {
        NSParameterAssert(locationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"locationId"] };
            NSError* error = [NSError errorWithDomain:kSQV1TransactionsApiErrorDomain code:kSQV1TransactionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/{location_id}/refunds"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (locationId != nil) {
        pathParams[@"location_id"] = locationId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (order != nil) {
        queryParams[@"order"] = order;
    }
    if (beginTime != nil) {
        queryParams[@"begin_time"] = beginTime;
    }
    if (endTime != nil) {
        queryParams[@"end_time"] = endTime;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (batchToken != nil) {
        queryParams[@"batch_token"] = batchToken;
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
                              responseType: @"NSArray<SQV1Refund>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SQV1Refund>*)data, error);
                                }
                            }];
}

///
/// V1ListSettlements
/// Provides summary information for all deposits and withdrawals initiated by Square to a linked bank account during a date range. Date ranges cannot exceed one year in length.  *Note**: the ListSettlements endpoint does not provide entry information.
///  @param locationId The ID of the location to list settlements for. If you specify me, this endpoint returns settlements aggregated from all of the business's locations. 
///
///  @param order The order in which settlements are listed in the response. (optional)
///
///  @param beginTime The beginning of the requested reporting period, in ISO 8601 format. If this value is before January 1, 2013 (2013-01-01T00:00:00Z), this endpoint returns an error. Default value: The current time minus one year. (optional)
///
///  @param endTime The end of the requested reporting period, in ISO 8601 format. If this value is more than one year greater than begin_time, this endpoint returns an error. Default value: The current time. (optional)
///
///  @param limit The maximum number of settlements to return in a single response. This value cannot exceed 200. (optional)
///
///  @param status Provide this parameter to retrieve only settlements with a particular status (SENT or FAILED). (optional)
///
///  @param batchToken A pagination cursor to retrieve the next set of results for your original query to the endpoint. (optional)
///
///  @returns NSArray<SQV1Settlement>*
///
-(NSURLSessionTask*) v1ListSettlementsWithLocationId: (NSString*) locationId
    order: (NSString*) order
    beginTime: (NSString*) beginTime
    endTime: (NSString*) endTime
    limit: (NSNumber*) limit
    status: (NSString*) status
    batchToken: (NSString*) batchToken
    completionHandler: (void (^)(NSArray<SQV1Settlement>* output, NSError* error)) handler {
    // verify the required parameter 'locationId' is set
    if (locationId == nil) {
        NSParameterAssert(locationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"locationId"] };
            NSError* error = [NSError errorWithDomain:kSQV1TransactionsApiErrorDomain code:kSQV1TransactionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/{location_id}/settlements"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (locationId != nil) {
        pathParams[@"location_id"] = locationId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (order != nil) {
        queryParams[@"order"] = order;
    }
    if (beginTime != nil) {
        queryParams[@"begin_time"] = beginTime;
    }
    if (endTime != nil) {
        queryParams[@"end_time"] = endTime;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (status != nil) {
        queryParams[@"status"] = status;
    }
    if (batchToken != nil) {
        queryParams[@"batch_token"] = batchToken;
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
                              responseType: @"NSArray<SQV1Settlement>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SQV1Settlement>*)data, error);
                                }
                            }];
}

///
/// V1RetrieveOrder
/// Provides comprehensive information for a single online store order, including the order's history.
///  @param locationId The ID of the order's associated location. 
///
///  @param orderId The order's Square-issued ID. You obtain this value from Order objects returned by the List Orders endpoint 
///
///  @returns SQV1Order*
///
-(NSURLSessionTask*) v1RetrieveOrderWithLocationId: (NSString*) locationId
    orderId: (NSString*) orderId
    completionHandler: (void (^)(SQV1Order* output, NSError* error)) handler {
    // verify the required parameter 'locationId' is set
    if (locationId == nil) {
        NSParameterAssert(locationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"locationId"] };
            NSError* error = [NSError errorWithDomain:kSQV1TransactionsApiErrorDomain code:kSQV1TransactionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'orderId' is set
    if (orderId == nil) {
        NSParameterAssert(orderId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"orderId"] };
            NSError* error = [NSError errorWithDomain:kSQV1TransactionsApiErrorDomain code:kSQV1TransactionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/{location_id}/orders/{order_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (locationId != nil) {
        pathParams[@"location_id"] = locationId;
    }
    if (orderId != nil) {
        pathParams[@"order_id"] = orderId;
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
                              responseType: @"SQV1Order*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQV1Order*)data, error);
                                }
                            }];
}

///
/// V1RetrievePayment
/// Provides comprehensive information for a single payment.
///  @param locationId The ID of the payment's associated location. 
///
///  @param paymentId The Square-issued payment ID. payment_id comes from Payment objects returned by the List Payments endpoint, Settlement objects returned by the List Settlements endpoint, or Refund objects returned by the List Refunds endpoint. 
///
///  @returns SQV1Payment*
///
-(NSURLSessionTask*) v1RetrievePaymentWithLocationId: (NSString*) locationId
    paymentId: (NSString*) paymentId
    completionHandler: (void (^)(SQV1Payment* output, NSError* error)) handler {
    // verify the required parameter 'locationId' is set
    if (locationId == nil) {
        NSParameterAssert(locationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"locationId"] };
            NSError* error = [NSError errorWithDomain:kSQV1TransactionsApiErrorDomain code:kSQV1TransactionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'paymentId' is set
    if (paymentId == nil) {
        NSParameterAssert(paymentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"paymentId"] };
            NSError* error = [NSError errorWithDomain:kSQV1TransactionsApiErrorDomain code:kSQV1TransactionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/{location_id}/payments/{payment_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (locationId != nil) {
        pathParams[@"location_id"] = locationId;
    }
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
                              responseType: @"SQV1Payment*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQV1Payment*)data, error);
                                }
                            }];
}

///
/// V1RetrieveSettlement
/// Provides comprehensive information for a single settlement.  The returned `Settlement` objects include an `entries` field that lists the transactions that contribute to the settlement total. Most settlement entries correspond to a payment payout, but settlement entries are also generated for less common events, like refunds, manual adjustments, or chargeback holds.  Square initiates its regular deposits as indicated in the [Deposit Options with Square](https://squareup.com/help/us/en/article/3807) help article. Details for a regular deposit are usually not available from Connect API endpoints before 10 p.m. PST the same day.  Square does not know when an initiated settlement **completes**, only whether it has failed. A completed settlement is typically reflected in a bank account within 3 business days, but in exceptional cases it may take longer.
///  @param locationId The ID of the settlements's associated location. 
///
///  @param settlementId The settlement's Square-issued ID. You obtain this value from Settlement objects returned by the List Settlements endpoint. 
///
///  @returns SQV1Settlement*
///
-(NSURLSessionTask*) v1RetrieveSettlementWithLocationId: (NSString*) locationId
    settlementId: (NSString*) settlementId
    completionHandler: (void (^)(SQV1Settlement* output, NSError* error)) handler {
    // verify the required parameter 'locationId' is set
    if (locationId == nil) {
        NSParameterAssert(locationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"locationId"] };
            NSError* error = [NSError errorWithDomain:kSQV1TransactionsApiErrorDomain code:kSQV1TransactionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'settlementId' is set
    if (settlementId == nil) {
        NSParameterAssert(settlementId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"settlementId"] };
            NSError* error = [NSError errorWithDomain:kSQV1TransactionsApiErrorDomain code:kSQV1TransactionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/{location_id}/settlements/{settlement_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (locationId != nil) {
        pathParams[@"location_id"] = locationId;
    }
    if (settlementId != nil) {
        pathParams[@"settlement_id"] = settlementId;
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
                              responseType: @"SQV1Settlement*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQV1Settlement*)data, error);
                                }
                            }];
}

///
/// V1UpdateOrder
/// Updates the details of an online store order. Every update you perform on an order corresponds to one of three actions:
///  @param locationId The ID of the order's associated location. 
///
///  @param orderId The order's Square-issued ID. You obtain this value from Order objects returned by the List Orders endpoint 
///
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQV1Order*
///
-(NSURLSessionTask*) v1UpdateOrderWithLocationId: (NSString*) locationId
    orderId: (NSString*) orderId
    body: (SQV1UpdateOrderRequest*) body
    completionHandler: (void (^)(SQV1Order* output, NSError* error)) handler {
    // verify the required parameter 'locationId' is set
    if (locationId == nil) {
        NSParameterAssert(locationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"locationId"] };
            NSError* error = [NSError errorWithDomain:kSQV1TransactionsApiErrorDomain code:kSQV1TransactionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'orderId' is set
    if (orderId == nil) {
        NSParameterAssert(orderId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"orderId"] };
            NSError* error = [NSError errorWithDomain:kSQV1TransactionsApiErrorDomain code:kSQV1TransactionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQV1TransactionsApiErrorDomain code:kSQV1TransactionsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/{location_id}/orders/{order_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (locationId != nil) {
        pathParams[@"location_id"] = locationId;
    }
    if (orderId != nil) {
        pathParams[@"order_id"] = orderId;
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
                              responseType: @"SQV1Order*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQV1Order*)data, error);
                                }
                            }];
}



@end
