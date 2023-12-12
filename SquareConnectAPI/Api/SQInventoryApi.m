#import "SQInventoryApi.h"
#import "SQQueryParamCollection.h"
#import "SQApiClient.h"
#import "SQBatchChangeInventoryRequest.h"
#import "SQBatchChangeInventoryResponse.h"
#import "SQBatchRetrieveInventoryChangesRequest.h"
#import "SQBatchRetrieveInventoryChangesResponse.h"
#import "SQBatchRetrieveInventoryCountsRequest.h"
#import "SQBatchRetrieveInventoryCountsResponse.h"
#import "SQRetrieveInventoryAdjustmentResponse.h"
#import "SQRetrieveInventoryChangesResponse.h"
#import "SQRetrieveInventoryCountResponse.h"
#import "SQRetrieveInventoryPhysicalCountResponse.h"
#import "SQRetrieveInventoryTransferResponse.h"


@interface SQInventoryApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SQInventoryApi

NSString* kSQInventoryApiErrorDomain = @"SQInventoryApiErrorDomain";
NSInteger kSQInventoryApiMissingParamErrorCode = 234513;

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
/// BatchChangeInventory
/// Applies adjustments and counts to the provided item quantities.  On success: returns the current calculated counts for all objects referenced in the request. On failure: returns a list of related errors.
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQBatchChangeInventoryResponse*
///
-(NSURLSessionTask*) batchChangeInventoryWithBody: (SQBatchChangeInventoryRequest*) body
    completionHandler: (void (^)(SQBatchChangeInventoryResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQInventoryApiErrorDomain code:kSQInventoryApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/inventory/changes/batch-create"];

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
                              responseType: @"SQBatchChangeInventoryResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQBatchChangeInventoryResponse*)data, error);
                                }
                            }];
}

///
/// BatchRetrieveInventoryChanges
/// Returns historical physical counts and adjustments based on the provided filter criteria.  Results are paginated and sorted in ascending order according their `occurred_at` timestamp (oldest first).  BatchRetrieveInventoryChanges is a catch-all query endpoint for queries that cannot be handled by other, simpler endpoints.
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQBatchRetrieveInventoryChangesResponse*
///
-(NSURLSessionTask*) batchRetrieveInventoryChangesWithBody: (SQBatchRetrieveInventoryChangesRequest*) body
    completionHandler: (void (^)(SQBatchRetrieveInventoryChangesResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQInventoryApiErrorDomain code:kSQInventoryApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/inventory/changes/batch-retrieve"];

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
                              responseType: @"SQBatchRetrieveInventoryChangesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQBatchRetrieveInventoryChangesResponse*)data, error);
                                }
                            }];
}

///
/// BatchRetrieveInventoryCounts
/// Returns current counts for the provided [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject)s at the requested [Location](https://developer.squareup.com/reference/square_2023-10-18/objects/Location)s.  Results are paginated and sorted in descending order according to their `calculated_at` timestamp (newest first).  When `updated_after` is specified, only counts that have changed since that time (based on the server timestamp for the most recent change) are returned. This allows clients to perform a \"sync\" operation, for example in response to receiving a Webhook notification.
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQBatchRetrieveInventoryCountsResponse*
///
-(NSURLSessionTask*) batchRetrieveInventoryCountsWithBody: (SQBatchRetrieveInventoryCountsRequest*) body
    completionHandler: (void (^)(SQBatchRetrieveInventoryCountsResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQInventoryApiErrorDomain code:kSQInventoryApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/inventory/counts/batch-retrieve"];

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
                              responseType: @"SQBatchRetrieveInventoryCountsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQBatchRetrieveInventoryCountsResponse*)data, error);
                                }
                            }];
}

///
/// DeprecatedBatchChangeInventory
/// Deprecated version of [BatchChangeInventory](https://developer.squareup.com/reference/square_2023-10-18/inventory-api/batch-change-inventory) after the endpoint URL is updated to conform to the standard convention.
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQBatchChangeInventoryResponse*
///
-(NSURLSessionTask*) deprecatedBatchChangeInventoryWithBody: (SQBatchChangeInventoryRequest*) body
    completionHandler: (void (^)(SQBatchChangeInventoryResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQInventoryApiErrorDomain code:kSQInventoryApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/inventory/batch-change"];

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
                              responseType: @"SQBatchChangeInventoryResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQBatchChangeInventoryResponse*)data, error);
                                }
                            }];
}

