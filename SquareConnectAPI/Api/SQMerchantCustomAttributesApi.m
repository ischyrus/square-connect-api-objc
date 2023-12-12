#import "SQMerchantCustomAttributesApi.h"
#import "SQQueryParamCollection.h"
#import "SQApiClient.h"
#import "SQBulkDeleteMerchantCustomAttributesRequest.h"
#import "SQBulkDeleteMerchantCustomAttributesResponse.h"
#import "SQBulkUpsertMerchantCustomAttributesRequest.h"
#import "SQBulkUpsertMerchantCustomAttributesResponse.h"
#import "SQCreateMerchantCustomAttributeDefinitionRequest.h"
#import "SQCreateMerchantCustomAttributeDefinitionResponse.h"
#import "SQDeleteMerchantCustomAttributeDefinitionResponse.h"
#import "SQDeleteMerchantCustomAttributeResponse.h"
#import "SQListMerchantCustomAttributeDefinitionsResponse.h"
#import "SQListMerchantCustomAttributesResponse.h"
#import "SQRetrieveMerchantCustomAttributeDefinitionResponse.h"
#import "SQRetrieveMerchantCustomAttributeResponse.h"
#import "SQUpdateMerchantCustomAttributeDefinitionRequest.h"
#import "SQUpdateMerchantCustomAttributeDefinitionResponse.h"
#import "SQUpsertMerchantCustomAttributeRequest.h"
#import "SQUpsertMerchantCustomAttributeResponse.h"


@interface SQMerchantCustomAttributesApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SQMerchantCustomAttributesApi

NSString* kSQMerchantCustomAttributesApiErrorDomain = @"SQMerchantCustomAttributesApiErrorDomain";
NSInteger kSQMerchantCustomAttributesApiMissingParamErrorCode = 234513;

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
/// BulkDeleteMerchantCustomAttributes
/// Deletes [custom attributes](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) for a merchant as a bulk operation. To delete a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_WRITE_VALUES`.
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQBulkDeleteMerchantCustomAttributesResponse*
///
-(NSURLSessionTask*) bulkDeleteMerchantCustomAttributesWithBody: (SQBulkDeleteMerchantCustomAttributesRequest*) body
    completionHandler: (void (^)(SQBulkDeleteMerchantCustomAttributesResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQMerchantCustomAttributesApiErrorDomain code:kSQMerchantCustomAttributesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/merchants/custom-attributes/bulk-delete"];

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
                              responseType: @"SQBulkDeleteMerchantCustomAttributesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQBulkDeleteMerchantCustomAttributesResponse*)data, error);
                                }
                            }];
}

///
/// BulkUpsertMerchantCustomAttributes
/// Creates or updates [custom attributes](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) for a merchant as a bulk operation. Use this endpoint to set the value of one or more custom attributes for a merchant. A custom attribute is based on a custom attribute definition in a Square seller account, which is created using the [CreateMerchantCustomAttributeDefinition](https://developer.squareup.com/reference/square_2023-10-18/merchant-custom-attributes-api/create-merchant-custom-attribute-definition) endpoint. This `BulkUpsertMerchantCustomAttributes` endpoint accepts a map of 1 to 25 individual upsert requests and returns a map of individual upsert responses. Each upsert request has a unique ID and provides a merchant ID and custom attribute. Each upsert response is returned with the ID of the corresponding request. To create or update a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_WRITE_VALUES`.
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQBulkUpsertMerchantCustomAttributesResponse*
///
-(NSURLSessionTask*) bulkUpsertMerchantCustomAttributesWithBody: (SQBulkUpsertMerchantCustomAttributesRequest*) body
    completionHandler: (void (^)(SQBulkUpsertMerchantCustomAttributesResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQMerchantCustomAttributesApiErrorDomain code:kSQMerchantCustomAttributesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/merchants/custom-attributes/bulk-upsert"];

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
                              responseType: @"SQBulkUpsertMerchantCustomAttributesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQBulkUpsertMerchantCustomAttributesResponse*)data, error);
                                }
                            }];
}

