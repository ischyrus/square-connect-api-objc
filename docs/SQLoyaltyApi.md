# SQLoyaltyApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accumulateLoyaltyPoints**](SQLoyaltyApi.md#accumulateloyaltypoints) | **POST** /v2/loyalty/accounts/{account_id}/accumulate | AccumulateLoyaltyPoints
[**adjustLoyaltyPoints**](SQLoyaltyApi.md#adjustloyaltypoints) | **POST** /v2/loyalty/accounts/{account_id}/adjust | AdjustLoyaltyPoints
[**calculateLoyaltyPoints**](SQLoyaltyApi.md#calculateloyaltypoints) | **POST** /v2/loyalty/programs/{program_id}/calculate | CalculateLoyaltyPoints
[**cancelLoyaltyPromotion**](SQLoyaltyApi.md#cancelloyaltypromotion) | **POST** /v2/loyalty/programs/{program_id}/promotions/{promotion_id}/cancel | CancelLoyaltyPromotion
[**createLoyaltyAccount**](SQLoyaltyApi.md#createloyaltyaccount) | **POST** /v2/loyalty/accounts | CreateLoyaltyAccount
[**createLoyaltyPromotion**](SQLoyaltyApi.md#createloyaltypromotion) | **POST** /v2/loyalty/programs/{program_id}/promotions | CreateLoyaltyPromotion
[**createLoyaltyReward**](SQLoyaltyApi.md#createloyaltyreward) | **POST** /v2/loyalty/rewards | CreateLoyaltyReward
[**deleteLoyaltyReward**](SQLoyaltyApi.md#deleteloyaltyreward) | **DELETE** /v2/loyalty/rewards/{reward_id} | DeleteLoyaltyReward
[**listLoyaltyPrograms**](SQLoyaltyApi.md#listloyaltyprograms) | **GET** /v2/loyalty/programs | ListLoyaltyPrograms
[**listLoyaltyPromotions**](SQLoyaltyApi.md#listloyaltypromotions) | **GET** /v2/loyalty/programs/{program_id}/promotions | ListLoyaltyPromotions
[**redeemLoyaltyReward**](SQLoyaltyApi.md#redeemloyaltyreward) | **POST** /v2/loyalty/rewards/{reward_id}/redeem | RedeemLoyaltyReward
[**retrieveLoyaltyAccount**](SQLoyaltyApi.md#retrieveloyaltyaccount) | **GET** /v2/loyalty/accounts/{account_id} | RetrieveLoyaltyAccount
[**retrieveLoyaltyProgram**](SQLoyaltyApi.md#retrieveloyaltyprogram) | **GET** /v2/loyalty/programs/{program_id} | RetrieveLoyaltyProgram
[**retrieveLoyaltyPromotion**](SQLoyaltyApi.md#retrieveloyaltypromotion) | **GET** /v2/loyalty/programs/{program_id}/promotions/{promotion_id} | RetrieveLoyaltyPromotion
[**retrieveLoyaltyReward**](SQLoyaltyApi.md#retrieveloyaltyreward) | **GET** /v2/loyalty/rewards/{reward_id} | RetrieveLoyaltyReward
[**searchLoyaltyAccounts**](SQLoyaltyApi.md#searchloyaltyaccounts) | **POST** /v2/loyalty/accounts/search | SearchLoyaltyAccounts
[**searchLoyaltyEvents**](SQLoyaltyApi.md#searchloyaltyevents) | **POST** /v2/loyalty/events/search | SearchLoyaltyEvents
[**searchLoyaltyRewards**](SQLoyaltyApi.md#searchloyaltyrewards) | **POST** /v2/loyalty/rewards/search | SearchLoyaltyRewards


# **accumulateLoyaltyPoints**
```objc
-(NSURLSessionTask*) accumulateLoyaltyPointsWithAccountId: (NSString*) accountId
    body: (SQAccumulateLoyaltyPointsRequest*) body
        completionHandler: (void (^)(SQAccumulateLoyaltyPointsResponse* output, NSError* error)) handler;
```

AccumulateLoyaltyPoints

Adds points earned from a purchase to a [loyalty account](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyAccount).  - If you are using the Orders API to manage orders, provide the `order_id`. Square reads the order to compute the points earned from both the base loyalty program and an associated [loyalty promotion](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyPromotion). For purchases that qualify for multiple accrual rules, Square computes points based on the accrual rule that grants the most points. For purchases that qualify for multiple promotions, Square computes points based on the most recently created promotion. A purchase must first qualify for program points to be eligible for promotion points.  - If you are not using the Orders API to manage orders, provide `points` with the number of points to add. You must first perform a client-side computation of the points earned from the loyalty program and loyalty promotion. For spend-based and visit-based programs, you can call [CalculateLoyaltyPoints](https://developer.squareup.com/reference/square_2023-10-18/loyalty-api/calculate-loyalty-points) to compute the points earned from the base loyalty program. For information about computing points earned from a loyalty promotion, see [Calculating promotion points](https://developer.squareup.com/docs/loyalty-api/loyalty-promotions#calculate-promotion-points).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* accountId = @"accountId_example"; // The ID of the target [loyalty account](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyAccount).
SQAccumulateLoyaltyPointsRequest* body = [[SQAccumulateLoyaltyPointsRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQLoyaltyApi*apiInstance = [[SQLoyaltyApi alloc] init];

// AccumulateLoyaltyPoints
[apiInstance accumulateLoyaltyPointsWithAccountId:accountId
              body:body
          completionHandler: ^(SQAccumulateLoyaltyPointsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLoyaltyApi->accumulateLoyaltyPoints: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The ID of the target [loyalty account](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyAccount). | 
 **body** | [**SQAccumulateLoyaltyPointsRequest***](SQAccumulateLoyaltyPointsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQAccumulateLoyaltyPointsResponse***](SQAccumulateLoyaltyPointsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adjustLoyaltyPoints**
```objc
-(NSURLSessionTask*) adjustLoyaltyPointsWithAccountId: (NSString*) accountId
    body: (SQAdjustLoyaltyPointsRequest*) body
        completionHandler: (void (^)(SQAdjustLoyaltyPointsResponse* output, NSError* error)) handler;
```

AdjustLoyaltyPoints

Adds points to or subtracts points from a buyer's account.  Use this endpoint only when you need to manually adjust points. Otherwise, in your application flow, you call [AccumulateLoyaltyPoints](https://developer.squareup.com/reference/square_2023-10-18/loyalty-api/accumulate-loyalty-points) to add points when a buyer pays for the purchase.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* accountId = @"accountId_example"; // The ID of the target [loyalty account](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyAccount).
SQAdjustLoyaltyPointsRequest* body = [[SQAdjustLoyaltyPointsRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQLoyaltyApi*apiInstance = [[SQLoyaltyApi alloc] init];

// AdjustLoyaltyPoints
[apiInstance adjustLoyaltyPointsWithAccountId:accountId
              body:body
          completionHandler: ^(SQAdjustLoyaltyPointsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLoyaltyApi->adjustLoyaltyPoints: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The ID of the target [loyalty account](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyAccount). | 
 **body** | [**SQAdjustLoyaltyPointsRequest***](SQAdjustLoyaltyPointsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQAdjustLoyaltyPointsResponse***](SQAdjustLoyaltyPointsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **calculateLoyaltyPoints**
```objc
-(NSURLSessionTask*) calculateLoyaltyPointsWithProgramId: (NSString*) programId
    body: (SQCalculateLoyaltyPointsRequest*) body
        completionHandler: (void (^)(SQCalculateLoyaltyPointsResponse* output, NSError* error)) handler;
```

CalculateLoyaltyPoints

Calculates the number of points a buyer can earn from a purchase. Applications might call this endpoint to display the points to the buyer.  - If you are using the Orders API to manage orders, provide the `order_id` and (optional) `loyalty_account_id`. Square reads the order to compute the points earned from the base loyalty program and an associated [loyalty promotion](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyPromotion).  - If you are not using the Orders API to manage orders, provide `transaction_amount_money` with the purchase amount. Square uses this amount to calculate the points earned from the base loyalty program, but not points earned from a loyalty promotion. For spend-based and visit-based programs, the `tax_mode` setting of the accrual rule indicates how taxes should be treated for loyalty points accrual. If the purchase qualifies for program points, call [ListLoyaltyPromotions](https://developer.squareup.com/reference/square_2023-10-18/loyalty-api/list-loyalty-promotions) and perform a client-side computation to calculate whether the purchase also qualifies for promotion points. For more information, see [Calculating promotion points](https://developer.squareup.com/docs/loyalty-api/loyalty-promotions#calculate-promotion-points).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* programId = @"programId_example"; // The ID of the [loyalty program](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyProgram), which defines the rules for accruing points.
SQCalculateLoyaltyPointsRequest* body = [[SQCalculateLoyaltyPointsRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQLoyaltyApi*apiInstance = [[SQLoyaltyApi alloc] init];

// CalculateLoyaltyPoints
[apiInstance calculateLoyaltyPointsWithProgramId:programId
              body:body
          completionHandler: ^(SQCalculateLoyaltyPointsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLoyaltyApi->calculateLoyaltyPoints: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **programId** | **NSString***| The ID of the [loyalty program](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyProgram), which defines the rules for accruing points. | 
 **body** | [**SQCalculateLoyaltyPointsRequest***](SQCalculateLoyaltyPointsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCalculateLoyaltyPointsResponse***](SQCalculateLoyaltyPointsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cancelLoyaltyPromotion**
```objc
-(NSURLSessionTask*) cancelLoyaltyPromotionWithPromotionId: (NSString*) promotionId
    programId: (NSString*) programId
        completionHandler: (void (^)(SQCancelLoyaltyPromotionResponse* output, NSError* error)) handler;
```

CancelLoyaltyPromotion

Cancels a loyalty promotion. Use this endpoint to cancel an `ACTIVE` promotion earlier than the end date, cancel an `ACTIVE` promotion when an end date is not specified, or cancel a `SCHEDULED` promotion. Because updating a promotion is not supported, you can also use this endpoint to cancel a promotion before you create a new one.  This endpoint sets the loyalty promotion to the `CANCELED` state

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* promotionId = @"promotionId_example"; // The ID of the [loyalty promotion](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyPromotion) to cancel. You can cancel a promotion that has an `ACTIVE` or `SCHEDULED` status.
NSString* programId = @"programId_example"; // The ID of the base [loyalty program](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyProgram).

SQLoyaltyApi*apiInstance = [[SQLoyaltyApi alloc] init];

// CancelLoyaltyPromotion
[apiInstance cancelLoyaltyPromotionWithPromotionId:promotionId
              programId:programId
          completionHandler: ^(SQCancelLoyaltyPromotionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLoyaltyApi->cancelLoyaltyPromotion: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **promotionId** | **NSString***| The ID of the [loyalty promotion](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyPromotion) to cancel. You can cancel a promotion that has an &#x60;ACTIVE&#x60; or &#x60;SCHEDULED&#x60; status. | 
 **programId** | **NSString***| The ID of the base [loyalty program](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyProgram). | 

### Return type

[**SQCancelLoyaltyPromotionResponse***](SQCancelLoyaltyPromotionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createLoyaltyAccount**
```objc
-(NSURLSessionTask*) createLoyaltyAccountWithBody: (SQCreateLoyaltyAccountRequest*) body
        completionHandler: (void (^)(SQCreateLoyaltyAccountResponse* output, NSError* error)) handler;
```

CreateLoyaltyAccount

Creates a loyalty account. To create a loyalty account, you must provide the `program_id` and a `mapping` with the `phone_number` of the buyer.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCreateLoyaltyAccountRequest* body = [[SQCreateLoyaltyAccountRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQLoyaltyApi*apiInstance = [[SQLoyaltyApi alloc] init];

// CreateLoyaltyAccount
[apiInstance createLoyaltyAccountWithBody:body
          completionHandler: ^(SQCreateLoyaltyAccountResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLoyaltyApi->createLoyaltyAccount: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCreateLoyaltyAccountRequest***](SQCreateLoyaltyAccountRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateLoyaltyAccountResponse***](SQCreateLoyaltyAccountResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createLoyaltyPromotion**
```objc
-(NSURLSessionTask*) createLoyaltyPromotionWithProgramId: (NSString*) programId
    body: (SQCreateLoyaltyPromotionRequest*) body
        completionHandler: (void (^)(SQCreateLoyaltyPromotionResponse* output, NSError* error)) handler;
```

CreateLoyaltyPromotion

Creates a loyalty promotion for a [loyalty program](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyProgram). A loyalty promotion enables buyers to earn points in addition to those earned from the base loyalty program.  This endpoint sets the loyalty promotion to the `ACTIVE` or `SCHEDULED` status, depending on the `available_time` setting. A loyalty program can have a maximum of 10 loyalty promotions with an `ACTIVE` or `SCHEDULED` status.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* programId = @"programId_example"; // The ID of the [loyalty program](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyProgram) to associate with the promotion. To get the program ID, call [RetrieveLoyaltyProgram](https://developer.squareup.com/reference/square_2023-10-18/loyalty-api/retrieve-loyalty-program) using the `main` keyword.
SQCreateLoyaltyPromotionRequest* body = [[SQCreateLoyaltyPromotionRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQLoyaltyApi*apiInstance = [[SQLoyaltyApi alloc] init];

// CreateLoyaltyPromotion
[apiInstance createLoyaltyPromotionWithProgramId:programId
              body:body
          completionHandler: ^(SQCreateLoyaltyPromotionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLoyaltyApi->createLoyaltyPromotion: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **programId** | **NSString***| The ID of the [loyalty program](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyProgram) to associate with the promotion. To get the program ID, call [RetrieveLoyaltyProgram](https://developer.squareup.com/reference/square_2023-10-18/loyalty-api/retrieve-loyalty-program) using the &#x60;main&#x60; keyword. | 
 **body** | [**SQCreateLoyaltyPromotionRequest***](SQCreateLoyaltyPromotionRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateLoyaltyPromotionResponse***](SQCreateLoyaltyPromotionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createLoyaltyReward**
```objc
-(NSURLSessionTask*) createLoyaltyRewardWithBody: (SQCreateLoyaltyRewardRequest*) body
        completionHandler: (void (^)(SQCreateLoyaltyRewardResponse* output, NSError* error)) handler;
```

CreateLoyaltyReward

Creates a loyalty reward. In the process, the endpoint does following:  - Uses the `reward_tier_id` in the request to determine the number of points to lock for this reward. - If the request includes `order_id`, it adds the reward and related discount to the order.  After a reward is created, the points are locked and not available for the buyer to redeem another reward.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCreateLoyaltyRewardRequest* body = [[SQCreateLoyaltyRewardRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQLoyaltyApi*apiInstance = [[SQLoyaltyApi alloc] init];

// CreateLoyaltyReward
[apiInstance createLoyaltyRewardWithBody:body
          completionHandler: ^(SQCreateLoyaltyRewardResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLoyaltyApi->createLoyaltyReward: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCreateLoyaltyRewardRequest***](SQCreateLoyaltyRewardRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateLoyaltyRewardResponse***](SQCreateLoyaltyRewardResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteLoyaltyReward**
```objc
-(NSURLSessionTask*) deleteLoyaltyRewardWithRewardId: (NSString*) rewardId
        completionHandler: (void (^)(SQDeleteLoyaltyRewardResponse* output, NSError* error)) handler;
```

DeleteLoyaltyReward

Deletes a loyalty reward by doing the following:  - Returns the loyalty points back to the loyalty account. - If an order ID was specified when the reward was created (see [CreateLoyaltyReward](https://developer.squareup.com/reference/square_2023-10-18/loyalty-api/create-loyalty-reward)), it updates the order by removing the reward and related discounts.  You cannot delete a reward that has reached the terminal state (REDEEMED).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* rewardId = @"rewardId_example"; // The ID of the [loyalty reward](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyReward) to delete.

SQLoyaltyApi*apiInstance = [[SQLoyaltyApi alloc] init];

// DeleteLoyaltyReward
[apiInstance deleteLoyaltyRewardWithRewardId:rewardId
          completionHandler: ^(SQDeleteLoyaltyRewardResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLoyaltyApi->deleteLoyaltyReward: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rewardId** | **NSString***| The ID of the [loyalty reward](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyReward) to delete. | 

### Return type

[**SQDeleteLoyaltyRewardResponse***](SQDeleteLoyaltyRewardResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listLoyaltyPrograms**
```objc
-(NSURLSessionTask*) listLoyaltyProgramsWithCompletionHandler: 
        (void (^)(SQListLoyaltyProgramsResponse* output, NSError* error)) handler;
```

ListLoyaltyPrograms

Returns a list of loyalty programs in the seller's account. Loyalty programs define how buyers can earn points and redeem points for rewards. Square sellers can have only one loyalty program, which is created and managed from the Seller Dashboard. For more information, see [Loyalty Program Overview](https://developer.squareup.com/docs/loyalty/overview).   Replaced with [RetrieveLoyaltyProgram](https://developer.squareup.com/reference/square_2023-10-18/loyalty-api/retrieve-loyalty-program) when used with the keyword `main`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];



SQLoyaltyApi*apiInstance = [[SQLoyaltyApi alloc] init];

// ListLoyaltyPrograms
[apiInstance listLoyaltyProgramsWithCompletionHandler: 
          ^(SQListLoyaltyProgramsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLoyaltyApi->listLoyaltyPrograms: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SQListLoyaltyProgramsResponse***](SQListLoyaltyProgramsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listLoyaltyPromotions**
```objc
-(NSURLSessionTask*) listLoyaltyPromotionsWithProgramId: (NSString*) programId
    status: (NSString*) status
    cursor: (NSString*) cursor
    limit: (NSNumber*) limit
        completionHandler: (void (^)(SQListLoyaltyPromotionsResponse* output, NSError* error)) handler;
```

ListLoyaltyPromotions

Lists the loyalty promotions associated with a [loyalty program](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyProgram). Results are sorted by the `created_at` date in descending order (newest to oldest).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* programId = @"programId_example"; // The ID of the base [loyalty program](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyProgram). To get the program ID, call [RetrieveLoyaltyProgram](https://developer.squareup.com/reference/square_2023-10-18/loyalty-api/retrieve-loyalty-program) using the `main` keyword.
NSString* status = @"status_example"; // The status to filter the results by. If a status is provided, only loyalty promotions with the specified status are returned. Otherwise, all loyalty promotions associated with the loyalty program are returned. (optional)
NSString* cursor = @"cursor_example"; // The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
NSNumber* limit = @56; // The maximum number of results to return in a single paged response. The minimum value is 1 and the maximum value is 30. The default value is 30. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)

SQLoyaltyApi*apiInstance = [[SQLoyaltyApi alloc] init];

// ListLoyaltyPromotions
[apiInstance listLoyaltyPromotionsWithProgramId:programId
              status:status
              cursor:cursor
              limit:limit
          completionHandler: ^(SQListLoyaltyPromotionsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLoyaltyApi->listLoyaltyPromotions: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **programId** | **NSString***| The ID of the base [loyalty program](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyProgram). To get the program ID, call [RetrieveLoyaltyProgram](https://developer.squareup.com/reference/square_2023-10-18/loyalty-api/retrieve-loyalty-program) using the &#x60;main&#x60; keyword. | 
 **status** | **NSString***| The status to filter the results by. If a status is provided, only loyalty promotions with the specified status are returned. Otherwise, all loyalty promotions associated with the loyalty program are returned. | [optional] 
 **cursor** | **NSString***| The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
 **limit** | **NSNumber***| The maximum number of results to return in a single paged response. The minimum value is 1 and the maximum value is 30. The default value is 30. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 

### Return type

[**SQListLoyaltyPromotionsResponse***](SQListLoyaltyPromotionsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **redeemLoyaltyReward**
```objc
-(NSURLSessionTask*) redeemLoyaltyRewardWithRewardId: (NSString*) rewardId
    body: (SQRedeemLoyaltyRewardRequest*) body
        completionHandler: (void (^)(SQRedeemLoyaltyRewardResponse* output, NSError* error)) handler;
```

RedeemLoyaltyReward

Redeems a loyalty reward.  The endpoint sets the reward to the `REDEEMED` terminal state.  If you are using your own order processing system (not using the Orders API), you call this endpoint after the buyer paid for the purchase.  After the reward reaches the terminal state, it cannot be deleted. In other words, points used for the reward cannot be returned to the account.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* rewardId = @"rewardId_example"; // The ID of the [loyalty reward](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyReward) to redeem.
SQRedeemLoyaltyRewardRequest* body = [[SQRedeemLoyaltyRewardRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQLoyaltyApi*apiInstance = [[SQLoyaltyApi alloc] init];

// RedeemLoyaltyReward
[apiInstance redeemLoyaltyRewardWithRewardId:rewardId
              body:body
          completionHandler: ^(SQRedeemLoyaltyRewardResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLoyaltyApi->redeemLoyaltyReward: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rewardId** | **NSString***| The ID of the [loyalty reward](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyReward) to redeem. | 
 **body** | [**SQRedeemLoyaltyRewardRequest***](SQRedeemLoyaltyRewardRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQRedeemLoyaltyRewardResponse***](SQRedeemLoyaltyRewardResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveLoyaltyAccount**
```objc
-(NSURLSessionTask*) retrieveLoyaltyAccountWithAccountId: (NSString*) accountId
        completionHandler: (void (^)(SQRetrieveLoyaltyAccountResponse* output, NSError* error)) handler;
```

RetrieveLoyaltyAccount

Retrieves a loyalty account.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* accountId = @"accountId_example"; // The ID of the [loyalty account](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyAccount) to retrieve.

SQLoyaltyApi*apiInstance = [[SQLoyaltyApi alloc] init];

// RetrieveLoyaltyAccount
[apiInstance retrieveLoyaltyAccountWithAccountId:accountId
          completionHandler: ^(SQRetrieveLoyaltyAccountResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLoyaltyApi->retrieveLoyaltyAccount: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The ID of the [loyalty account](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyAccount) to retrieve. | 

### Return type

[**SQRetrieveLoyaltyAccountResponse***](SQRetrieveLoyaltyAccountResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveLoyaltyProgram**
```objc
-(NSURLSessionTask*) retrieveLoyaltyProgramWithProgramId: (NSString*) programId
        completionHandler: (void (^)(SQRetrieveLoyaltyProgramResponse* output, NSError* error)) handler;
```

RetrieveLoyaltyProgram

Retrieves the loyalty program in a seller's account, specified by the program ID or the keyword `main`.  Loyalty programs define how buyers can earn points and redeem points for rewards. Square sellers can have only one loyalty program, which is created and managed from the Seller Dashboard. For more information, see [Loyalty Program Overview](https://developer.squareup.com/docs/loyalty/overview).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* programId = @"programId_example"; // The ID of the loyalty program or the keyword `main`. Either value can be used to retrieve the single loyalty program that belongs to the seller.

SQLoyaltyApi*apiInstance = [[SQLoyaltyApi alloc] init];

// RetrieveLoyaltyProgram
[apiInstance retrieveLoyaltyProgramWithProgramId:programId
          completionHandler: ^(SQRetrieveLoyaltyProgramResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLoyaltyApi->retrieveLoyaltyProgram: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **programId** | **NSString***| The ID of the loyalty program or the keyword &#x60;main&#x60;. Either value can be used to retrieve the single loyalty program that belongs to the seller. | 

### Return type

[**SQRetrieveLoyaltyProgramResponse***](SQRetrieveLoyaltyProgramResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveLoyaltyPromotion**
```objc
-(NSURLSessionTask*) retrieveLoyaltyPromotionWithPromotionId: (NSString*) promotionId
    programId: (NSString*) programId
        completionHandler: (void (^)(SQRetrieveLoyaltyPromotionResponse* output, NSError* error)) handler;
```

RetrieveLoyaltyPromotion

Retrieves a loyalty promotion.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* promotionId = @"promotionId_example"; // The ID of the [loyalty promotion](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyPromotion) to retrieve.
NSString* programId = @"programId_example"; // The ID of the base [loyalty program](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyProgram). To get the program ID, call [RetrieveLoyaltyProgram](https://developer.squareup.com/reference/square_2023-10-18/loyalty-api/retrieve-loyalty-program) using the `main` keyword.

SQLoyaltyApi*apiInstance = [[SQLoyaltyApi alloc] init];

// RetrieveLoyaltyPromotion
[apiInstance retrieveLoyaltyPromotionWithPromotionId:promotionId
              programId:programId
          completionHandler: ^(SQRetrieveLoyaltyPromotionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLoyaltyApi->retrieveLoyaltyPromotion: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **promotionId** | **NSString***| The ID of the [loyalty promotion](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyPromotion) to retrieve. | 
 **programId** | **NSString***| The ID of the base [loyalty program](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyProgram). To get the program ID, call [RetrieveLoyaltyProgram](https://developer.squareup.com/reference/square_2023-10-18/loyalty-api/retrieve-loyalty-program) using the &#x60;main&#x60; keyword. | 

### Return type

[**SQRetrieveLoyaltyPromotionResponse***](SQRetrieveLoyaltyPromotionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveLoyaltyReward**
```objc
-(NSURLSessionTask*) retrieveLoyaltyRewardWithRewardId: (NSString*) rewardId
        completionHandler: (void (^)(SQRetrieveLoyaltyRewardResponse* output, NSError* error)) handler;
```

RetrieveLoyaltyReward

Retrieves a loyalty reward.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* rewardId = @"rewardId_example"; // The ID of the [loyalty reward](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyReward) to retrieve.

SQLoyaltyApi*apiInstance = [[SQLoyaltyApi alloc] init];

// RetrieveLoyaltyReward
[apiInstance retrieveLoyaltyRewardWithRewardId:rewardId
          completionHandler: ^(SQRetrieveLoyaltyRewardResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLoyaltyApi->retrieveLoyaltyReward: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rewardId** | **NSString***| The ID of the [loyalty reward](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyReward) to retrieve. | 

### Return type

[**SQRetrieveLoyaltyRewardResponse***](SQRetrieveLoyaltyRewardResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchLoyaltyAccounts**
```objc
-(NSURLSessionTask*) searchLoyaltyAccountsWithBody: (SQSearchLoyaltyAccountsRequest*) body
        completionHandler: (void (^)(SQSearchLoyaltyAccountsResponse* output, NSError* error)) handler;
```

SearchLoyaltyAccounts

Searches for loyalty accounts in a loyalty program.  You can search for a loyalty account using the phone number or customer ID associated with the account. To return all loyalty accounts, specify an empty `query` object or omit it entirely.  Search results are sorted by `created_at` in ascending order.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQSearchLoyaltyAccountsRequest* body = [[SQSearchLoyaltyAccountsRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQLoyaltyApi*apiInstance = [[SQLoyaltyApi alloc] init];

// SearchLoyaltyAccounts
[apiInstance searchLoyaltyAccountsWithBody:body
          completionHandler: ^(SQSearchLoyaltyAccountsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLoyaltyApi->searchLoyaltyAccounts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQSearchLoyaltyAccountsRequest***](SQSearchLoyaltyAccountsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQSearchLoyaltyAccountsResponse***](SQSearchLoyaltyAccountsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchLoyaltyEvents**
```objc
-(NSURLSessionTask*) searchLoyaltyEventsWithBody: (SQSearchLoyaltyEventsRequest*) body
        completionHandler: (void (^)(SQSearchLoyaltyEventsResponse* output, NSError* error)) handler;
```

SearchLoyaltyEvents

Searches for loyalty events.  A Square loyalty program maintains a ledger of events that occur during the lifetime of a buyer's loyalty account. Each change in the point balance (for example, points earned, points redeemed, and points expired) is recorded in the ledger. Using this endpoint, you can search the ledger for events.  Search results are sorted by `created_at` in descending order.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQSearchLoyaltyEventsRequest* body = [[SQSearchLoyaltyEventsRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQLoyaltyApi*apiInstance = [[SQLoyaltyApi alloc] init];

// SearchLoyaltyEvents
[apiInstance searchLoyaltyEventsWithBody:body
          completionHandler: ^(SQSearchLoyaltyEventsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLoyaltyApi->searchLoyaltyEvents: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQSearchLoyaltyEventsRequest***](SQSearchLoyaltyEventsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQSearchLoyaltyEventsResponse***](SQSearchLoyaltyEventsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchLoyaltyRewards**
```objc
-(NSURLSessionTask*) searchLoyaltyRewardsWithBody: (SQSearchLoyaltyRewardsRequest*) body
        completionHandler: (void (^)(SQSearchLoyaltyRewardsResponse* output, NSError* error)) handler;
```

SearchLoyaltyRewards

Searches for loyalty rewards. This endpoint accepts a request with no query filters and returns results for all loyalty accounts. If you include a `query` object, `loyalty_account_id` is required and `status` is  optional.  If you know a reward ID, use the [RetrieveLoyaltyReward](https://developer.squareup.com/reference/square_2023-10-18/loyalty-api/retrieve-loyalty-reward) endpoint.  Search results are sorted by `updated_at` in descending order.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQSearchLoyaltyRewardsRequest* body = [[SQSearchLoyaltyRewardsRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQLoyaltyApi*apiInstance = [[SQLoyaltyApi alloc] init];

// SearchLoyaltyRewards
[apiInstance searchLoyaltyRewardsWithBody:body
          completionHandler: ^(SQSearchLoyaltyRewardsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLoyaltyApi->searchLoyaltyRewards: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQSearchLoyaltyRewardsRequest***](SQSearchLoyaltyRewardsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQSearchLoyaltyRewardsResponse***](SQSearchLoyaltyRewardsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

