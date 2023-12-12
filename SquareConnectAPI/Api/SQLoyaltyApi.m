#import "SQLoyaltyApi.h"
#import "SQQueryParamCollection.h"
#import "SQApiClient.h"
#import "SQAccumulateLoyaltyPointsRequest.h"
#import "SQAccumulateLoyaltyPointsResponse.h"
#import "SQAdjustLoyaltyPointsRequest.h"
#import "SQAdjustLoyaltyPointsResponse.h"
#import "SQCalculateLoyaltyPointsRequest.h"
#import "SQCalculateLoyaltyPointsResponse.h"
#import "SQCancelLoyaltyPromotionResponse.h"
#import "SQCreateLoyaltyAccountRequest.h"
#import "SQCreateLoyaltyAccountResponse.h"
#import "SQCreateLoyaltyPromotionRequest.h"
#import "SQCreateLoyaltyPromotionResponse.h"
#import "SQCreateLoyaltyRewardRequest.h"
#import "SQCreateLoyaltyRewardResponse.h"
#import "SQDeleteLoyaltyRewardResponse.h"
#import "SQListLoyaltyProgramsResponse.h"
#import "SQListLoyaltyPromotionsResponse.h"
#import "SQRedeemLoyaltyRewardRequest.h"
#import "SQRedeemLoyaltyRewardResponse.h"
#import "SQRetrieveLoyaltyAccountResponse.h"
#import "SQRetrieveLoyaltyProgramResponse.h"
#import "SQRetrieveLoyaltyPromotionResponse.h"
#import "SQRetrieveLoyaltyRewardResponse.h"
#import "SQSearchLoyaltyAccountsRequest.h"
#import "SQSearchLoyaltyAccountsResponse.h"
#import "SQSearchLoyaltyEventsRequest.h"
#import "SQSearchLoyaltyEventsResponse.h"
#import "SQSearchLoyaltyRewardsRequest.h"
#import "SQSearchLoyaltyRewardsResponse.h"


@interface SQLoyaltyApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SQLoyaltyApi

NSString* kSQLoyaltyApiErrorDomain = @"SQLoyaltyApiErrorDomain";
NSInteger kSQLoyaltyApiMissingParamErrorCode = 234513;

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
/// AccumulateLoyaltyPoints
/// Adds points earned from a purchase to a [loyalty account](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyAccount).  - If you are using the Orders API to manage orders, provide the `order_id`. Square reads the order to compute the points earned from both the base loyalty program and an associated [loyalty promotion](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyPromotion). For purchases that qualify for multiple accrual rules, Square computes points based on the accrual rule that grants the most points. For purchases that qualify for multiple promotions, Square computes points based on the most recently created promotion. A purchase must first qualify for program points to be eligible for promotion points.  - If you are not using the Orders API to manage orders, provide `points` with the number of points to add. You must first perform a client-side computation of the points earned from the loyalty program and loyalty promotion. For spend-based and visit-based programs, you can call [CalculateLoyaltyPoints](https://developer.squareup.com/reference/square_2023-10-18/loyalty-api/calculate-loyalty-points) to compute the points earned from the base loyalty program. For information about computing points earned from a loyalty promotion, see [Calculating promotion points](https://developer.squareup.com/docs/loyalty-api/loyalty-promotions#calculate-promotion-points).
///  @param accountId The ID of the target [loyalty account](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyAccount). 
///
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQAccumulateLoyaltyPointsResponse*
///
-(NSURLSessionTask*) accumulateLoyaltyPointsWithAccountId: (NSString*) accountId
    body: (SQAccumulateLoyaltyPointsRequest*) body
    completionHandler: (void (^)(SQAccumulateLoyaltyPointsResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kSQLoyaltyApiErrorDomain code:kSQLoyaltyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQLoyaltyApiErrorDomain code:kSQLoyaltyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/loyalty/accounts/{account_id}/accumulate"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"account_id"] = accountId;
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
                              responseType: @"SQAccumulateLoyaltyPointsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQAccumulateLoyaltyPointsResponse*)data, error);
                                }
                            }];
}

