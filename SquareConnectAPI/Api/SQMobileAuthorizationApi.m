#import "SQMobileAuthorizationApi.h"
#import "SQQueryParamCollection.h"
#import "SQApiClient.h"
#import "SQCreateMobileAuthorizationCodeRequest.h"
#import "SQCreateMobileAuthorizationCodeResponse.h"


@interface SQMobileAuthorizationApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SQMobileAuthorizationApi

NSString* kSQMobileAuthorizationApiErrorDomain = @"SQMobileAuthorizationApiErrorDomain";
NSInteger kSQMobileAuthorizationApiMissingParamErrorCode = 234513;

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
/// CreateMobileAuthorizationCode
/// Generates code to authorize a mobile application to connect to a Square card reader.  Authorization codes are one-time-use codes and expire 60 minutes after being issued.  __Important:__ The `Authorization` header you provide to this endpoint must have the following format:  ``` Authorization: Bearer ACCESS_TOKEN ```  Replace `ACCESS_TOKEN` with a [valid production authorization credential](https://developer.squareup.com/docs/build-basics/access-tokens).
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQCreateMobileAuthorizationCodeResponse*
///
-(NSURLSessionTask*) createMobileAuthorizationCodeWithBody: (SQCreateMobileAuthorizationCodeRequest*) body
    completionHandler: (void (^)(SQCreateMobileAuthorizationCodeResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQMobileAuthorizationApiErrorDomain code:kSQMobileAuthorizationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mobile/authorization-code"];

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
                              responseType: @"SQCreateMobileAuthorizationCodeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQCreateMobileAuthorizationCodeResponse*)data, error);
                                }
                            }];
}



@end
