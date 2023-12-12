# SQSnippetsApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteSnippet**](SQSnippetsApi.md#deletesnippet) | **DELETE** /v2/sites/{site_id}/snippet | DeleteSnippet
[**retrieveSnippet**](SQSnippetsApi.md#retrievesnippet) | **GET** /v2/sites/{site_id}/snippet | RetrieveSnippet
[**upsertSnippet**](SQSnippetsApi.md#upsertsnippet) | **POST** /v2/sites/{site_id}/snippet | UpsertSnippet


# **deleteSnippet**
```objc
-(NSURLSessionTask*) deleteSnippetWithSiteId: (NSString*) siteId
        completionHandler: (void (^)(SQDeleteSnippetResponse* output, NSError* error)) handler;
```

DeleteSnippet

Removes your snippet from a Square Online site.  You can call [ListSites](https://developer.squareup.com/reference/square_2023-10-18/sites-api/list-sites) to get the IDs of the sites that belong to a seller.   __Note:__ Square Online APIs are publicly available as part of an early access program. For more information, see [Early access program for Square Online APIs](https://developer.squareup.com/docs/online-api#early-access-program-for-square-online-apis).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* siteId = @"siteId_example"; // The ID of the site that contains the snippet.

SQSnippetsApi*apiInstance = [[SQSnippetsApi alloc] init];

// DeleteSnippet
[apiInstance deleteSnippetWithSiteId:siteId
          completionHandler: ^(SQDeleteSnippetResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQSnippetsApi->deleteSnippet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteId** | **NSString***| The ID of the site that contains the snippet. | 

### Return type

[**SQDeleteSnippetResponse***](SQDeleteSnippetResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveSnippet**
```objc
-(NSURLSessionTask*) retrieveSnippetWithSiteId: (NSString*) siteId
        completionHandler: (void (^)(SQRetrieveSnippetResponse* output, NSError* error)) handler;
```

RetrieveSnippet

Retrieves your snippet from a Square Online site. A site can contain snippets from multiple snippet applications, but you can retrieve only the snippet that was added by your application.  You can call [ListSites](https://developer.squareup.com/reference/square_2023-10-18/sites-api/list-sites) to get the IDs of the sites that belong to a seller.   __Note:__ Square Online APIs are publicly available as part of an early access program. For more information, see [Early access program for Square Online APIs](https://developer.squareup.com/docs/online-api#early-access-program-for-square-online-apis).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* siteId = @"siteId_example"; // The ID of the site that contains the snippet.

SQSnippetsApi*apiInstance = [[SQSnippetsApi alloc] init];

// RetrieveSnippet
[apiInstance retrieveSnippetWithSiteId:siteId
          completionHandler: ^(SQRetrieveSnippetResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQSnippetsApi->retrieveSnippet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteId** | **NSString***| The ID of the site that contains the snippet. | 

### Return type

[**SQRetrieveSnippetResponse***](SQRetrieveSnippetResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upsertSnippet**
```objc
-(NSURLSessionTask*) upsertSnippetWithSiteId: (NSString*) siteId
    body: (SQUpsertSnippetRequest*) body
        completionHandler: (void (^)(SQUpsertSnippetResponse* output, NSError* error)) handler;
```

UpsertSnippet

Adds a snippet to a Square Online site or updates the existing snippet on the site.  The snippet code is appended to the end of the `head` element on every page of the site, except checkout pages. A snippet application can add one snippet to a given site.   You can call [ListSites](https://developer.squareup.com/reference/square_2023-10-18/sites-api/list-sites) to get the IDs of the sites that belong to a seller.   __Note:__ Square Online APIs are publicly available as part of an early access program. For more information, see [Early access program for Square Online APIs](https://developer.squareup.com/docs/online-api#early-access-program-for-square-online-apis).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* siteId = @"siteId_example"; // The ID of the site where you want to add or update the snippet.
SQUpsertSnippetRequest* body = [[SQUpsertSnippetRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQSnippetsApi*apiInstance = [[SQSnippetsApi alloc] init];

// UpsertSnippet
[apiInstance upsertSnippetWithSiteId:siteId
              body:body
          completionHandler: ^(SQUpsertSnippetResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQSnippetsApi->upsertSnippet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteId** | **NSString***| The ID of the site where you want to add or update the snippet. | 
 **body** | [**SQUpsertSnippetRequest***](SQUpsertSnippetRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpsertSnippetResponse***](SQUpsertSnippetResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

