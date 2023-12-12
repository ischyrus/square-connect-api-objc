#import "SQCardsApi.h"
#import "SQQueryParamCollection.h"
#import "SQApiClient.h"
#import "SQCreateCardRequest.h"
#import "SQCreateCardResponse.h"
#import "SQDisableCardResponse.h"
#import "SQListCardsResponse.h"
#import "SQRetrieveCardResponse.h"


@interface SQCardsApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SQCardsApi

NSString* kSQCardsApiErrorDomain = @"SQCardsApiErrorDomain";
NSInteger kSQCardsApiMissingParamErrorCode = 234513;

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
/// CreateCard
/// Adds a card on file to an existing merchant.
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQCreateCardResponse*
///
-(NSURLSessionTask*) createCardWithBody: (SQCreateCardRequest*) body
    completionHandler: (void (^)(SQCreateCardResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQCardsApiErrorDomain code:kSQCardsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/cards"];

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
                              responseType: @"SQCreateCardResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQCreateCardResponse*)data, error);
                                }
                            }];
}

///
/// DisableCard
/// Disables the card, preventing any further updates or charges. Disabling an already disabled card is allowed but has no effect.
///  @param cardId Unique ID for the desired Card. 
///
///  @returns SQDisableCardResponse*
///
-(NSURLSessionTask*) disableCardWithCardId: (NSString*) cardId
    completionHandler: (void (^)(SQDisableCardResponse* output, NSError* error)) handler {
    // verify the required parameter 'cardId' is set
    if (cardId == nil) {
        NSParameterAssert(cardId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"cardId"] };
            NSError* error = [NSError errorWithDomain:kSQCardsApiErrorDomain code:kSQCardsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/cards/{card_id}/disable"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (cardId != nil) {
        pathParams[@"card_id"] = cardId;
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
                              responseType: @"SQDisableCardResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQDisableCardResponse*)data, error);
                                }
                            }];
}

///
/// ListCards
/// Retrieves a list of cards owned by the account making the request. A max of 25 cards will be returned.
///  @param cursor A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination) for more information. (optional)
///
///  @param customerId Limit results to cards associated with the customer supplied. By default, all cards owned by the merchant are returned. (optional)
///
///  @param includeDisabled Includes disabled cards. By default, all enabled cards owned by the merchant are returned. (optional)
///
///  @param referenceId Limit results to cards associated with the reference_id supplied. (optional)
///
///  @param sortOrder Sorts the returned list by when the card was created with the specified order. This field defaults to ASC. (optional)
///
///  @returns SQListCardsResponse*
///
-(NSURLSessionTask*) listCardsWithCursor: (NSString*) cursor
    customerId: (NSString*) customerId
    includeDisabled: (NSNumber*) includeDisabled
    referenceId: (NSString*) referenceId
    sortOrder: (NSString*) sortOrder
    completionHandler: (void (^)(SQListCardsResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/cards"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (cursor != nil) {
        queryParams[@"cursor"] = cursor;
    }
    if (customerId != nil) {
        queryParams[@"customer_id"] = customerId;
    }
    if (includeDisabled != nil) {
        queryParams[@"include_disabled"] = [includeDisabled isEqual:@(YES)] ? @"true" : @"false";
    }
    if (referenceId != nil) {
        queryParams[@"reference_id"] = referenceId;
    }
    if (sortOrder != nil) {
        queryParams[@"sort_order"] = sortOrder;
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
                              responseType: @"SQListCardsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQListCardsResponse*)data, error);
                                }
                            }];
}

///
/// RetrieveCard
/// Retrieves details for a specific Card.
///  @param cardId Unique ID for the desired Card. 
///
///  @returns SQRetrieveCardResponse*
///
-(NSURLSessionTask*) retrieveCardWithCardId: (NSString*) cardId
    completionHandler: (void (^)(SQRetrieveCardResponse* output, NSError* error)) handler {
    // verify the required parameter 'cardId' is set
    if (cardId == nil) {
        NSParameterAssert(cardId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"cardId"] };
            NSError* error = [NSError errorWithDomain:kSQCardsApiErrorDomain code:kSQCardsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/cards/{card_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (cardId != nil) {
        pathParams[@"card_id"] = cardId;
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
                              responseType: @"SQRetrieveCardResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQRetrieveCardResponse*)data, error);
                                }
                            }];
}



@end
