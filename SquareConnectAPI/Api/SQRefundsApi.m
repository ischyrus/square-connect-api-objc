#import "SQRefundsApi.h"
#import "SQQueryParamCollection.h"
#import "SQApiClient.h"
#import "SQGetPaymentRefundResponse.h"
#import "SQListPaymentRefundsResponse.h"
#import "SQRefundPaymentRequest.h"
#import "SQRefundPaymentResponse.h"


@interface SQRefundsApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SQRefundsApi

NSString* kSQRefundsApiErrorDomain = @"SQRefundsApiErrorDomain";
NSInteger kSQRefundsApiMissingParamErrorCode = 234513;

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
/// GetPaymentRefund
/// Retrieves a specific refund using the `refund_id`.
///  @param refundId The unique ID for the desired `PaymentRefund`. 
///
///  @returns SQGetPaymentRefundResponse*
///
-(NSURLSessionTask*) getPaymentRefundWithRefundId: (NSString*) refundId
    completionHandler: (void (^)(SQGetPaymentRefundResponse* output, NSError* error)) handler {
    // verify the required parameter 'refundId' is set
    if (refundId == nil) {
        NSParameterAssert(refundId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"refundId"] };
            NSError* error = [NSError errorWithDomain:kSQRefundsApiErrorDomain code:kSQRefundsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/refunds/{refund_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (refundId != nil) {
        pathParams[@"refund_id"] = refundId;
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
                              responseType: @"SQGetPaymentRefundResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQGetPaymentRefundResponse*)data, error);
                                }
                            }];
}

///
/// ListPaymentRefunds
/// Retrieves a list of refunds for the account making the request.  Results are eventually consistent, and new refunds or changes to refunds might take several seconds to appear.  The maximum results per page is 100.
///  @param beginTime Indicates the start of the time range to retrieve each `PaymentRefund` for, in RFC 3339  format.  The range is determined using the `created_at` field for each `PaymentRefund`.   Default: The current time minus one year. (optional)
///
///  @param endTime Indicates the end of the time range to retrieve each `PaymentRefund` for, in RFC 3339  format.  The range is determined using the `created_at` field for each `PaymentRefund`.  Default: The current time. (optional)
///
///  @param sortOrder The order in which results are listed by `PaymentRefund.created_at`: - `ASC` - Oldest to newest. - `DESC` - Newest to oldest (default). (optional)
///
///  @param cursor A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
///
///  @param locationId Limit results to the location supplied. By default, results are returned for all locations associated with the seller. (optional)
///
///  @param status If provided, only refunds with the given status are returned. For a list of refund status values, see [PaymentRefund](https://developer.squareup.com/reference/square_2023-10-18/objects/PaymentRefund).  Default: If omitted, refunds are returned regardless of their status. (optional)
///
///  @param sourceType If provided, only returns refunds whose payments have the indicated source type. Current values include `CARD`, `BANK_ACCOUNT`, `WALLET`, `CASH`, and `EXTERNAL`. For information about these payment source types, see [Take Payments](https://developer.squareup.com/docs/payments-api/take-payments).  Default: If omitted, refunds are returned regardless of the source type. (optional)
///
///  @param limit The maximum number of results to be returned in a single page.  It is possible to receive fewer results than the specified limit on a given page.  If the supplied value is greater than 100, no more than 100 results are returned.  Default: 100 (optional)
///
///  @returns SQListPaymentRefundsResponse*
///
-(NSURLSessionTask*) listPaymentRefundsWithBeginTime: (NSString*) beginTime
    endTime: (NSString*) endTime
    sortOrder: (NSString*) sortOrder
    cursor: (NSString*) cursor
    locationId: (NSString*) locationId
    status: (NSString*) status
    sourceType: (NSString*) sourceType
    limit: (NSNumber*) limit
    completionHandler: (void (^)(SQListPaymentRefundsResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/refunds"];

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
    if (status != nil) {
        queryParams[@"status"] = status;
    }
    if (sourceType != nil) {
        queryParams[@"source_type"] = sourceType;
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
                              responseType: @"SQListPaymentRefundsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQListPaymentRefundsResponse*)data, error);
                                }
                            }];
}

///
/// RefundPayment
/// Refunds a payment. You can refund the entire payment amount or a portion of it. You can use this endpoint to refund a card payment or record a  refund of a cash or external payment. For more information, see [Refund Payment](https://developer.squareup.com/docs/payments-api/refund-payments).
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQRefundPaymentResponse*
///
-(NSURLSessionTask*) refundPaymentWithBody: (SQRefundPaymentRequest*) body
    completionHandler: (void (^)(SQRefundPaymentResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQRefundsApiErrorDomain code:kSQRefundsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/refunds"];

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
                              responseType: @"SQRefundPaymentResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQRefundPaymentResponse*)data, error);
                                }
                            }];
}



@end
