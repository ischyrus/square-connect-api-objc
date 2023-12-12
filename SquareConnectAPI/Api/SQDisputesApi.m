#import "SQDisputesApi.h"
#import "SQQueryParamCollection.h"
#import "SQApiClient.h"
#import "SQAcceptDisputeResponse.h"
#import "SQCreateDisputeEvidenceTextRequest.h"
#import "SQCreateDisputeEvidenceTextResponse.h"
#import "SQDeleteDisputeEvidenceResponse.h"
#import "SQListDisputeEvidenceResponse.h"
#import "SQListDisputesResponse.h"
#import "SQRetrieveDisputeEvidenceResponse.h"
#import "SQRetrieveDisputeResponse.h"
#import "SQSubmitEvidenceResponse.h"


@interface SQDisputesApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SQDisputesApi

NSString* kSQDisputesApiErrorDomain = @"SQDisputesApiErrorDomain";
NSInteger kSQDisputesApiMissingParamErrorCode = 234513;

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
/// AcceptDispute
/// Accepts the loss on a dispute. Square returns the disputed amount to the cardholder and updates the dispute state to ACCEPTED.  Square debits the disputed amount from the seller’s Square account. If the Square account does not have sufficient funds, Square debits the associated bank account.
///  @param disputeId The ID of the dispute you want to accept. 
///
///  @returns SQAcceptDisputeResponse*
///
-(NSURLSessionTask*) acceptDisputeWithDisputeId: (NSString*) disputeId
    completionHandler: (void (^)(SQAcceptDisputeResponse* output, NSError* error)) handler {
    // verify the required parameter 'disputeId' is set
    if (disputeId == nil) {
        NSParameterAssert(disputeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"disputeId"] };
            NSError* error = [NSError errorWithDomain:kSQDisputesApiErrorDomain code:kSQDisputesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/disputes/{dispute_id}/accept"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (disputeId != nil) {
        pathParams[@"dispute_id"] = disputeId;
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
                              responseType: @"SQAcceptDisputeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQAcceptDisputeResponse*)data, error);
                                }
                            }];
}

///
/// CreateDisputeEvidenceText
/// Uploads text to use as evidence for a dispute challenge.
///  @param disputeId The ID of the dispute for which you want to upload evidence. 
///
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQCreateDisputeEvidenceTextResponse*
///
-(NSURLSessionTask*) createDisputeEvidenceTextWithDisputeId: (NSString*) disputeId
    body: (SQCreateDisputeEvidenceTextRequest*) body
    completionHandler: (void (^)(SQCreateDisputeEvidenceTextResponse* output, NSError* error)) handler {
    // verify the required parameter 'disputeId' is set
    if (disputeId == nil) {
        NSParameterAssert(disputeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"disputeId"] };
            NSError* error = [NSError errorWithDomain:kSQDisputesApiErrorDomain code:kSQDisputesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQDisputesApiErrorDomain code:kSQDisputesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/disputes/{dispute_id}/evidence-text"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (disputeId != nil) {
        pathParams[@"dispute_id"] = disputeId;
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
                              responseType: @"SQCreateDisputeEvidenceTextResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQCreateDisputeEvidenceTextResponse*)data, error);
                                }
                            }];
}

///
/// DeleteDisputeEvidence
/// Removes specified evidence from a dispute. Square does not send the bank any evidence that is removed.
///  @param disputeId The ID of the dispute from which you want to remove evidence. 
///
///  @param evidenceId The ID of the evidence you want to remove. 
///
///  @returns SQDeleteDisputeEvidenceResponse*
///
-(NSURLSessionTask*) deleteDisputeEvidenceWithDisputeId: (NSString*) disputeId
    evidenceId: (NSString*) evidenceId
    completionHandler: (void (^)(SQDeleteDisputeEvidenceResponse* output, NSError* error)) handler {
    // verify the required parameter 'disputeId' is set
    if (disputeId == nil) {
        NSParameterAssert(disputeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"disputeId"] };
            NSError* error = [NSError errorWithDomain:kSQDisputesApiErrorDomain code:kSQDisputesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'evidenceId' is set
    if (evidenceId == nil) {
        NSParameterAssert(evidenceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"evidenceId"] };
            NSError* error = [NSError errorWithDomain:kSQDisputesApiErrorDomain code:kSQDisputesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/disputes/{dispute_id}/evidence/{evidence_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (disputeId != nil) {
        pathParams[@"dispute_id"] = disputeId;
    }
    if (evidenceId != nil) {
        pathParams[@"evidence_id"] = evidenceId;
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
                              responseType: @"SQDeleteDisputeEvidenceResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQDeleteDisputeEvidenceResponse*)data, error);
                                }
                            }];
}

///
/// ListDisputeEvidence
/// Returns a list of evidence associated with a dispute.
///  @param disputeId The ID of the dispute. 
///
///  @param cursor A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
///
///  @returns SQListDisputeEvidenceResponse*
///
-(NSURLSessionTask*) listDisputeEvidenceWithDisputeId: (NSString*) disputeId
    cursor: (NSString*) cursor
    completionHandler: (void (^)(SQListDisputeEvidenceResponse* output, NSError* error)) handler {
    // verify the required parameter 'disputeId' is set
    if (disputeId == nil) {
        NSParameterAssert(disputeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"disputeId"] };
            NSError* error = [NSError errorWithDomain:kSQDisputesApiErrorDomain code:kSQDisputesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/disputes/{dispute_id}/evidence"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (disputeId != nil) {
        pathParams[@"dispute_id"] = disputeId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
                              responseType: @"SQListDisputeEvidenceResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQListDisputeEvidenceResponse*)data, error);
                                }
                            }];
}