///
/// AdjustLoyaltyPoints
/// Adds points to or subtracts points from a buyer's account.  Use this endpoint only when you need to manually adjust points. Otherwise, in your application flow, you call [AccumulateLoyaltyPoints](https://developer.squareup.com/reference/square_2023-10-18/loyalty-api/accumulate-loyalty-points) to add points when a buyer pays for the purchase.
///  @param accountId The ID of the target [loyalty account](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyAccount). 
///
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQAdjustLoyaltyPointsResponse*
///
-(NSURLSessionTask*) adjustLoyaltyPointsWithAccountId: (NSString*) accountId
    body: (SQAdjustLoyaltyPointsRequest*) body
    completionHandler: (void (^)(SQAdjustLoyaltyPointsResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kSQLoyaltyApiErrorDomain code:kSQLoyaltyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQLoyaltyApiErrorDomain code:kSQLoyaltyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/loyalty/accounts/{account_id}/adjust"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"account_id"] = accountId;
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
                              responseType: @"SQAdjustLoyaltyPointsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQAdjustLoyaltyPointsResponse*)data, error);
                                }
                            }];
}

///
/// CalculateLoyaltyPoints
/// Calculates the number of points a buyer can earn from a purchase. Applications might call this endpoint to display the points to the buyer.  - If you are using the Orders API to manage orders, provide the `order_id` and (optional) `loyalty_account_id`. Square reads the order to compute the points earned from the base loyalty program and an associated [loyalty promotion](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyPromotion).  - If you are not using the Orders API to manage orders, provide `transaction_amount_money` with the purchase amount. Square uses this amount to calculate the points earned from the base loyalty program, but not points earned from a loyalty promotion. For spend-based and visit-based programs, the `tax_mode` setting of the accrual rule indicates how taxes should be treated for loyalty points accrual. If the purchase qualifies for program points, call [ListLoyaltyPromotions](https://developer.squareup.com/reference/square_2023-10-18/loyalty-api/list-loyalty-promotions) and perform a client-side computation to calculate whether the purchase also qualifies for promotion points. For more information, see [Calculating promotion points](https://developer.squareup.com/docs/loyalty-api/loyalty-promotions#calculate-promotion-points).
///  @param programId The ID of the [loyalty program](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyProgram), which defines the rules for accruing points. 
///
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQCalculateLoyaltyPointsResponse*
///
-(NSURLSessionTask*) calculateLoyaltyPointsWithProgramId: (NSString*) programId
    body: (SQCalculateLoyaltyPointsRequest*) body
    completionHandler: (void (^)(SQCalculateLoyaltyPointsResponse* output, NSError* error)) handler {
    // verify the required parameter 'programId' is set
    if (programId == nil) {
        NSParameterAssert(programId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"programId"] };
            NSError* error = [NSError errorWithDomain:kSQLoyaltyApiErrorDomain code:kSQLoyaltyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQLoyaltyApiErrorDomain code:kSQLoyaltyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/loyalty/programs/{program_id}/calculate"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (programId != nil) {
        pathParams[@"program_id"] = programId;
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
                              responseType: @"SQCalculateLoyaltyPointsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQCalculateLoyaltyPointsResponse*)data, error);
                                }
                            }];
}

///
/// CancelLoyaltyPromotion
/// Cancels a loyalty promotion. Use this endpoint to cancel an `ACTIVE` promotion earlier than the end date, cancel an `ACTIVE` promotion when an end date is not specified, or cancel a `SCHEDULED` promotion. Because updating a promotion is not supported, you can also use this endpoint to cancel a promotion before you create a new one.  This endpoint sets the loyalty promotion to the `CANCELED` state
///  @param promotionId The ID of the [loyalty promotion](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyPromotion) to cancel. You can cancel a promotion that has an `ACTIVE` or `SCHEDULED` status. 
///
///  @param programId The ID of the base [loyalty program](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyProgram). 
///
///  @returns SQCancelLoyaltyPromotionResponse*
///
-(NSURLSessionTask*) cancelLoyaltyPromotionWithPromotionId: (NSString*) promotionId
    programId: (NSString*) programId
    completionHandler: (void (^)(SQCancelLoyaltyPromotionResponse* output, NSError* error)) handler {
    // verify the required parameter 'promotionId' is set
    if (promotionId == nil) {
        NSParameterAssert(promotionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"promotionId"] };
            NSError* error = [NSError errorWithDomain:kSQLoyaltyApiErrorDomain code:kSQLoyaltyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'programId' is set
    if (programId == nil) {
        NSParameterAssert(programId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"programId"] };
            NSError* error = [NSError errorWithDomain:kSQLoyaltyApiErrorDomain code:kSQLoyaltyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/loyalty/programs/{program_id}/promotions/{promotion_id}/cancel"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (promotionId != nil) {
        pathParams[@"promotion_id"] = promotionId;
    }
    if (programId != nil) {
        pathParams[@"program_id"] = programId;
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
                              responseType: @"SQCancelLoyaltyPromotionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQCancelLoyaltyPromotionResponse*)data, error);
                                }
                            }];
}