///
/// DeprecatedBatchRetrieveInventoryChanges
/// Deprecated version of [BatchRetrieveInventoryChanges](https://developer.squareup.com/reference/square_2023-10-18/inventory-api/batch-retrieve-inventory-changes) after the endpoint URL is updated to conform to the standard convention.
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQBatchRetrieveInventoryChangesResponse*
///
-(NSURLSessionTask*) deprecatedBatchRetrieveInventoryChangesWithBody: (SQBatchRetrieveInventoryChangesRequest*) body
    completionHandler: (void (^)(SQBatchRetrieveInventoryChangesResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQInventoryApiErrorDomain code:kSQInventoryApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/inventory/batch-retrieve-changes"];

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
                              responseType: @"SQBatchRetrieveInventoryChangesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQBatchRetrieveInventoryChangesResponse*)data, error);
                                }
                            }];
}

///
/// DeprecatedBatchRetrieveInventoryCounts
/// Deprecated version of [BatchRetrieveInventoryCounts](https://developer.squareup.com/reference/square_2023-10-18/inventory-api/batch-retrieve-inventory-counts) after the endpoint URL is updated to conform to the standard convention.
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQBatchRetrieveInventoryCountsResponse*
///
-(NSURLSessionTask*) deprecatedBatchRetrieveInventoryCountsWithBody: (SQBatchRetrieveInventoryCountsRequest*) body
    completionHandler: (void (^)(SQBatchRetrieveInventoryCountsResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQInventoryApiErrorDomain code:kSQInventoryApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/inventory/batch-retrieve-counts"];

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
                              responseType: @"SQBatchRetrieveInventoryCountsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQBatchRetrieveInventoryCountsResponse*)data, error);
                                }
                            }];
}

///
/// DeprecatedRetrieveInventoryAdjustment
/// Deprecated version of [RetrieveInventoryAdjustment](https://developer.squareup.com/reference/square_2023-10-18/inventory-api/retrieve-inventory-adjustment) after the endpoint URL is updated to conform to the standard convention.
///  @param adjustmentId ID of the [InventoryAdjustment](https://developer.squareup.com/reference/square_2023-10-18/objects/InventoryAdjustment) to retrieve. 
///
///  @returns SQRetrieveInventoryAdjustmentResponse*
///
-(NSURLSessionTask*) deprecatedRetrieveInventoryAdjustmentWithAdjustmentId: (NSString*) adjustmentId
    completionHandler: (void (^)(SQRetrieveInventoryAdjustmentResponse* output, NSError* error)) handler {
    // verify the required parameter 'adjustmentId' is set
    if (adjustmentId == nil) {
        NSParameterAssert(adjustmentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"adjustmentId"] };
            NSError* error = [NSError errorWithDomain:kSQInventoryApiErrorDomain code:kSQInventoryApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/inventory/adjustment/{adjustment_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (adjustmentId != nil) {
        pathParams[@"adjustment_id"] = adjustmentId;
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
                              responseType: @"SQRetrieveInventoryAdjustmentResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQRetrieveInventoryAdjustmentResponse*)data, error);
                                }
                            }];
}

