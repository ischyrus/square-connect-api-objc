# SQApplePayApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**registerDomain**](SQApplePayApi.md#registerdomain) | **POST** /v2/apple-pay/domains | RegisterDomain


# **registerDomain**
```objc
-(NSURLSessionTask*) registerDomainWithBody: (SQRegisterDomainRequest*) body
        completionHandler: (void (^)(SQRegisterDomainResponse* output, NSError* error)) handler;
```

RegisterDomain

Activates a domain for use with Apple Pay on the Web and Square. A validation is performed on this domain by Apple to ensure that it is properly set up as an Apple Pay enabled domain.  This endpoint provides an easy way for platform developers to bulk activate Apple Pay on the Web with Square for merchants using their platform.  Note: The SqPaymentForm library is deprecated as of May 13, 2021, and will only receive critical security updates until it is retired on October 31, 2022. You must migrate your payment form code to the Web Payments SDK to continue using your domain for Apple Pay. For more information on migrating to the Web Payments SDK, see [Migrate to the Web Payments SDK](https://developer.squareup.com/docs/web-payments/migrate).  To learn more about the Web Payments SDK and how to add Apple Pay, see [Take an Apple Pay Payment](https://developer.squareup.com/docs/web-payments/apple-pay).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQRegisterDomainRequest* body = [[SQRegisterDomainRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQApplePayApi*apiInstance = [[SQApplePayApi alloc] init];

// RegisterDomain
[apiInstance registerDomainWithBody:body
          completionHandler: ^(SQRegisterDomainResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQApplePayApi->registerDomain: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQRegisterDomainRequest***](SQRegisterDomainRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQRegisterDomainResponse***](SQRegisterDomainResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