///
/// CreateLoyaltyAccount
/// Creates a loyalty account. To create a loyalty account, you must provide the `program_id` and a `mapping` with the `phone_number` of the buyer.
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQCreateLoyaltyAccountResponse*
///
-(NSURLSessionTask*) createLoyaltyAccountWithBody: (SQCreateLoyaltyAccountRequest*) body
    completionHandler: (void (^)(SQCreateLoyaltyAccountResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQLoyaltyApiErrorDomain code:kSQLoyaltyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/loyalty/accounts"];

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
                              responseType: @"SQCreateLoyaltyAccountResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQCreateLoyaltyAccountResponse*)data, error);
                                }
                            }];
}

///
/// CreateLoyaltyPromotion
/// Creates a loyalty promotion for a [loyalty program](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyProgram). A loyalty promotion enables buyers to earn points in addition to those earned from the base loyalty program.  This endpoint sets the loyalty promotion to the `ACTIVE` or `SCHEDULED` status, depending on the `available_time` setting. A loyalty program can have a maximum of 10 loyalty promotions with an `ACTIVE` or `SCHEDULED` status.
///  @param programId The ID of the [loyalty program](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyProgram) to associate with the promotion. To get the program ID, call [RetrieveLoyaltyProgram](https://developer.squareup.com/reference/square_2023-10-18/loyalty-api/retrieve-loyalty-program) using the `main` keyword. 
///
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQCreateLoyaltyPromotionResponse*
///
-(NSURLSessionTask*) createLoyaltyPromotionWithProgramId: (NSString*) programId
    body: (SQCreateLoyaltyPromotionRequest*) body
    completionHandler: (void (^)(SQCreateLoyaltyPromotionResponse* output, NSError* error)) handler {
    // verify the required parameter 'programId' is set
    if (programId == nil) {
        NSParameterAssert(programId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"programId"] };
            NSError* error = [NSError errorWithDomain:kSQLoyaltyApiErrorDomain code:kSQLoyaltyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQLoyaltyApiErrorDomain code:kSQLoyaltyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/loyalty/programs/{program_id}/promotions"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (programId != nil) {
        pathParams[@"program_id"] = programId;
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
                              responseType: @"SQCreateLoyaltyPromotionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQCreateLoyaltyPromotionResponse*)data, error);
                                }
                            }];
}

///
/// CreateLoyaltyReward
/// Creates a loyalty reward. In the process, the endpoint does following:  - Uses the `reward_tier_id` in the request to determine the number of points to lock for this reward. - If the request includes `order_id`, it adds the reward and related discount to the order.  After a reward is created, the points are locked and not available for the buyer to redeem another reward.
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQCreateLoyaltyRewardResponse*
///
-(NSURLSessionTask*) createLoyaltyRewardWithBody: (SQCreateLoyaltyRewardRequest*) body
    completionHandler: (void (^)(SQCreateLoyaltyRewardResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQLoyaltyApiErrorDomain code:kSQLoyaltyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/loyalty/rewards"];

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
                              responseType: @"SQCreateLoyaltyRewardResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQCreateLoyaltyRewardResponse*)data, error);
                                }
                            }];
}