///
/// DeprecatedRetrieveInventoryPhysicalCount
/// Deprecated version of [RetrieveInventoryPhysicalCount](https://developer.squareup.com/reference/square_2023-10-18/inventory-api/retrieve-inventory-physical-count) after the endpoint URL is updated to conform to the standard convention.
///  @param physicalCountId ID of the [InventoryPhysicalCount](https://developer.squareup.com/reference/square_2023-10-18/objects/InventoryPhysicalCount) to retrieve. 
///
///  @returns SQRetrieveInventoryPhysicalCountResponse*
///
-(NSURLSessionTask*) deprecatedRetrieveInventoryPhysicalCountWithPhysicalCountId: (NSString*) physicalCountId
    completionHandler: (void (^)(SQRetrieveInventoryPhysicalCountResponse* output, NSError* error)) handler {
    // verify the required parameter 'physicalCountId' is set
    if (physicalCountId == nil) {
        NSParameterAssert(physicalCountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"physicalCountId"] };
            NSError* error = [NSError errorWithDomain:kSQInventoryApiErrorDomain code:kSQInventoryApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/inventory/physical-count/{physical_count_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (physicalCountId != nil) {
        pathParams[@"physical_count_id"] = physicalCountId;
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
                              responseType: @"SQRetrieveInventoryPhysicalCountResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQRetrieveInventoryPhysicalCountResponse*)data, error);
                                }
                            }];
}

///
/// RetrieveInventoryAdjustment
/// Returns the [InventoryAdjustment](https://developer.squareup.com/reference/square_2023-10-18/objects/InventoryAdjustment) object with the provided `adjustment_id`.
///  @param adjustmentId ID of the [InventoryAdjustment](https://developer.squareup.com/reference/square_2023-10-18/objects/InventoryAdjustment) to retrieve. 
///
///  @returns SQRetrieveInventoryAdjustmentResponse*
///
-(NSURLSessionTask*) retrieveInventoryAdjustmentWithAdjustmentId: (NSString*) adjustmentId
    completionHandler: (void (^)(SQRetrieveInventoryAdjustmentResponse* output, NSError* error)) handler {
    // verify the required parameter 'adjustmentId' is set
    if (adjustmentId == nil) {
        NSParameterAssert(adjustmentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"adjustmentId"] };
            NSError* error = [NSError errorWithDomain:kSQInventoryApiErrorDomain code:kSQInventoryApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/inventory/adjustments/{adjustment_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (adjustmentId != nil) {
        pathParams[@"adjustment_id"] = adjustmentId;
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
                              responseType: @"SQRetrieveInventoryAdjustmentResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQRetrieveInventoryAdjustmentResponse*)data, error);
                                }
                            }];
}

///
/// RetrieveInventoryChanges
/// Returns a set of physical counts and inventory adjustments for the provided [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject) at the requested [Location](https://developer.squareup.com/reference/square_2023-10-18/objects/Location)s.  You can achieve the same result by calling [BatchRetrieveInventoryChanges](https://developer.squareup.com/reference/square_2023-10-18/inventory-api/batch-retrieve-inventory-changes) and having the `catalog_object_ids` list contain a single element of the `CatalogObject` ID.  Results are paginated and sorted in descending order according to their `occurred_at` timestamp (newest first).  There are no limits on how far back the caller can page. This endpoint can be used to display recent changes for a specific item. For more sophisticated queries, use a batch endpoint.
///  @param catalogObjectId ID of the [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject) to retrieve. 
///
///  @param locationIds The [Location](https://developer.squareup.com/reference/square_2023-10-18/objects/Location) IDs to look up as a comma-separated list. An empty list queries all locations. (optional)
///
///  @param cursor A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for the original query.  See the [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination) guide for more information. (optional)
///
///  @returns SQRetrieveInventoryChangesResponse*
///
-(NSURLSessionTask*) retrieveInventoryChangesWithCatalogObjectId: (NSString*) catalogObjectId
    locationIds: (NSString*) locationIds
    cursor: (NSString*) cursor
    completionHandler: (void (^)(SQRetrieveInventoryChangesResponse* output, NSError* error)) handler {
    // verify the required parameter 'catalogObjectId' is set
    if (catalogObjectId == nil) {
        NSParameterAssert(catalogObjectId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"catalogObjectId"] };
            NSError* error = [NSError errorWithDomain:kSQInventoryApiErrorDomain code:kSQInventoryApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/inventory/{catalog_object_id}/changes"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (catalogObjectId != nil) {
        pathParams[@"catalog_object_id"] = catalogObjectId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (locationIds != nil) {
        queryParams[@"location_ids"] = locationIds;
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
                              responseType: @"SQRetrieveInventoryChangesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQRetrieveInventoryChangesResponse*)data, error);
                                }
                            }];
}

