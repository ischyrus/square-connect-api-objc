#import "SQCashDrawersApi.h"
#import "SQQueryParamCollection.h"
#import "SQApiClient.h"
#import "SQListCashDrawerShiftEventsResponse.h"
#import "SQListCashDrawerShiftsResponse.h"
#import "SQRetrieveCashDrawerShiftResponse.h"


@interface SQCashDrawersApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SQCashDrawersApi

NSString* kSQCashDrawersApiErrorDomain = @"SQCashDrawersApiErrorDomain";
NSInteger kSQCashDrawersApiMissingParamErrorCode = 234513;

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
/// ListCashDrawerShiftEvents
/// Provides a paginated list of events for a single cash drawer shift.
///  @param locationId The ID of the location to list cash drawer shifts for. 
///
///  @param shiftId The shift ID. 
///
///  @param limit Number of resources to be returned in a page of results (200 by default, 1000 max). (optional)
///
///  @param cursor Opaque cursor for fetching the next page of results. (optional)
///
///  @returns SQListCashDrawerShiftEventsResponse*
///
-(NSURLSessionTask*) listCashDrawerShiftEventsWithLocationId: (NSString*) locationId
    shiftId: (NSString*) shiftId
    limit: (NSNumber*) limit
    cursor: (NSString*) cursor
    completionHandler: (void (^)(SQListCashDrawerShiftEventsResponse* output, NSError* error)) handler {
    // verify the required parameter 'locationId' is set
    if (locationId == nil) {
        NSParameterAssert(locationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"locationId"] };
            NSError* error = [NSError errorWithDomain:kSQCashDrawersApiErrorDomain code:kSQCashDrawersApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'shiftId' is set
    if (shiftId == nil) {
        NSParameterAssert(shiftId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"shiftId"] };
            NSError* error = [NSError errorWithDomain:kSQCashDrawersApiErrorDomain code:kSQCashDrawersApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/cash-drawers/shifts/{shift_id}/events"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (shiftId != nil) {
        pathParams[@"shift_id"] = shiftId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (locationId != nil) {
        queryParams[@"location_id"] = locationId;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (cursor != nil) {
        queryParams[@"cursor"] = cursor;
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
                              responseType: @"SQListCashDrawerShiftEventsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQListCashDrawerShiftEventsResponse*)data, error);
                                }
                            }];
}

///
/// ListCashDrawerShifts
/// Provides the details for all of the cash drawer shifts for a location in a date range.
///  @param locationId The ID of the location to query for a list of cash drawer shifts. 
///
///  @param sortOrder The order in which cash drawer shifts are listed in the response, based on their opened_at field. Default value: ASC (optional)
///
///  @param beginTime The inclusive start time of the query on opened_at, in ISO 8601 format. (optional)
///
///  @param endTime The exclusive end date of the query on opened_at, in ISO 8601 format. (optional)
///
///  @param limit Number of cash drawer shift events in a page of results (200 by default, 1000 max). (optional)
///
///  @param cursor Opaque cursor for fetching the next page of results. (optional)
///
///  @returns SQListCashDrawerShiftsResponse*
///
-(NSURLSessionTask*) listCashDrawerShiftsWithLocationId: (NSString*) locationId
    sortOrder: (NSString*) sortOrder
    beginTime: (NSString*) beginTime
    endTime: (NSString*) endTime
    limit: (NSNumber*) limit
    cursor: (NSString*) cursor
    completionHandler: (void (^)(SQListCashDrawerShiftsResponse* output, NSError* error)) handler {
    // verify the required parameter 'locationId' is set
    if (locationId == nil) {
        NSParameterAssert(locationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"locationId"] };
            NSError* error = [NSError errorWithDomain:kSQCashDrawersApiErrorDomain code:kSQCashDrawersApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/cash-drawers/shifts"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (locationId != nil) {
        queryParams[@"location_id"] = locationId;
    }
    if (sortOrder != nil) {
        queryParams[@"sort_order"] = sortOrder;
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
    if (cursor != nil) {
        queryParams[@"cursor"] = cursor;
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
                              responseType: @"SQListCashDrawerShiftsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQListCashDrawerShiftsResponse*)data, error);
                                }
                            }];
}

///
/// RetrieveCashDrawerShift
/// Provides the summary details for a single cash drawer shift. See [ListCashDrawerShiftEvents](https://developer.squareup.com/reference/square_2023-10-18/cash-drawers-api/list-cash-drawer-shift-events) for a list of cash drawer shift events.
///  @param locationId The ID of the location to retrieve cash drawer shifts from. 
///
///  @param shiftId The shift ID. 
///
///  @returns SQRetrieveCashDrawerShiftResponse*
///
-(NSURLSessionTask*) retrieveCashDrawerShiftWithLocationId: (NSString*) locationId
    shiftId: (NSString*) shiftId
    completionHandler: (void (^)(SQRetrieveCashDrawerShiftResponse* output, NSError* error)) handler {
    // verify the required parameter 'locationId' is set
    if (locationId == nil) {
        NSParameterAssert(locationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"locationId"] };
            NSError* error = [NSError errorWithDomain:kSQCashDrawersApiErrorDomain code:kSQCashDrawersApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'shiftId' is set
    if (shiftId == nil) {
        NSParameterAssert(shiftId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"shiftId"] };
            NSError* error = [NSError errorWithDomain:kSQCashDrawersApiErrorDomain code:kSQCashDrawersApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/cash-drawers/shifts/{shift_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (shiftId != nil) {
        pathParams[@"shift_id"] = shiftId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (locationId != nil) {
        queryParams[@"location_id"] = locationId;
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
                              responseType: @"SQRetrieveCashDrawerShiftResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQRetrieveCashDrawerShiftResponse*)data, error);
                                }
                            }];
}



@end
