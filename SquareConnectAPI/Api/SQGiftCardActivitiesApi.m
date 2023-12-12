#import "SQGiftCardActivitiesApi.h"
#import "SQQueryParamCollection.h"
#import "SQApiClient.h"
#import "SQCreateGiftCardActivityRequest.h"
#import "SQCreateGiftCardActivityResponse.h"
#import "SQListGiftCardActivitiesResponse.h"


@interface SQGiftCardActivitiesApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SQGiftCardActivitiesApi

NSString* kSQGiftCardActivitiesApiErrorDomain = @"SQGiftCardActivitiesApiErrorDomain";
NSInteger kSQGiftCardActivitiesApiMissingParamErrorCode = 234513;

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
/// CreateGiftCardActivity
/// Creates a gift card activity to manage the balance or state of a [gift card](https://developer.squareup.com/reference/square_2023-10-18/objects/GiftCard).  For example, you create an `ACTIVATE` activity to activate a gift card with an initial balance  before the gift card can be used.
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQCreateGiftCardActivityResponse*
///
-(NSURLSessionTask*) createGiftCardActivityWithBody: (SQCreateGiftCardActivityRequest*) body
    completionHandler: (void (^)(SQCreateGiftCardActivityResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQGiftCardActivitiesApiErrorDomain code:kSQGiftCardActivitiesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/gift-cards/activities"];

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
                              responseType: @"SQCreateGiftCardActivityResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQCreateGiftCardActivityResponse*)data, error);
                                }
                            }];
}

///
/// ListGiftCardActivities
/// Lists gift card activities. By default, you get gift card activities for all gift cards in the seller's account. You can optionally specify query parameters to filter the list. For example, you can get a list of gift card activities for a gift card, for all gift cards in a specific region, or for activities within a time window.
///  @param giftCardId If a gift card ID is provided, the endpoint returns activities related  to the specified gift card. Otherwise, the endpoint returns all gift card activities for  the seller. (optional)
///
///  @param type If a [type](https://developer.squareup.com/reference/square_2023-10-18/objects/GiftCardActivityType) is provided, the endpoint returns gift card activities of the specified type.  Otherwise, the endpoint returns all types of gift card activities. (optional)
///
///  @param locationId If a location ID is provided, the endpoint returns gift card activities for the specified location.  Otherwise, the endpoint returns gift card activities for all locations. (optional)
///
///  @param beginTime The timestamp for the beginning of the reporting period, in RFC 3339 format. This start time is inclusive. The default value is the current time minus one year. (optional)
///
///  @param endTime The timestamp for the end of the reporting period, in RFC 3339 format. This end time is inclusive. The default value is the current time. (optional)
///
///  @param limit If a limit is provided, the endpoint returns the specified number  of results (or fewer) per page. The maximum value is 100. The default value is 50. For more information, see [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination). (optional)
///
///  @param cursor A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. If a cursor is not provided, the endpoint returns the first page of the results. For more information, see [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination). (optional)
///
///  @param sortOrder The order in which the endpoint returns the activities, based on `created_at`. - `ASC` - Oldest to newest. - `DESC` - Newest to oldest (default). (optional)
///
///  @returns SQListGiftCardActivitiesResponse*
///
-(NSURLSessionTask*) listGiftCardActivitiesWithGiftCardId: (NSString*) giftCardId
    type: (NSString*) type
    locationId: (NSString*) locationId
    beginTime: (NSString*) beginTime
    endTime: (NSString*) endTime
    limit: (NSNumber*) limit
    cursor: (NSString*) cursor
    sortOrder: (NSString*) sortOrder
    completionHandler: (void (^)(SQListGiftCardActivitiesResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/gift-cards/activities"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (giftCardId != nil) {
        queryParams[@"gift_card_id"] = giftCardId;
    }
    if (type != nil) {
        queryParams[@"type"] = type;
    }
    if (locationId != nil) {
        queryParams[@"location_id"] = locationId;
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
                              responseType: @"SQListGiftCardActivitiesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQListGiftCardActivitiesResponse*)data, error);
                                }
                            }];
}



@end
