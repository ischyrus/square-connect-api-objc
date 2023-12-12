# SQMobileAuthorizationApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createMobileAuthorizationCode**](SQMobileAuthorizationApi.md#createmobileauthorizationcode) | **POST** /mobile/authorization-code | CreateMobileAuthorizationCode


# **createMobileAuthorizationCode**
```objc
-(NSURLSessionTask*) createMobileAuthorizationCodeWithBody: (SQCreateMobileAuthorizationCodeRequest*) body
        completionHandler: (void (^)(SQCreateMobileAuthorizationCodeResponse* output, NSError* error)) handler;
```

CreateMobileAuthorizationCode

Generates code to authorize a mobile application to connect to a Square card reader.  Authorization codes are one-time-use codes and expire 60 minutes after being issued.  __Important:__ The `Authorization` header you provide to this endpoint must have the following format:  ``` Authorization: Bearer ACCESS_TOKEN ```  Replace `ACCESS_TOKEN` with a [valid production authorization credential](https://developer.squareup.com/docs/build-basics/access-tokens).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCreateMobileAuthorizationCodeRequest* body = [[SQCreateMobileAuthorizationCodeRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQMobileAuthorizationApi*apiInstance = [[SQMobileAuthorizationApi alloc] init];

// CreateMobileAuthorizationCode
[apiInstance createMobileAuthorizationCodeWithBody:body
          completionHandler: ^(SQCreateMobileAuthorizationCodeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQMobileAuthorizationApi->createMobileAuthorizationCode: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCreateMobileAuthorizationCodeRequest***](SQCreateMobileAuthorizationCodeRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateMobileAuthorizationCodeResponse***](SQCreateMobileAuthorizationCodeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

