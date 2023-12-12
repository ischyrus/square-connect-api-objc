# SQGiftCardsApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGiftCard**](SQGiftCardsApi.md#creategiftcard) | **POST** /v2/gift-cards | CreateGiftCard
[**linkCustomerToGiftCard**](SQGiftCardsApi.md#linkcustomertogiftcard) | **POST** /v2/gift-cards/{gift_card_id}/link-customer | LinkCustomerToGiftCard
[**listGiftCards**](SQGiftCardsApi.md#listgiftcards) | **GET** /v2/gift-cards | ListGiftCards
[**retrieveGiftCard**](SQGiftCardsApi.md#retrievegiftcard) | **GET** /v2/gift-cards/{id} | RetrieveGiftCard
[**retrieveGiftCardFromGAN**](SQGiftCardsApi.md#retrievegiftcardfromgan) | **POST** /v2/gift-cards/from-gan | RetrieveGiftCardFromGAN
[**retrieveGiftCardFromNonce**](SQGiftCardsApi.md#retrievegiftcardfromnonce) | **POST** /v2/gift-cards/from-nonce | RetrieveGiftCardFromNonce
[**unlinkCustomerFromGiftCard**](SQGiftCardsApi.md#unlinkcustomerfromgiftcard) | **POST** /v2/gift-cards/{gift_card_id}/unlink-customer | UnlinkCustomerFromGiftCard


# **createGiftCard**
```objc
-(NSURLSessionTask*) createGiftCardWithBody: (SQCreateGiftCardRequest*) body
        completionHandler: (void (^)(SQCreateGiftCardResponse* output, NSError* error)) handler;
```

CreateGiftCard

Creates a digital gift card or registers a physical (plastic) gift card. After the gift card  is created, you must call [CreateGiftCardActivity](https://developer.squareup.com/reference/square_2023-10-18/gift-card-activities-api/create-gift-card-activity)  to activate the card with an initial balance before it can be used for payment.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCreateGiftCardRequest* body = [[SQCreateGiftCardRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQGiftCardsApi*apiInstance = [[SQGiftCardsApi alloc] init];

// CreateGiftCard
[apiInstance createGiftCardWithBody:body
          completionHandler: ^(SQCreateGiftCardResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQGiftCardsApi->createGiftCard: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCreateGiftCardRequest***](SQCreateGiftCardRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateGiftCardResponse***](SQCreateGiftCardResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkCustomerToGiftCard**
```objc
-(NSURLSessionTask*) linkCustomerToGiftCardWithGiftCardId: (NSString*) giftCardId
    body: (SQLinkCustomerToGiftCardRequest*) body
        completionHandler: (void (^)(SQLinkCustomerToGiftCardResponse* output, NSError* error)) handler;
```

LinkCustomerToGiftCard

Links a customer to a gift card, which is also referred to as adding a card on file.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* giftCardId = @"giftCardId_example"; // The ID of the gift card to be linked.
SQLinkCustomerToGiftCardRequest* body = [[SQLinkCustomerToGiftCardRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQGiftCardsApi*apiInstance = [[SQGiftCardsApi alloc] init];

// LinkCustomerToGiftCard
[apiInstance linkCustomerToGiftCardWithGiftCardId:giftCardId
              body:body
          completionHandler: ^(SQLinkCustomerToGiftCardResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQGiftCardsApi->linkCustomerToGiftCard: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **giftCardId** | **NSString***| The ID of the gift card to be linked. | 
 **body** | [**SQLinkCustomerToGiftCardRequest***](SQLinkCustomerToGiftCardRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQLinkCustomerToGiftCardResponse***](SQLinkCustomerToGiftCardResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listGiftCards**
```objc
-(NSURLSessionTask*) listGiftCardsWithType: (NSString*) type
    state: (NSString*) state
    limit: (NSNumber*) limit
    cursor: (NSString*) cursor
    customerId: (NSString*) customerId
        completionHandler: (void (^)(SQListGiftCardsResponse* output, NSError* error)) handler;
```

ListGiftCards

Lists all gift cards. You can specify optional filters to retrieve  a subset of the gift cards. Results are sorted by `created_at` in ascending order.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* type = @"type_example"; // If a [type](https://developer.squareup.com/reference/square_2023-10-18/enums/GiftCardType) is provided, the endpoint returns gift cards of the specified type. Otherwise, the endpoint returns gift cards of all types. (optional)
NSString* state = @"state_example"; // If a [state](https://developer.squareup.com/reference/square_2023-10-18/enums/GiftCardStatus) is provided, the endpoint returns the gift cards in the specified state. Otherwise, the endpoint returns the gift cards of all states. (optional)
NSNumber* limit = @56; // If a limit is provided, the endpoint returns only the specified number of results per page. The maximum value is 200. The default value is 30. For more information, see [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination). (optional)
NSString* cursor = @"cursor_example"; // A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. If a cursor is not provided, the endpoint returns the first page of the results.  For more information, see [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination). (optional)
NSString* customerId = @"customerId_example"; // If a customer ID is provided, the endpoint returns only the gift cards linked to the specified customer. (optional)

SQGiftCardsApi*apiInstance = [[SQGiftCardsApi alloc] init];

// ListGiftCards
[apiInstance listGiftCardsWithType:type
              state:state
              limit:limit
              cursor:cursor
              customerId:customerId
          completionHandler: ^(SQListGiftCardsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQGiftCardsApi->listGiftCards: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **NSString***| If a [type](https://developer.squareup.com/reference/square_2023-10-18/enums/GiftCardType) is provided, the endpoint returns gift cards of the specified type. Otherwise, the endpoint returns gift cards of all types. | [optional] 
 **state** | **NSString***| If a [state](https://developer.squareup.com/reference/square_2023-10-18/enums/GiftCardStatus) is provided, the endpoint returns the gift cards in the specified state. Otherwise, the endpoint returns the gift cards of all states. | [optional] 
 **limit** | **NSNumber***| If a limit is provided, the endpoint returns only the specified number of results per page. The maximum value is 200. The default value is 30. For more information, see [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination). | [optional] 
 **cursor** | **NSString***| A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. If a cursor is not provided, the endpoint returns the first page of the results.  For more information, see [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination). | [optional] 
 **customerId** | **NSString***| If a customer ID is provided, the endpoint returns only the gift cards linked to the specified customer. | [optional] 

### Return type

[**SQListGiftCardsResponse***](SQListGiftCardsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveGiftCard**
```objc
-(NSURLSessionTask*) retrieveGiftCardWithId: (NSString*) _id
        completionHandler: (void (^)(SQRetrieveGiftCardResponse* output, NSError* error)) handler;
```

RetrieveGiftCard

Retrieves a gift card using the gift card ID.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* _id = @"_id_example"; // The ID of the gift card to retrieve.

SQGiftCardsApi*apiInstance = [[SQGiftCardsApi alloc] init];

// RetrieveGiftCard
[apiInstance retrieveGiftCardWithId:_id
          completionHandler: ^(SQRetrieveGiftCardResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQGiftCardsApi->retrieveGiftCard: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| The ID of the gift card to retrieve. | 

### Return type

[**SQRetrieveGiftCardResponse***](SQRetrieveGiftCardResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveGiftCardFromGAN**
```objc
-(NSURLSessionTask*) retrieveGiftCardFromGANWithBody: (SQRetrieveGiftCardFromGANRequest*) body
        completionHandler: (void (^)(SQRetrieveGiftCardFromGANResponse* output, NSError* error)) handler;
```

RetrieveGiftCardFromGAN

Retrieves a gift card using the gift card account number (GAN).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQRetrieveGiftCardFromGANRequest* body = [[SQRetrieveGiftCardFromGANRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQGiftCardsApi*apiInstance = [[SQGiftCardsApi alloc] init];

// RetrieveGiftCardFromGAN
[apiInstance retrieveGiftCardFromGANWithBody:body
          completionHandler: ^(SQRetrieveGiftCardFromGANResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQGiftCardsApi->retrieveGiftCardFromGAN: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQRetrieveGiftCardFromGANRequest***](SQRetrieveGiftCardFromGANRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQRetrieveGiftCardFromGANResponse***](SQRetrieveGiftCardFromGANResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveGiftCardFromNonce**
```objc
-(NSURLSessionTask*) retrieveGiftCardFromNonceWithBody: (SQRetrieveGiftCardFromNonceRequest*) body
        completionHandler: (void (^)(SQRetrieveGiftCardFromNonceResponse* output, NSError* error)) handler;
```

RetrieveGiftCardFromNonce

Retrieves a gift card using a secure payment token that represents the gift card.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQRetrieveGiftCardFromNonceRequest* body = [[SQRetrieveGiftCardFromNonceRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQGiftCardsApi*apiInstance = [[SQGiftCardsApi alloc] init];

// RetrieveGiftCardFromNonce
[apiInstance retrieveGiftCardFromNonceWithBody:body
          completionHandler: ^(SQRetrieveGiftCardFromNonceResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQGiftCardsApi->retrieveGiftCardFromNonce: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQRetrieveGiftCardFromNonceRequest***](SQRetrieveGiftCardFromNonceRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQRetrieveGiftCardFromNonceResponse***](SQRetrieveGiftCardFromNonceResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unlinkCustomerFromGiftCard**
```objc
-(NSURLSessionTask*) unlinkCustomerFromGiftCardWithGiftCardId: (NSString*) giftCardId
    body: (SQUnlinkCustomerFromGiftCardRequest*) body
        completionHandler: (void (^)(SQUnlinkCustomerFromGiftCardResponse* output, NSError* error)) handler;
```

UnlinkCustomerFromGiftCard

Unlinks a customer from a gift card, which is also referred to as removing a card on file.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* giftCardId = @"giftCardId_example"; // The ID of the gift card to be unlinked.
SQUnlinkCustomerFromGiftCardRequest* body = [[SQUnlinkCustomerFromGiftCardRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQGiftCardsApi*apiInstance = [[SQGiftCardsApi alloc] init];

// UnlinkCustomerFromGiftCard
[apiInstance unlinkCustomerFromGiftCardWithGiftCardId:giftCardId
              body:body
          completionHandler: ^(SQUnlinkCustomerFromGiftCardResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQGiftCardsApi->unlinkCustomerFromGiftCard: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **giftCardId** | **NSString***| The ID of the gift card to be unlinked. | 
 **body** | [**SQUnlinkCustomerFromGiftCardRequest***](SQUnlinkCustomerFromGiftCardRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUnlinkCustomerFromGiftCardResponse***](SQUnlinkCustomerFromGiftCardResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