///
/// DeleteLoyaltyReward
/// Deletes a loyalty reward by doing the following:  - Returns the loyalty points back to the loyalty account. - If an order ID was specified when the reward was created (see [CreateLoyaltyReward](https://developer.squareup.com/reference/square_2023-10-18/loyalty-api/create-loyalty-reward)), it updates the order by removing the reward and related discounts.  You cannot delete a reward that has reached the terminal state (REDEEMED).
///  @param rewardId The ID of the [loyalty reward](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyReward) to delete. 
///
///  @returns SQDeleteLoyaltyRewardResponse*
///
-(NSURLSessionTask*) deleteLoyaltyRewardWithRewardId: (NSString*) rewardId
    completionHandler: (void (^)(SQDeleteLoyaltyRewardResponse* output, NSError* error)) handler {
    // verify the required parameter 'rewardId' is set
    if (rewardId == nil) {
        NSParameterAssert(rewardId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"rewardId"] };
            NSError* error = [NSError errorWithDomain:kSQLoyaltyApiErrorDomain code:kSQLoyaltyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/loyalty/rewards/{reward_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (rewardId != nil) {
        pathParams[@"reward_id"] = rewardId;
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
                              responseType: @"SQDeleteLoyaltyRewardResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQDeleteLoyaltyRewardResponse*)data, error);
                                }
                            }];
}

///
/// ListLoyaltyPrograms
/// Returns a list of loyalty programs in the seller's account. Loyalty programs define how buyers can earn points and redeem points for rewards. Square sellers can have only one loyalty program, which is created and managed from the Seller Dashboard. For more information, see [Loyalty Program Overview](https://developer.squareup.com/docs/loyalty/overview).   Replaced with [RetrieveLoyaltyProgram](https://developer.squareup.com/reference/square_2023-10-18/loyalty-api/retrieve-loyalty-program) when used with the keyword `main`.
///  @returns SQListLoyaltyProgramsResponse*
///
-(NSURLSessionTask*) listLoyaltyProgramsWithCompletionHandler: 
    (void (^)(SQListLoyaltyProgramsResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/loyalty/programs"];

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
                              responseType: @"SQListLoyaltyProgramsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQListLoyaltyProgramsResponse*)data, error);
                                }
                            }];
}

///
/// ListLoyaltyPromotions
/// Lists the loyalty promotions associated with a [loyalty program](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyProgram). Results are sorted by the `created_at` date in descending order (newest to oldest).
///  @param programId The ID of the base [loyalty program](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyProgram). To get the program ID, call [RetrieveLoyaltyProgram](https://developer.squareup.com/reference/square_2023-10-18/loyalty-api/retrieve-loyalty-program) using the `main` keyword. 
///
///  @param status The status to filter the results by. If a status is provided, only loyalty promotions with the specified status are returned. Otherwise, all loyalty promotions associated with the loyalty program are returned. (optional)
///
///  @param cursor The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
///
///  @param limit The maximum number of results to return in a single paged response. The minimum value is 1 and the maximum value is 30. The default value is 30. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
///
///  @returns SQListLoyaltyPromotionsResponse*
///
-(NSURLSessionTask*) listLoyaltyPromotionsWithProgramId: (NSString*) programId
    status: (NSString*) status
    cursor: (NSString*) cursor
    limit: (NSNumber*) limit
    completionHandler: (void (^)(SQListLoyaltyPromotionsResponse* output, NSError* error)) handler {
    // verify the required parameter 'programId' is set
    if (programId == nil) {
        NSParameterAssert(programId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"programId"] };
            NSError* error = [NSError errorWithDomain:kSQLoyaltyApiErrorDomain code:kSQLoyaltyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/loyalty/programs/{program_id}/promotions"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (programId != nil) {
        pathParams[@"program_id"] = programId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (status != nil) {
        queryParams[@"status"] = status;
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
                              responseType: @"SQListLoyaltyPromotionsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQListLoyaltyPromotionsResponse*)data, error);
                                }
                            }];
}

