#import "SQBankAccountsApi.h"
#import "SQQueryParamCollection.h"
#import "SQApiClient.h"
#import "SQGetBankAccountByV1IdResponse.h"
#import "SQGetBankAccountResponse.h"
#import "SQListBankAccountsResponse.h"


@interface SQBankAccountsApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SQBankAccountsApi

NSString* kSQBankAccountsApiErrorDomain = @"SQBankAccountsApiErrorDomain";
NSInteger kSQBankAccountsApiMissingParamErrorCode = 234513;

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
/// GetBankAccount
/// Returns details of a [BankAccount](https://developer.squareup.com/reference/square_2023-10-18/objects/BankAccount) linked to a Square account.
///  @param bankAccountId Square-issued ID of the desired `BankAccount`. 
///
///  @returns SQGetBankAccountResponse*
///
-(NSURLSessionTask*) getBankAccountWithBankAccountId: (NSString*) bankAccountId
    completionHandler: (void (^)(SQGetBankAccountResponse* output, NSError* error)) handler {
    // verify the required parameter 'bankAccountId' is set
    if (bankAccountId == nil) {
        NSParameterAssert(bankAccountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"bankAccountId"] };
            NSError* error = [NSError errorWithDomain:kSQBankAccountsApiErrorDomain code:kSQBankAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/bank-accounts/{bank_account_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (bankAccountId != nil) {
        pathParams[@"bank_account_id"] = bankAccountId;
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
                              responseType: @"SQGetBankAccountResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQGetBankAccountResponse*)data, error);
                                }
                            }];
}

///
/// GetBankAccountByV1Id
/// Returns details of a [BankAccount](https://developer.squareup.com/reference/square_2023-10-18/objects/BankAccount) identified by V1 bank account ID.
///  @param v1BankAccountId Connect V1 ID of the desired `BankAccount`. For more information, see  [Retrieve a bank account by using an ID issued by V1 Bank Accounts API](https://developer.squareup.com/docs/bank-accounts-api#retrieve-a-bank-account-by-using-an-id-issued-by-v1-bank-accounts-api). 
///
///  @returns SQGetBankAccountByV1IdResponse*
///
-(NSURLSessionTask*) getBankAccountByV1IdWithV1BankAccountId: (NSString*) v1BankAccountId
    completionHandler: (void (^)(SQGetBankAccountByV1IdResponse* output, NSError* error)) handler {
    // verify the required parameter 'v1BankAccountId' is set
    if (v1BankAccountId == nil) {
        NSParameterAssert(v1BankAccountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"v1BankAccountId"] };
            NSError* error = [NSError errorWithDomain:kSQBankAccountsApiErrorDomain code:kSQBankAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/bank-accounts/by-v1-id/{v1_bank_account_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (v1BankAccountId != nil) {
        pathParams[@"v1_bank_account_id"] = v1BankAccountId;
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
                              responseType: @"SQGetBankAccountByV1IdResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQGetBankAccountByV1IdResponse*)data, error);
                                }
                            }];
}

///
/// ListBankAccounts
/// Returns a list of [BankAccount](https://developer.squareup.com/reference/square_2023-10-18/objects/BankAccount) objects linked to a Square account.
///  @param cursor The pagination cursor returned by a previous call to this endpoint. Use it in the next `ListBankAccounts` request to retrieve the next set  of results.  See the [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination) guide for more information. (optional)
///
///  @param limit Upper limit on the number of bank accounts to return in the response.  Currently, 1000 is the largest supported limit. You can specify a limit  of up to 1000 bank accounts. This is also the default limit. (optional)
///
///  @param locationId Location ID. You can specify this optional filter  to retrieve only the linked bank accounts belonging to a specific location. (optional)
///
///  @returns SQListBankAccountsResponse*
///
-(NSURLSessionTask*) listBankAccountsWithCursor: (NSString*) cursor
    limit: (NSNumber*) limit
    locationId: (NSString*) locationId
    completionHandler: (void (^)(SQListBankAccountsResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/bank-accounts"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (cursor != nil) {
        queryParams[@"cursor"] = cursor;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
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
                              responseType: @"SQListBankAccountsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQListBankAccountsResponse*)data, error);
                                }
                            }];
}



@end