///
/// CreateMerchantCustomAttributeDefinition
/// Creates a merchant-related [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) for a Square seller account. Use this endpoint to define a custom attribute that can be associated with a merchant connecting to your application. A custom attribute definition specifies the `key`, `visibility`, `schema`, and other properties for a custom attribute. After the definition is created, you can call [UpsertMerchantCustomAttribute](https://developer.squareup.com/reference/square_2023-10-18/merchant-custom-attributes-api/upsert-merchant-custom-attribute) or [BulkUpsertMerchantCustomAttributes](https://developer.squareup.com/reference/square_2023-10-18/merchant-custom-attributes-api/bulk-upsert-merchant-custom-attributes) to set the custom attribute for a merchant.
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQCreateMerchantCustomAttributeDefinitionResponse*
///
-(NSURLSessionTask*) createMerchantCustomAttributeDefinitionWithBody: (SQCreateMerchantCustomAttributeDefinitionRequest*) body
    completionHandler: (void (^)(SQCreateMerchantCustomAttributeDefinitionResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQMerchantCustomAttributesApiErrorDomain code:kSQMerchantCustomAttributesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/merchants/custom-attribute-definitions"];

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
                              responseType: @"SQCreateMerchantCustomAttributeDefinitionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQCreateMerchantCustomAttributeDefinitionResponse*)data, error);
                                }
                            }];
}

///
/// DeleteMerchantCustomAttribute
/// Deletes a [custom attribute](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) associated with a merchant. To delete a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_WRITE_VALUES`.
///  @param merchantId The ID of the target [merchant](https://developer.squareup.com/reference/square_2023-10-18/objects/Merchant). 
///
///  @param key The key of the custom attribute to delete. This key must match the `key` of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key. 
///
///  @returns SQDeleteMerchantCustomAttributeResponse*
///
-(NSURLSessionTask*) deleteMerchantCustomAttributeWithMerchantId: (NSString*) merchantId
    key: (NSString*) key
    completionHandler: (void (^)(SQDeleteMerchantCustomAttributeResponse* output, NSError* error)) handler {
    // verify the required parameter 'merchantId' is set
    if (merchantId == nil) {
        NSParameterAssert(merchantId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"merchantId"] };
            NSError* error = [NSError errorWithDomain:kSQMerchantCustomAttributesApiErrorDomain code:kSQMerchantCustomAttributesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'key' is set
    if (key == nil) {
        NSParameterAssert(key);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"key"] };
            NSError* error = [NSError errorWithDomain:kSQMerchantCustomAttributesApiErrorDomain code:kSQMerchantCustomAttributesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/merchants/{merchant_id}/custom-attributes/{key}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (merchantId != nil) {
        pathParams[@"merchant_id"] = merchantId;
    }
    if (key != nil) {
        pathParams[@"key"] = key;
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
                              responseType: @"SQDeleteMerchantCustomAttributeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQDeleteMerchantCustomAttributeResponse*)data, error);
                                }
                            }];
}

///
/// DeleteMerchantCustomAttributeDefinition
/// Deletes a merchant-related [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) from a Square seller account. Deleting a custom attribute definition also deletes the corresponding custom attribute from the merchant. Only the definition owner can delete a custom attribute definition.
///  @param key The key of the custom attribute definition to delete. 
///
///  @returns SQDeleteMerchantCustomAttributeDefinitionResponse*
///
-(NSURLSessionTask*) deleteMerchantCustomAttributeDefinitionWithKey: (NSString*) key
    completionHandler: (void (^)(SQDeleteMerchantCustomAttributeDefinitionResponse* output, NSError* error)) handler {
    // verify the required parameter 'key' is set
    if (key == nil) {
        NSParameterAssert(key);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"key"] };
            NSError* error = [NSError errorWithDomain:kSQMerchantCustomAttributesApiErrorDomain code:kSQMerchantCustomAttributesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/merchants/custom-attribute-definitions/{key}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (key != nil) {
        pathParams[@"key"] = key;
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
                              responseType: @"SQDeleteMerchantCustomAttributeDefinitionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQDeleteMerchantCustomAttributeDefinitionResponse*)data, error);
                                }
                            }];
}

