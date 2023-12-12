#import "SQPayoutsApi.h"
#import "SQQueryParamCollection.h"
#import "SQApiClient.h"
#import "SQGetPayoutResponse.h"
#import "SQListPayoutEntriesResponse.h"
#import "SQListPayoutsResponse.h"


@interface SQPayoutsApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SQPayoutsApi

NSString* kSQPayoutsApiErrorDomain = @"SQPayoutsApiErrorDomain";
NSInteger kSQPayoutsApiMissingParamErrorCode = 234513;

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
/// GetPayout
/// Retrieves details of a specific payout identified by a payout ID. To call this endpoint, set `PAYOUTS_READ` for the OAuth scope.
///  @param payoutId The ID of the payout to retrieve the information for. 
///
///  @returns SQGetPayoutResponse*
///
-(NSURLSessionTask*) getPayoutWithPayoutId: (NSString*) payoutId
    completionHandler: (void (^)(SQGetPayoutResponse* output, NSError* error)) handler {
    // verify the required parameter 'payoutId' is set
    if (payoutId == nil) {
        NSParameterAssert(payoutId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"payoutId"] };
            NSError* error = [NSError errorWithDomain:kSQPayoutsApiErrorDomain code:kSQPayoutsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/payouts/{payout_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (payoutId != nil) {
        pathParams[@"payout_id"] = payoutId;
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
                              responseType: @"SQGetPayoutResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQGetPayoutResponse*)data, error);
                                }
                            }];
}

///
/// ListPayoutEntries
/// Retrieves a list of all payout entries for a specific payout. To call this endpoint, set `PAYOUTS_READ` for the OAuth scope.
///  @param payoutId The ID of the payout to retrieve the information for. 
///
///  @param sortOrder The order in which payout entries are listed. (optional)
///
///  @param cursor A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). If request parameters change between requests, subsequent results may contain duplicates or missing records. (optional)
///
///  @param limit The maximum number of results to be returned in a single page. It is possible to receive fewer results than the specified limit on a given page. The default value of 100 is also the maximum allowed value. If the provided value is greater than 100, it is ignored and the default value is used instead. Default: `100` (optional)
///
///  @returns SQListPayoutEntriesResponse*
///
-(NSURLSessionTask*) listPayoutEntriesWithPayoutId: (NSString*) payoutId
    sortOrder: (NSString*) sortOrder
    cursor: (NSString*) cursor
    limit: (NSNumber*) limit
    completionHandler: (void (^)(SQListPayoutEntriesResponse* output, NSError* error)) handler {
    // verify the required parameter 'payoutId' is set
    if (payoutId == nil) {
        NSParameterAssert(payoutId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"payoutId"] };
            NSError* error = [NSError errorWithDomain:kSQPayoutsApiErrorDomain code:kSQPayoutsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/payouts/{payout_id}/payout-entries"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (payoutId != nil) {
        pathParams[@"payout_id"] = payoutId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (sortOrder != nil) {
        queryParams[@"sort_order"] = sortOrder;
    }
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
                              responseType: @"SQListPayoutEntriesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQListPayoutEntriesResponse*)data, error);
                                }
                            }];
}

///
/// ListPayouts
/// Retrieves a list of all payouts for the default location. You can filter payouts by location ID, status, time range, and order them in ascending or descending order. To call this endpoint, set `PAYOUTS_READ` for the OAuth scope.
///  @param locationId The ID of the location for which to list the payouts. By default, payouts are returned for the default (main) location associated with the seller. (optional)
///
///  @param status If provided, only payouts with the given status are returned. (optional)
///
///  @param beginTime The timestamp for the beginning of the payout creation time, in RFC 3339 format. Inclusive. Default: The current time minus one year. (optional)
///
///  @param endTime The timestamp for the end of the payout creation time, in RFC 3339 format. Default: The current time. (optional)
///
///  @param sortOrder The order in which payouts are listed. (optional)
///
///  @param cursor A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). If request parameters change between requests, subsequent results may contain duplicates or missing records. (optional)
///
///  @param limit The maximum number of results to be returned in a single page. It is possible to receive fewer results than the specified limit on a given page. The default value of 100 is also the maximum allowed value. If the provided value is greater than 100, it is ignored and the default value is used instead. Default: `100` (optional)
///
///  @returns SQListPayoutsResponse*
///
-(NSURLSessionTask*) listPayoutsWithLocationId: (NSString*) locationId
    status: (NSString*) status
    beginTime: (NSString*) beginTime
    endTime: (NSString*) endTime
    sortOrder: (NSString*) sortOrder
    cursor: (NSString*) cursor
    limit: (NSNumber*) limit
    completionHandler: (void (^)(SQListPayoutsResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/payouts"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (locationId != nil) {
        queryParams[@"location_id"] = locationId;
    }
    if (status != nil) {
        queryParams[@"status"] = status;
    }
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
                              responseType: @"SQListPayoutsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQListPayoutsResponse*)data, error);
                                }
                            }];
}



@end