///
/// RedeemLoyaltyReward
/// Redeems a loyalty reward.  The endpoint sets the reward to the `REDEEMED` terminal state.  If you are using your own order processing system (not using the Orders API), you call this endpoint after the buyer paid for the purchase.  After the reward reaches the terminal state, it cannot be deleted. In other words, points used for the reward cannot be returned to the account.
///  @param rewardId The ID of the [loyalty reward](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyReward) to redeem. 
///
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQRedeemLoyaltyRewardResponse*
///
-(NSURLSessionTask*) redeemLoyaltyRewardWithRewardId: (NSString*) rewardId
    body: (SQRedeemLoyaltyRewardRequest*) body
    completionHandler: (void (^)(SQRedeemLoyaltyRewardResponse* output, NSError* error)) handler {
    // verify the required parameter 'rewardId' is set
    if (rewardId == nil) {
        NSParameterAssert(rewardId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"rewardId"] };
            NSError* error = [NSError errorWithDomain:kSQLoyaltyApiErrorDomain code:kSQLoyaltyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQLoyaltyApiErrorDomain code:kSQLoyaltyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/loyalty/rewards/{reward_id}/redeem"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (rewardId != nil) {
        pathParams[@"reward_id"] = rewardId;
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
                              responseType: @"SQRedeemLoyaltyRewardResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQRedeemLoyaltyRewardResponse*)data, error);
                                }
                            }];
}

///
/// RetrieveLoyaltyAccount
/// Retrieves a loyalty account.
///  @param accountId The ID of the [loyalty account](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyAccount) to retrieve. 
///
///  @returns SQRetrieveLoyaltyAccountResponse*
///
-(NSURLSessionTask*) retrieveLoyaltyAccountWithAccountId: (NSString*) accountId
    completionHandler: (void (^)(SQRetrieveLoyaltyAccountResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kSQLoyaltyApiErrorDomain code:kSQLoyaltyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/loyalty/accounts/{account_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"account_id"] = accountId;
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
                              responseType: @"SQRetrieveLoyaltyAccountResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQRetrieveLoyaltyAccountResponse*)data, error);
                                }
                            }];
}

///
/// RetrieveLoyaltyProgram
/// Retrieves the loyalty program in a seller's account, specified by the program ID or the keyword `main`.  Loyalty programs define how buyers can earn points and redeem points for rewards. Square sellers can have only one loyalty program, which is created and managed from the Seller Dashboard. For more information, see [Loyalty Program Overview](https://developer.squareup.com/docs/loyalty/overview).
///  @param programId The ID of the loyalty program or the keyword `main`. Either value can be used to retrieve the single loyalty program that belongs to the seller. 
///
///  @returns SQRetrieveLoyaltyProgramResponse*
///
-(NSURLSessionTask*) retrieveLoyaltyProgramWithProgramId: (NSString*) programId
    completionHandler: (void (^)(SQRetrieveLoyaltyProgramResponse* output, NSError* error)) handler {
    // verify the required parameter 'programId' is set
    if (programId == nil) {
        NSParameterAssert(programId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"programId"] };
            NSError* error = [NSError errorWithDomain:kSQLoyaltyApiErrorDomain code:kSQLoyaltyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/loyalty/programs/{program_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (programId != nil) {
        pathParams[@"program_id"] = programId;
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
                              responseType: @"SQRetrieveLoyaltyProgramResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQRetrieveLoyaltyProgramResponse*)data, error);
                                }
                            }];
}

