# SQSitesApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listSites**](SQSitesApi.md#listsites) | **GET** /v2/sites | ListSites


# **listSites**
```objc
-(NSURLSessionTask*) listSitesWithCompletionHandler: 
        (void (^)(SQListSitesResponse* output, NSError* error)) handler;
```

ListSites

Lists the Square Online sites that belong to a seller. Sites are listed in descending order by the `created_at` date.   __Note:__ Square Online APIs are publicly available as part of an early access program. For more information, see [Early access program for Square Online APIs](https://developer.squareup.com/docs/online-api#early-access-program-for-square-online-apis).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];



SQSitesApi*apiInstance = [[SQSitesApi alloc] init];

// ListSites
[apiInstance listSitesWithCompletionHandler: 
          ^(SQListSitesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQSitesApi->listSites: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SQListSitesResponse***](SQListSitesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