///
/// ListMerchantCustomAttributeDefinitions
/// Lists the merchant-related [custom attribute definitions](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) that belong to a Square seller account. When all response pages are retrieved, the results include all custom attribute definitions that are visible to the requesting application, including those that are created by other applications and set to `VISIBILITY_READ_ONLY` or `VISIBILITY_READ_WRITE_VALUES`.
///  @param visibilityFilter Filters the `CustomAttributeDefinition` results by their `visibility` values. (optional)
///
///  @param limit The maximum number of results to return in a single paged response. This limit is advisory. The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100. The default value is 20. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
///
///  @param cursor The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
///
///  @returns SQListMerchantCustomAttributeDefinitionsResponse*
///
-(NSURLSessionTask*) listMerchantCustomAttributeDefinitionsWithVisibilityFilter: (NSString*) visibilityFilter
    limit: (NSNumber*) limit
    cursor: (NSString*) cursor
    completionHandler: (void (^)(SQListMerchantCustomAttributeDefinitionsResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/merchants/custom-attribute-definitions"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (visibilityFilter != nil) {
        queryParams[@"visibility_filter"] = visibilityFilter;
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
                              responseType: @"SQListMerchantCustomAttributeDefinitionsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQListMerchantCustomAttributeDefinitionsResponse*)data, error);
                                }
                            }];
}