///
/// RetrieveLoyaltyPromotion
/// Retrieves a loyalty promotion.
///  @param promotionId The ID of the [loyalty promotion](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyPromotion) to retrieve. 
///
///  @param programId The ID of the base [loyalty program](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyProgram). To get the program ID, call [RetrieveLoyaltyProgram](https://developer.squareup.com/reference/square_2023-10-18/loyalty-api/retrieve-loyalty-program) using the `main` keyword. 
///
///  @returns SQRetrieveLoyaltyPromotionResponse*
///
-(NSURLSessionTask*) retrieveLoyaltyPromotionWithPromotionId: (NSString*) promotionId
    programId: (NSString*) programId
    completionHandler: (void (^)(SQRetrieveLoyaltyPromotionResponse* output, NSError* error)) handler {
    // verify the required parameter 'promotionId' is set
    if (promotionId == nil) {
        NSParameterAssert(promotionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"promotionId"] };
            NSError* error = [NSError errorWithDomain:kSQLoyaltyApiErrorDomain code:kSQLoyaltyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'programId' is set
    if (programId == nil) {
        NSParameterAssert(programId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"programId"] };
            NSError* error = [NSError errorWithDomain:kSQLoyaltyApiErrorDomain code:kSQLoyaltyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/loyalty/programs/{program_id}/promotions/{promotion_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (promotionId != nil) {
        pathParams[@"promotion_id"] = promotionId;
    }
    if (programId != nil) {
        pathParams[@"program_id"] = programId;
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
                              responseType: @"SQRetrieveLoyaltyPromotionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQRetrieveLoyaltyPromotionResponse*)data, error);
                                }
                            }];
}

///
/// RetrieveLoyaltyReward
/// Retrieves a loyalty reward.
///  @param rewardId The ID of the [loyalty reward](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyReward) to retrieve. 
///
///  @returns SQRetrieveLoyaltyRewardResponse*
///
-(NSURLSessionTask*) retrieveLoyaltyRewardWithRewardId: (NSString*) rewardId
    completionHandler: (void (^)(SQRetrieveLoyaltyRewardResponse* output, NSError* error)) handler {
    // verify the required parameter 'rewardId' is set
    if (rewardId == nil) {
        NSParameterAssert(rewardId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"rewardId"] };
            NSError* error = [NSError errorWithDomain:kSQLoyaltyApiErrorDomain code:kSQLoyaltyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/loyalty/rewards/{reward_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (rewardId != nil) {
        pathParams[@"reward_id"] = rewardId;
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
                              responseType: @"SQRetrieveLoyaltyRewardResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQRetrieveLoyaltyRewardResponse*)data, error);
                                }
                            }];
}

///
/// SearchLoyaltyAccounts
/// Searches for loyalty accounts in a loyalty program.  You can search for a loyalty account using the phone number or customer ID associated with the account. To return all loyalty accounts, specify an empty `query` object or omit it entirely.  Search results are sorted by `created_at` in ascending order.
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQSearchLoyaltyAccountsResponse*
///
-(NSURLSessionTask*) searchLoyaltyAccountsWithBody: (SQSearchLoyaltyAccountsRequest*) body
    completionHandler: (void (^)(SQSearchLoyaltyAccountsResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQLoyaltyApiErrorDomain code:kSQLoyaltyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/loyalty/accounts/search"];

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
                              responseType: @"SQSearchLoyaltyAccountsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQSearchLoyaltyAccountsResponse*)data, error);
                                }
                            }];
}

///
/// SearchLoyaltyEvents
/// Searches for loyalty events.  A Square loyalty program maintains a ledger of events that occur during the lifetime of a buyer's loyalty account. Each change in the point balance (for example, points earned, points redeemed, and points expired) is recorded in the ledger. Using this endpoint, you can search the ledger for events.  Search results are sorted by `created_at` in descending order.
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQSearchLoyaltyEventsResponse*
///
-(NSURLSessionTask*) searchLoyaltyEventsWithBody: (SQSearchLoyaltyEventsRequest*) body
    completionHandler: (void (^)(SQSearchLoyaltyEventsResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQLoyaltyApiErrorDomain code:kSQLoyaltyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/loyalty/events/search"];

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
                              responseType: @"SQSearchLoyaltyEventsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQSearchLoyaltyEventsResponse*)data, error);
                                }
                            }];
}

///
/// SearchLoyaltyRewards
/// Searches for loyalty rewards. This endpoint accepts a request with no query filters and returns results for all loyalty accounts. If you include a `query` object, `loyalty_account_id` is required and `status` is  optional.  If you know a reward ID, use the [RetrieveLoyaltyReward](https://developer.squareup.com/reference/square_2023-10-18/loyalty-api/retrieve-loyalty-reward) endpoint.  Search results are sorted by `updated_at` in descending order.
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQSearchLoyaltyRewardsResponse*
///
-(NSURLSessionTask*) searchLoyaltyRewardsWithBody: (SQSearchLoyaltyRewardsRequest*) body
    completionHandler: (void (^)(SQSearchLoyaltyRewardsResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQLoyaltyApiErrorDomain code:kSQLoyaltyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/loyalty/rewards/search"];

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
                              responseType: @"SQSearchLoyaltyRewardsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQSearchLoyaltyRewardsResponse*)data, error);
                                }
                            }];
}



@end
