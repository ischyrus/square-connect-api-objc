# SQCardsApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCard**](SQCardsApi.md#createcard) | **POST** /v2/cards | CreateCard
[**disableCard**](SQCardsApi.md#disablecard) | **POST** /v2/cards/{card_id}/disable | DisableCard
[**listCards**](SQCardsApi.md#listcards) | **GET** /v2/cards | ListCards
[**retrieveCard**](SQCardsApi.md#retrievecard) | **GET** /v2/cards/{card_id} | RetrieveCard


# **createCard**
```objc
-(NSURLSessionTask*) createCardWithBody: (SQCreateCardRequest*) body
        completionHandler: (void (^)(SQCreateCardResponse* output, NSError* error)) handler;
```

CreateCard

Adds a card on file to an existing merchant.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCreateCardRequest* body = [[SQCreateCardRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQCardsApi*apiInstance = [[SQCardsApi alloc] init];

// CreateCard
[apiInstance createCardWithBody:body
          completionHandler: ^(SQCreateCardResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCardsApi->createCard: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCreateCardRequest***](SQCreateCardRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateCardResponse***](SQCreateCardResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disableCard**
```objc
-(NSURLSessionTask*) disableCardWithCardId: (NSString*) cardId
        completionHandler: (void (^)(SQDisableCardResponse* output, NSError* error)) handler;
```

DisableCard

Disables the card, preventing any further updates or charges. Disabling an already disabled card is allowed but has no effect.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* cardId = @"cardId_example"; // Unique ID for the desired Card.

SQCardsApi*apiInstance = [[SQCardsApi alloc] init];

// DisableCard
[apiInstance disableCardWithCardId:cardId
          completionHandler: ^(SQDisableCardResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCardsApi->disableCard: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cardId** | **NSString***| Unique ID for the desired Card. | 

### Return type

[**SQDisableCardResponse***](SQDisableCardResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCards**
```objc
-(NSURLSessionTask*) listCardsWithCursor: (NSString*) cursor
    customerId: (NSString*) customerId
    includeDisabled: (NSNumber*) includeDisabled
    referenceId: (NSString*) referenceId
    sortOrder: (NSString*) sortOrder
        completionHandler: (void (^)(SQListCardsResponse* output, NSError* error)) handler;
```

ListCards

Retrieves a list of cards owned by the account making the request. A max of 25 cards will be returned.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* cursor = @"cursor_example"; // A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination) for more information. (optional)
NSString* customerId = @"customerId_example"; // Limit results to cards associated with the customer supplied. By default, all cards owned by the merchant are returned. (optional)
NSNumber* includeDisabled = @true; // Includes disabled cards. By default, all enabled cards owned by the merchant are returned. (optional)
NSString* referenceId = @"referenceId_example"; // Limit results to cards associated with the reference_id supplied. (optional)
NSString* sortOrder = @"sortOrder_example"; // Sorts the returned list by when the card was created with the specified order. This field defaults to ASC. (optional)

SQCardsApi*apiInstance = [[SQCardsApi alloc] init];

// ListCards
[apiInstance listCardsWithCursor:cursor
              customerId:customerId
              includeDisabled:includeDisabled
              referenceId:referenceId
              sortOrder:sortOrder
          completionHandler: ^(SQListCardsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCardsApi->listCards: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **NSString***| A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination) for more information. | [optional] 
 **customerId** | **NSString***| Limit results to cards associated with the customer supplied. By default, all cards owned by the merchant are returned. | [optional] 
 **includeDisabled** | **NSNumber***| Includes disabled cards. By default, all enabled cards owned by the merchant are returned. | [optional] 
 **referenceId** | **NSString***| Limit results to cards associated with the reference_id supplied. | [optional] 
 **sortOrder** | **NSString***| Sorts the returned list by when the card was created with the specified order. This field defaults to ASC. | [optional] 

### Return type

[**SQListCardsResponse***](SQListCardsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveCard**
```objc
-(NSURLSessionTask*) retrieveCardWithCardId: (NSString*) cardId
        completionHandler: (void (^)(SQRetrieveCardResponse* output, NSError* error)) handler;
```

RetrieveCard

Retrieves details for a specific Card.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* cardId = @"cardId_example"; // Unique ID for the desired Card.

SQCardsApi*apiInstance = [[SQCardsApi alloc] init];

// RetrieveCard
[apiInstance retrieveCardWithCardId:cardId
          completionHandler: ^(SQRetrieveCardResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCardsApi->retrieveCard: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cardId** | **NSString***| Unique ID for the desired Card. | 

### Return type

[**SQRetrieveCardResponse***](SQRetrieveCardResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