///
/// ListMerchantCustomAttributes
/// Lists the [custom attributes](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) associated with a merchant. You can use the `with_definitions` query parameter to also retrieve custom attribute definitions in the same call. When all response pages are retrieved, the results include all custom attributes that are visible to the requesting application, including those that are owned by other applications and set to `VISIBILITY_READ_ONLY` or `VISIBILITY_READ_WRITE_VALUES`.
///  @param merchantId The ID of the target [merchant](https://developer.squareup.com/reference/square_2023-10-18/objects/Merchant). 
///
///  @param visibilityFilter Filters the `CustomAttributeDefinition` results by their `visibility` values. (optional)
///
///  @param limit The maximum number of results to return in a single paged response. This limit is advisory. The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100. The default value is 20. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
///
///  @param cursor The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
///
///  @param withDefinitions Indicates whether to return the [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) in the `definition` field of each custom attribute. Set this parameter to `true` to get the name and description of each custom attribute, information about the data type, or other definition details. The default value is `false`. (optional)
///
///  @returns SQListMerchantCustomAttributesResponse*
///
-(NSURLSessionTask*) listMerchantCustomAttributesWithMerchantId: (NSString*) merchantId
    visibilityFilter: (NSString*) visibilityFilter
    limit: (NSNumber*) limit
    cursor: (NSString*) cursor
    withDefinitions: (NSNumber*) withDefinitions
    completionHandler: (void (^)(SQListMerchantCustomAttributesResponse* output, NSError* error)) handler {
    // verify the required parameter 'merchantId' is set
    if (merchantId == nil) {
        NSParameterAssert(merchantId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"merchantId"] };
            NSError* error = [NSError errorWithDomain:kSQMerchantCustomAttributesApiErrorDomain code:kSQMerchantCustomAttributesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/merchants/{merchant_id}/custom-attributes"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (merchantId != nil) {
        pathParams[@"merchant_id"] = merchantId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (visibilityFilter != nil) {
        queryParams[@"visibility_filter"] = visibilityFilter;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (cursor != nil) {
        queryParams[@"cursor"] = cursor;
    }
    if (withDefinitions != nil) {
        queryParams[@"with_definitions"] = [withDefinitions isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"SQListMerchantCustomAttributesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQListMerchantCustomAttributesResponse*)data, error);
                                }
                            }];
}

///
/// RetrieveMerchantCustomAttribute
/// Retrieves a [custom attribute](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) associated with a merchant. You can use the `with_definition` query parameter to also retrieve the custom attribute definition in the same call. To retrieve a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_ONLY` or `VISIBILITY_READ_WRITE_VALUES`.
///  @param merchantId The ID of the target [merchant](https://developer.squareup.com/reference/square_2023-10-18/objects/Merchant). 
///
///  @param key The key of the custom attribute to retrieve. This key must match the `key` of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key. 
///
///  @param withDefinition Indicates whether to return the [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) in the `definition` field of the custom attribute. Set this parameter to `true` to get the name and description of the custom attribute, information about the data type, or other definition details. The default value is `false`. (optional)
///
///  @param version The current version of the custom attribute, which is used for strongly consistent reads to guarantee that you receive the most up-to-date data. When included in the request, Square returns the specified version or a higher version if one exists. If the specified version is higher than the current version, Square returns a `BAD_REQUEST` error. (optional)
///
///  @returns SQRetrieveMerchantCustomAttributeResponse*
///
-(NSURLSessionTask*) retrieveMerchantCustomAttributeWithMerchantId: (NSString*) merchantId
    key: (NSString*) key
    withDefinition: (NSNumber*) withDefinition
    version: (NSNumber*) version
    completionHandler: (void (^)(SQRetrieveMerchantCustomAttributeResponse* output, NSError* error)) handler {
    // verify the required parameter 'merchantId' is set
    if (merchantId == nil) {
        NSParameterAssert(merchantId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"merchantId"] };
            NSError* error = [NSError errorWithDomain:kSQMerchantCustomAttributesApiErrorDomain code:kSQMerchantCustomAttributesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'key' is set
    if (key == nil) {
        NSParameterAssert(key);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"key"] };
            NSError* error = [NSError errorWithDomain:kSQMerchantCustomAttributesApiErrorDomain code:kSQMerchantCustomAttributesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/merchants/{merchant_id}/custom-attributes/{key}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (merchantId != nil) {
        pathParams[@"merchant_id"] = merchantId;
    }
    if (key != nil) {
        pathParams[@"key"] = key;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (withDefinition != nil) {
        queryParams[@"with_definition"] = [withDefinition isEqual:@(YES)] ? @"true" : @"false";
    }
    if (version != nil) {
        queryParams[@"version"] = version;
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
                              responseType: @"SQRetrieveMerchantCustomAttributeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQRetrieveMerchantCustomAttributeResponse*)data, error);
                                }
                            }];
}

///
/// RetrieveMerchantCustomAttributeDefinition
/// Retrieves a merchant-related [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) from a Square seller account. To retrieve a custom attribute definition created by another application, the `visibility` setting must be `VISIBILITY_READ_ONLY` or `VISIBILITY_READ_WRITE_VALUES`.
///  @param key The key of the custom attribute definition to retrieve. If the requesting application is not the definition owner, you must use the qualified key. 
///
///  @param version The current version of the custom attribute definition, which is used for strongly consistent reads to guarantee that you receive the most up-to-date data. When included in the request, Square returns the specified version or a higher version if one exists. If the specified version is higher than the current version, Square returns a `BAD_REQUEST` error. (optional)
///
///  @returns SQRetrieveMerchantCustomAttributeDefinitionResponse*
///
-(NSURLSessionTask*) retrieveMerchantCustomAttributeDefinitionWithKey: (NSString*) key
    version: (NSNumber*) version
    completionHandler: (void (^)(SQRetrieveMerchantCustomAttributeDefinitionResponse* output, NSError* error)) handler {
    // verify the required parameter 'key' is set
    if (key == nil) {
        NSParameterAssert(key);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"key"] };
            NSError* error = [NSError errorWithDomain:kSQMerchantCustomAttributesApiErrorDomain code:kSQMerchantCustomAttributesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/merchants/custom-attribute-definitions/{key}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (key != nil) {
        pathParams[@"key"] = key;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        queryParams[@"version"] = version;
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
                              responseType: @"SQRetrieveMerchantCustomAttributeDefinitionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQRetrieveMerchantCustomAttributeDefinitionResponse*)data, error);
                                }
                            }];
}

