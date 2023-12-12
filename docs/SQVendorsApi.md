# SQVendorsApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulkCreateVendors**](SQVendorsApi.md#bulkcreatevendors) | **POST** /v2/vendors/bulk-create | BulkCreateVendors
[**bulkRetrieveVendors**](SQVendorsApi.md#bulkretrievevendors) | **POST** /v2/vendors/bulk-retrieve | BulkRetrieveVendors
[**bulkUpdateVendors**](SQVendorsApi.md#bulkupdatevendors) | **PUT** /v2/vendors/bulk-update | BulkUpdateVendors
[**createVendor**](SQVendorsApi.md#createvendor) | **POST** /v2/vendors/create | CreateVendor
[**retrieveVendor**](SQVendorsApi.md#retrievevendor) | **GET** /v2/vendors/{vendor_id} | RetrieveVendor
[**searchVendors**](SQVendorsApi.md#searchvendors) | **POST** /v2/vendors/search | SearchVendors
[**updateVendor**](SQVendorsApi.md#updatevendor) | **PUT** /v2/vendors/{vendor_id} | UpdateVendor


# **bulkCreateVendors**
```objc
-(NSURLSessionTask*) bulkCreateVendorsWithBody: (SQBulkCreateVendorsRequest*) body
        completionHandler: (void (^)(SQBulkCreateVendorsResponse* output, NSError* error)) handler;
```

BulkCreateVendors

Creates one or more [Vendor](https://developer.squareup.com/reference/square_2023-10-18/objects/Vendor) objects to represent suppliers to a seller.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQBulkCreateVendorsRequest* body = [[SQBulkCreateVendorsRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQVendorsApi*apiInstance = [[SQVendorsApi alloc] init];

// BulkCreateVendors
[apiInstance bulkCreateVendorsWithBody:body
          completionHandler: ^(SQBulkCreateVendorsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQVendorsApi->bulkCreateVendors: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQBulkCreateVendorsRequest***](SQBulkCreateVendorsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQBulkCreateVendorsResponse***](SQBulkCreateVendorsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulkRetrieveVendors**
```objc
-(NSURLSessionTask*) bulkRetrieveVendorsWithBody: (SQBulkRetrieveVendorsRequest*) body
        completionHandler: (void (^)(SQBulkRetrieveVendorsResponse* output, NSError* error)) handler;
```

BulkRetrieveVendors

Retrieves one or more vendors of specified [Vendor](https://developer.squareup.com/reference/square_2023-10-18/objects/Vendor) IDs.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQBulkRetrieveVendorsRequest* body = [[SQBulkRetrieveVendorsRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQVendorsApi*apiInstance = [[SQVendorsApi alloc] init];

// BulkRetrieveVendors
[apiInstance bulkRetrieveVendorsWithBody:body
          completionHandler: ^(SQBulkRetrieveVendorsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQVendorsApi->bulkRetrieveVendors: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQBulkRetrieveVendorsRequest***](SQBulkRetrieveVendorsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQBulkRetrieveVendorsResponse***](SQBulkRetrieveVendorsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulkUpdateVendors**
```objc
-(NSURLSessionTask*) bulkUpdateVendorsWithBody: (SQBulkUpdateVendorsRequest*) body
        completionHandler: (void (^)(SQBulkUpdateVendorsResponse* output, NSError* error)) handler;
```

BulkUpdateVendors

Updates one or more of existing [Vendor](https://developer.squareup.com/reference/square_2023-10-18/objects/Vendor) objects as suppliers to a seller.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQBulkUpdateVendorsRequest* body = [[SQBulkUpdateVendorsRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQVendorsApi*apiInstance = [[SQVendorsApi alloc] init];

// BulkUpdateVendors
[apiInstance bulkUpdateVendorsWithBody:body
          completionHandler: ^(SQBulkUpdateVendorsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQVendorsApi->bulkUpdateVendors: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQBulkUpdateVendorsRequest***](SQBulkUpdateVendorsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQBulkUpdateVendorsResponse***](SQBulkUpdateVendorsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createVendor**
```objc
-(NSURLSessionTask*) createVendorWithBody: (SQCreateVendorRequest*) body
        completionHandler: (void (^)(SQCreateVendorResponse* output, NSError* error)) handler;
```

CreateVendor

Creates a single [Vendor](https://developer.squareup.com/reference/square_2023-10-18/objects/Vendor) object to represent a supplier to a seller.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCreateVendorRequest* body = [[SQCreateVendorRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQVendorsApi*apiInstance = [[SQVendorsApi alloc] init];

// CreateVendor
[apiInstance createVendorWithBody:body
          completionHandler: ^(SQCreateVendorResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQVendorsApi->createVendor: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCreateVendorRequest***](SQCreateVendorRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateVendorResponse***](SQCreateVendorResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveVendor**
```objc
-(NSURLSessionTask*) retrieveVendorWithVendorId: (NSString*) vendorId
        completionHandler: (void (^)(SQRetrieveVendorResponse* output, NSError* error)) handler;
```

RetrieveVendor

Retrieves the vendor of a specified [Vendor](https://developer.squareup.com/reference/square_2023-10-18/objects/Vendor) ID.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* vendorId = @"vendorId_example"; // ID of the [Vendor](https://developer.squareup.com/reference/square_2023-10-18/objects/Vendor) to retrieve.

SQVendorsApi*apiInstance = [[SQVendorsApi alloc] init];

// RetrieveVendor
[apiInstance retrieveVendorWithVendorId:vendorId
          completionHandler: ^(SQRetrieveVendorResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQVendorsApi->retrieveVendor: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vendorId** | **NSString***| ID of the [Vendor](https://developer.squareup.com/reference/square_2023-10-18/objects/Vendor) to retrieve. | 

### Return type

[**SQRetrieveVendorResponse***](SQRetrieveVendorResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchVendors**
```objc
-(NSURLSessionTask*) searchVendorsWithBody: (SQSearchVendorsRequest*) body
        completionHandler: (void (^)(SQSearchVendorsResponse* output, NSError* error)) handler;
```

SearchVendors

Searches for vendors using a filter against supported [Vendor](https://developer.squareup.com/reference/square_2023-10-18/objects/Vendor) properties and a supported sorter.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQSearchVendorsRequest* body = [[SQSearchVendorsRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQVendorsApi*apiInstance = [[SQVendorsApi alloc] init];

// SearchVendors
[apiInstance searchVendorsWithBody:body
          completionHandler: ^(SQSearchVendorsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQVendorsApi->searchVendors: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQSearchVendorsRequest***](SQSearchVendorsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQSearchVendorsResponse***](SQSearchVendorsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateVendor**
```objc
-(NSURLSessionTask*) updateVendorWithVendorId: (NSString*) vendorId
    body: (SQUpdateVendorRequest*) body
        completionHandler: (void (^)(SQUpdateVendorResponse* output, NSError* error)) handler;
```

UpdateVendor

Updates an existing [Vendor](https://developer.squareup.com/reference/square_2023-10-18/objects/Vendor) object as a supplier to a seller.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* vendorId = @"vendorId_example"; // 
SQUpdateVendorRequest* body = [[SQUpdateVendorRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQVendorsApi*apiInstance = [[SQVendorsApi alloc] init];

// UpdateVendor
[apiInstance updateVendorWithVendorId:vendorId
              body:body
          completionHandler: ^(SQUpdateVendorResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQVendorsApi->updateVendor: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vendorId** | **NSString***|  | 
 **body** | [**SQUpdateVendorRequest***](SQUpdateVendorRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpdateVendorResponse***](SQUpdateVendorResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

