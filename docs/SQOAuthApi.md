# SQOAuthApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**obtainToken**](SQOAuthApi.md#obtaintoken) | **POST** /oauth2/token | ObtainToken
[**renewToken**](SQOAuthApi.md#renewtoken) | **POST** /oauth2/clients/{client_id}/access-token/renew | RenewToken
[**retrieveTokenStatus**](SQOAuthApi.md#retrievetokenstatus) | **POST** /oauth2/token/status | RetrieveTokenStatus
[**revokeToken**](SQOAuthApi.md#revoketoken) | **POST** /oauth2/revoke | RevokeToken


# **obtainToken**
```objc
-(NSURLSessionTask*) obtainTokenWithBody: (SQObtainTokenRequest*) body
        completionHandler: (void (^)(SQObtainTokenResponse* output, NSError* error)) handler;
```

ObtainToken

Returns an OAuth access token and a refresh token unless the  `short_lived` parameter is set to `true`, in which case the endpoint  returns only an access token.  The `grant_type` parameter specifies the type of OAuth request. If  `grant_type` is `authorization_code`, you must include the authorization  code you received when a seller granted you authorization. If `grant_type`  is `refresh_token`, you must provide a valid refresh token. If you're using  an old version of the Square APIs (prior to March 13, 2019), `grant_type`  can be `migration_token` and you must provide a valid migration token.  You can use the `scopes` parameter to limit the set of permissions granted  to the access token and refresh token. You can use the `short_lived` parameter  to create an access token that expires in 24 hours.  __Note:__ OAuth tokens should be encrypted and stored on a secure server.  Application clients should never interact directly with OAuth tokens.

### Example 
```objc

SQObtainTokenRequest* body = [[SQObtainTokenRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQOAuthApi*apiInstance = [[SQOAuthApi alloc] init];

// ObtainToken
[apiInstance obtainTokenWithBody:body
          completionHandler: ^(SQObtainTokenResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQOAuthApi->obtainToken: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQObtainTokenRequest***](SQObtainTokenRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQObtainTokenResponse***](SQObtainTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **renewToken**
```objc
-(NSURLSessionTask*) renewTokenWithClientId: (NSString*) clientId
    body: (SQRenewTokenRequest*) body
        completionHandler: (void (^)(SQRenewTokenResponse* output, NSError* error)) handler;
```

RenewToken

`RenewToken` is deprecated. For information about refreshing OAuth access tokens, see [Migrate from Renew to Refresh OAuth Tokens](https://developer.squareup.com/docs/oauth-api/migrate-to-refresh-tokens).  Renews an OAuth access token before it expires.  OAuth access tokens besides your application's personal access token expire after 30 days. You can also renew expired tokens within 15 days of their expiration. You cannot renew an access token that has been expired for more than 15 days. Instead, the associated user must recomplete the OAuth flow from the beginning.  __Important:__ The `Authorization` header for this endpoint must have the following format:  ``` Authorization: Client APPLICATION_SECRET ```  Replace `APPLICATION_SECRET` with the application secret on the **Credentials** page in the [Developer Dashboard](https://developer.squareup.com/apps).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: oauth2ClientSecret)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* clientId = @"clientId_example"; // Your application ID, which is available on the **OAuth** page in the [Developer Dashboard](https://developer.squareup.com/apps).
SQRenewTokenRequest* body = [[SQRenewTokenRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQOAuthApi*apiInstance = [[SQOAuthApi alloc] init];

// RenewToken
[apiInstance renewTokenWithClientId:clientId
              body:body
          completionHandler: ^(SQRenewTokenResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQOAuthApi->renewToken: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **NSString***| Your application ID, which is available on the **OAuth** page in the [Developer Dashboard](https://developer.squareup.com/apps). | 
 **body** | [**SQRenewTokenRequest***](SQRenewTokenRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQRenewTokenResponse***](SQRenewTokenResponse.md)

### Authorization

[oauth2ClientSecret](../README.md#oauth2ClientSecret)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveTokenStatus**
```objc
-(NSURLSessionTask*) retrieveTokenStatusWithCompletionHandler: 
        (void (^)(SQRetrieveTokenStatusResponse* output, NSError* error)) handler;
```

RetrieveTokenStatus

Returns information about an [OAuth access token](https://developer.squareup.com/docs/build-basics/access-tokens#get-an-oauth-access-token) or an application’s [personal access token](https://developer.squareup.com/docs/build-basics/access-tokens#get-a-personal-access-token).  Add the access token to the Authorization header of the request.  __Important:__ The `Authorization` header you provide to this endpoint must have the following format:  ``` Authorization: Bearer ACCESS_TOKEN ```  where `ACCESS_TOKEN` is a [valid production authorization credential](https://developer.squareup.com/docs/build-basics/access-tokens).  If the access token is expired or not a valid access token, the endpoint returns an `UNAUTHORIZED` error.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];



SQOAuthApi*apiInstance = [[SQOAuthApi alloc] init];

// RetrieveTokenStatus
[apiInstance retrieveTokenStatusWithCompletionHandler: 
          ^(SQRetrieveTokenStatusResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQOAuthApi->retrieveTokenStatus: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SQRetrieveTokenStatusResponse***](SQRetrieveTokenStatusResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeToken**
```objc
-(NSURLSessionTask*) revokeTokenWithBody: (SQRevokeTokenRequest*) body
        completionHandler: (void (^)(SQRevokeTokenResponse* output, NSError* error)) handler;
```

RevokeToken

Revokes an access token generated with the OAuth flow.  If an account has more than one OAuth access token for your application, this endpoint revokes all of them, regardless of which token you specify.   __Important:__ The `Authorization` header for this endpoint must have the following format:  ``` Authorization: Client APPLICATION_SECRET ```  Replace `APPLICATION_SECRET` with the application secret on the **OAuth** page for your application in the Developer Dashboard.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: oauth2ClientSecret)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


SQRevokeTokenRequest* body = [[SQRevokeTokenRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQOAuthApi*apiInstance = [[SQOAuthApi alloc] init];

// RevokeToken
[apiInstance revokeTokenWithBody:body
          completionHandler: ^(SQRevokeTokenResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQOAuthApi->revokeToken: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQRevokeTokenRequest***](SQRevokeTokenRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQRevokeTokenResponse***](SQRevokeTokenResponse.md)

### Authorization

[oauth2ClientSecret](../README.md#oauth2ClientSecret)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