///
/// UpdateMerchantCustomAttributeDefinition
/// Updates a merchant-related [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) for a Square seller account. Use this endpoint to update the following fields: `name`, `description`, `visibility`, or the `schema` for a `Selection` data type. Only the definition owner can update a custom attribute definition.
///  @param key The key of the custom attribute definition to update. 
///
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQUpdateMerchantCustomAttributeDefinitionResponse*
///
-(NSURLSessionTask*) updateMerchantCustomAttributeDefinitionWithKey: (NSString*) key
    body: (SQUpdateMerchantCustomAttributeDefinitionRequest*) body
    completionHandler: (void (^)(SQUpdateMerchantCustomAttributeDefinitionResponse* output, NSError* error)) handler {
    // verify the required parameter 'key' is set
    if (key == nil) {
        NSParameterAssert(key);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"key"] };
            NSError* error = [NSError errorWithDomain:kSQMerchantCustomAttributesApiErrorDomain code:kSQMerchantCustomAttributesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQMerchantCustomAttributesApiErrorDomain code:kSQMerchantCustomAttributesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/merchants/custom-attribute-definitions/{key}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (key != nil) {
        pathParams[@"key"] = key;
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
                              responseType: @"SQUpdateMerchantCustomAttributeDefinitionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQUpdateMerchantCustomAttributeDefinitionResponse*)data, error);
                                }
                            }];
}

///
/// UpsertMerchantCustomAttribute
/// Creates or updates a [custom attribute](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) for a merchant. Use this endpoint to set the value of a custom attribute for a specified merchant. A custom attribute is based on a custom attribute definition in a Square seller account, which is created using the [CreateMerchantCustomAttributeDefinition](https://developer.squareup.com/reference/square_2023-10-18/merchant-custom-attributes-api/create-merchant-custom-attribute-definition) endpoint. To create or update a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_WRITE_VALUES`.
///  @param merchantId The ID of the target [merchant](https://developer.squareup.com/reference/square_2023-10-18/objects/Merchant). 
///
///  @param key The key of the custom attribute to create or update. This key must match the `key` of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key. 
///
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQUpsertMerchantCustomAttributeResponse*
///
-(NSURLSessionTask*) upsertMerchantCustomAttributeWithMerchantId: (NSString*) merchantId
    key: (NSString*) key
    body: (SQUpsertMerchantCustomAttributeRequest*) body
    completionHandler: (void (^)(SQUpsertMerchantCustomAttributeResponse* output, NSError* error)) handler {
    // verify the required parameter 'merchantId' is set
    if (merchantId == nil) {
        NSParameterAssert(merchantId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"merchantId"] };
            NSError* error = [NSError errorWithDomain:kSQMerchantCustomAttributesApiErrorDomain code:kSQMerchantCustomAttributesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'key' is set
    if (key == nil) {
        NSParameterAssert(key);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"key"] };
            NSError* error = [NSError errorWithDomain:kSQMerchantCustomAttributesApiErrorDomain code:kSQMerchantCustomAttributesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQMerchantCustomAttributesApiErrorDomain code:kSQMerchantCustomAttributesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/merchants/{merchant_id}/custom-attributes/{key}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (merchantId != nil) {
        pathParams[@"merchant_id"] = merchantId;
    }
    if (key != nil) {
        pathParams[@"key"] = key;
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
                              responseType: @"SQUpsertMerchantCustomAttributeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQUpsertMerchantCustomAttributeResponse*)data, error);
                                }
                            }];
}



@end