///
/// RetrieveInventoryCount
/// Retrieves the current calculated stock count for a given [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject) at a given set of [Location](https://developer.squareup.com/reference/square_2023-10-18/objects/Location)s. Responses are paginated and unsorted. For more sophisticated queries, use a batch endpoint.
///  @param catalogObjectId ID of the [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject) to retrieve. 
///
///  @param locationIds The [Location](https://developer.squareup.com/reference/square_2023-10-18/objects/Location) IDs to look up as a comma-separated list. An empty list queries all locations. (optional)
///
///  @param cursor A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for the original query.  See the [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination) guide for more information. (optional)
///
///  @returns SQRetrieveInventoryCountResponse*
///
-(NSURLSessionTask*) retrieveInventoryCountWithCatalogObjectId: (NSString*) catalogObjectId
    locationIds: (NSString*) locationIds
    cursor: (NSString*) cursor
    completionHandler: (void (^)(SQRetrieveInventoryCountResponse* output, NSError* error)) handler {
    // verify the required parameter 'catalogObjectId' is set
    if (catalogObjectId == nil) {
        NSParameterAssert(catalogObjectId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"catalogObjectId"] };
            NSError* error = [NSError errorWithDomain:kSQInventoryApiErrorDomain code:kSQInventoryApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/inventory/{catalog_object_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (catalogObjectId != nil) {
        pathParams[@"catalog_object_id"] = catalogObjectId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (locationIds != nil) {
        queryParams[@"location_ids"] = locationIds;
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
                              responseType: @"SQRetrieveInventoryCountResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQRetrieveInventoryCountResponse*)data, error);
                                }
                            }];
}

///
/// RetrieveInventoryPhysicalCount
/// Returns the [InventoryPhysicalCount](https://developer.squareup.com/reference/square_2023-10-18/objects/InventoryPhysicalCount) object with the provided `physical_count_id`.
///  @param physicalCountId ID of the [InventoryPhysicalCount](https://developer.squareup.com/reference/square_2023-10-18/objects/InventoryPhysicalCount) to retrieve. 
///
///  @returns SQRetrieveInventoryPhysicalCountResponse*
///
-(NSURLSessionTask*) retrieveInventoryPhysicalCountWithPhysicalCountId: (NSString*) physicalCountId
    completionHandler: (void (^)(SQRetrieveInventoryPhysicalCountResponse* output, NSError* error)) handler {
    // verify the required parameter 'physicalCountId' is set
    if (physicalCountId == nil) {
        NSParameterAssert(physicalCountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"physicalCountId"] };
            NSError* error = [NSError errorWithDomain:kSQInventoryApiErrorDomain code:kSQInventoryApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/inventory/physical-counts/{physical_count_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (physicalCountId != nil) {
        pathParams[@"physical_count_id"] = physicalCountId;
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
                              responseType: @"SQRetrieveInventoryPhysicalCountResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQRetrieveInventoryPhysicalCountResponse*)data, error);
                                }
                            }];
}

///
/// RetrieveInventoryTransfer
/// Returns the [InventoryTransfer](https://developer.squareup.com/reference/square_2023-10-18/objects/InventoryTransfer) object with the provided `transfer_id`.
///  @param transferId ID of the [InventoryTransfer](https://developer.squareup.com/reference/square_2023-10-18/objects/InventoryTransfer) to retrieve. 
///
///  @returns SQRetrieveInventoryTransferResponse*
///
-(NSURLSessionTask*) retrieveInventoryTransferWithTransferId: (NSString*) transferId
    completionHandler: (void (^)(SQRetrieveInventoryTransferResponse* output, NSError* error)) handler {
    // verify the required parameter 'transferId' is set
    if (transferId == nil) {
        NSParameterAssert(transferId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"transferId"] };
            NSError* error = [NSError errorWithDomain:kSQInventoryApiErrorDomain code:kSQInventoryApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/inventory/transfers/{transfer_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (transferId != nil) {
        pathParams[@"transfer_id"] = transferId;
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
                              responseType: @"SQRetrieveInventoryTransferResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQRetrieveInventoryTransferResponse*)data, error);
                                }
                            }];
}



@end