///
/// ListDisputes
/// Returns a list of disputes associated with a particular account.
///  @param cursor A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
///
///  @param states The dispute states used to filter the result. If not specified, the endpoint returns all disputes. (optional)
///
///  @param locationId The ID of the location for which to return a list of disputes. If not specified, the endpoint returns disputes associated with all locations. (optional)
///
///  @returns SQListDisputesResponse*
///
-(NSURLSessionTask*) listDisputesWithCursor: (NSString*) cursor
    states: (NSString*) states
    locationId: (NSString*) locationId
    completionHandler: (void (^)(SQListDisputesResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/disputes"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (cursor != nil) {
        queryParams[@"cursor"] = cursor;
    }
    if (states != nil) {
        queryParams[@"states"] = states;
    }
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
                              responseType: @"SQListDisputesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQListDisputesResponse*)data, error);
                                }
                            }];
}

///
/// RetrieveDispute
/// Returns details about a specific dispute.
///  @param disputeId The ID of the dispute you want more details about. 
///
///  @returns SQRetrieveDisputeResponse*
///
-(NSURLSessionTask*) retrieveDisputeWithDisputeId: (NSString*) disputeId
    completionHandler: (void (^)(SQRetrieveDisputeResponse* output, NSError* error)) handler {
    // verify the required parameter 'disputeId' is set
    if (disputeId == nil) {
        NSParameterAssert(disputeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"disputeId"] };
            NSError* error = [NSError errorWithDomain:kSQDisputesApiErrorDomain code:kSQDisputesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/disputes/{dispute_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (disputeId != nil) {
        pathParams[@"dispute_id"] = disputeId;
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
                              responseType: @"SQRetrieveDisputeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQRetrieveDisputeResponse*)data, error);
                                }
                            }];
}

///
/// RetrieveDisputeEvidence
/// Returns the metadata for the evidence specified in the request URL path.  You must maintain a copy of any evidence uploaded if you want to reference it later. Evidence cannot be downloaded after you upload it.
///  @param disputeId The ID of the dispute from which you want to retrieve evidence metadata. 
///
///  @param evidenceId The ID of the evidence to retrieve. 
///
///  @returns SQRetrieveDisputeEvidenceResponse*
///
-(NSURLSessionTask*) retrieveDisputeEvidenceWithDisputeId: (NSString*) disputeId
    evidenceId: (NSString*) evidenceId
    completionHandler: (void (^)(SQRetrieveDisputeEvidenceResponse* output, NSError* error)) handler {
    // verify the required parameter 'disputeId' is set
    if (disputeId == nil) {
        NSParameterAssert(disputeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"disputeId"] };
            NSError* error = [NSError errorWithDomain:kSQDisputesApiErrorDomain code:kSQDisputesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'evidenceId' is set
    if (evidenceId == nil) {
        NSParameterAssert(evidenceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"evidenceId"] };
            NSError* error = [NSError errorWithDomain:kSQDisputesApiErrorDomain code:kSQDisputesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/disputes/{dispute_id}/evidence/{evidence_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (disputeId != nil) {
        pathParams[@"dispute_id"] = disputeId;
    }
    if (evidenceId != nil) {
        pathParams[@"evidence_id"] = evidenceId;
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
                              responseType: @"SQRetrieveDisputeEvidenceResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQRetrieveDisputeEvidenceResponse*)data, error);
                                }
                            }];
}

///
/// SubmitEvidence
/// Submits evidence to the cardholder's bank.  The evidence submitted by this endpoint includes evidence uploaded using the [CreateDisputeEvidenceFile](https://developer.squareup.com/reference/square_2023-10-18/disputes-api/create-dispute-evidence-file) and [CreateDisputeEvidenceText](https://developer.squareup.com/reference/square_2023-10-18/disputes-api/create-dispute-evidence-text) endpoints and evidence automatically provided by Square, when available. Evidence cannot be removed from a dispute after submission.
///  @param disputeId The ID of the dispute for which you want to submit evidence. 
///
///  @returns SQSubmitEvidenceResponse*
///
-(NSURLSessionTask*) submitEvidenceWithDisputeId: (NSString*) disputeId
    completionHandler: (void (^)(SQSubmitEvidenceResponse* output, NSError* error)) handler {
    // verify the required parameter 'disputeId' is set
    if (disputeId == nil) {
        NSParameterAssert(disputeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"disputeId"] };
            NSError* error = [NSError errorWithDomain:kSQDisputesApiErrorDomain code:kSQDisputesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/disputes/{dispute_id}/submit-evidence"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (disputeId != nil) {
        pathParams[@"dispute_id"] = disputeId;
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
                              responseType: @"SQSubmitEvidenceResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQSubmitEvidenceResponse*)data, error);
                                }
                            }];
}



@end
