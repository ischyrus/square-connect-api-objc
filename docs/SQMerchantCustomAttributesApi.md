# SQMerchantCustomAttributesApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulkDeleteMerchantCustomAttributes**](SQMerchantCustomAttributesApi.md#bulkdeletemerchantcustomattributes) | **POST** /v2/merchants/custom-attributes/bulk-delete | BulkDeleteMerchantCustomAttributes
[**bulkUpsertMerchantCustomAttributes**](SQMerchantCustomAttributesApi.md#bulkupsertmerchantcustomattributes) | **POST** /v2/merchants/custom-attributes/bulk-upsert | BulkUpsertMerchantCustomAttributes
[**createMerchantCustomAttributeDefinition**](SQMerchantCustomAttributesApi.md#createmerchantcustomattributedefinition) | **POST** /v2/merchants/custom-attribute-definitions | CreateMerchantCustomAttributeDefinition
[**deleteMerchantCustomAttribute**](SQMerchantCustomAttributesApi.md#deletemerchantcustomattribute) | **DELETE** /v2/merchants/{merchant_id}/custom-attributes/{key} | DeleteMerchantCustomAttribute
[**deleteMerchantCustomAttributeDefinition**](SQMerchantCustomAttributesApi.md#deletemerchantcustomattributedefinition) | **DELETE** /v2/merchants/custom-attribute-definitions/{key} | DeleteMerchantCustomAttributeDefinition
[**listMerchantCustomAttributeDefinitions**](SQMerchantCustomAttributesApi.md#listmerchantcustomattributedefinitions) | **GET** /v2/merchants/custom-attribute-definitions | ListMerchantCustomAttributeDefinitions
[**listMerchantCustomAttributes**](SQMerchantCustomAttributesApi.md#listmerchantcustomattributes) | **GET** /v2/merchants/{merchant_id}/custom-attributes | ListMerchantCustomAttributes
[**retrieveMerchantCustomAttribute**](SQMerchantCustomAttributesApi.md#retrievemerchantcustomattribute) | **GET** /v2/merchants/{merchant_id}/custom-attributes/{key} | RetrieveMerchantCustomAttribute
[**retrieveMerchantCustomAttributeDefinition**](SQMerchantCustomAttributesApi.md#retrievemerchantcustomattributedefinition) | **GET** /v2/merchants/custom-attribute-definitions/{key} | RetrieveMerchantCustomAttributeDefinition
[**updateMerchantCustomAttributeDefinition**](SQMerchantCustomAttributesApi.md#updatemerchantcustomattributedefinition) | **PUT** /v2/merchants/custom-attribute-definitions/{key} | UpdateMerchantCustomAttributeDefinition
[**upsertMerchantCustomAttribute**](SQMerchantCustomAttributesApi.md#upsertmerchantcustomattribute) | **POST** /v2/merchants/{merchant_id}/custom-attributes/{key} | UpsertMerchantCustomAttribute


# **bulkDeleteMerchantCustomAttributes**
```objc
-(NSURLSessionTask*) bulkDeleteMerchantCustomAttributesWithBody: (SQBulkDeleteMerchantCustomAttributesRequest*) body
        completionHandler: (void (^)(SQBulkDeleteMerchantCustomAttributesResponse* output, NSError* error)) handler;
```

BulkDeleteMerchantCustomAttributes

Deletes [custom attributes](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) for a merchant as a bulk operation. To delete a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQBulkDeleteMerchantCustomAttributesRequest* body = [[SQBulkDeleteMerchantCustomAttributesRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQMerchantCustomAttributesApi*apiInstance = [[SQMerchantCustomAttributesApi alloc] init];

// BulkDeleteMerchantCustomAttributes
[apiInstance bulkDeleteMerchantCustomAttributesWithBody:body
          completionHandler: ^(SQBulkDeleteMerchantCustomAttributesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQMerchantCustomAttributesApi->bulkDeleteMerchantCustomAttributes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQBulkDeleteMerchantCustomAttributesRequest***](SQBulkDeleteMerchantCustomAttributesRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQBulkDeleteMerchantCustomAttributesResponse***](SQBulkDeleteMerchantCustomAttributesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulkUpsertMerchantCustomAttributes**
```objc
-(NSURLSessionTask*) bulkUpsertMerchantCustomAttributesWithBody: (SQBulkUpsertMerchantCustomAttributesRequest*) body
        completionHandler: (void (^)(SQBulkUpsertMerchantCustomAttributesResponse* output, NSError* error)) handler;
```

BulkUpsertMerchantCustomAttributes

Creates or updates [custom attributes](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) for a merchant as a bulk operation. Use this endpoint to set the value of one or more custom attributes for a merchant. A custom attribute is based on a custom attribute definition in a Square seller account, which is created using the [CreateMerchantCustomAttributeDefinition](https://developer.squareup.com/reference/square_2023-10-18/merchant-custom-attributes-api/create-merchant-custom-attribute-definition) endpoint. This `BulkUpsertMerchantCustomAttributes` endpoint accepts a map of 1 to 25 individual upsert requests and returns a map of individual upsert responses. Each upsert request has a unique ID and provides a merchant ID and custom attribute. Each upsert response is returned with the ID of the corresponding request. To create or update a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQBulkUpsertMerchantCustomAttributesRequest* body = [[SQBulkUpsertMerchantCustomAttributesRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQMerchantCustomAttributesApi*apiInstance = [[SQMerchantCustomAttributesApi alloc] init];

// BulkUpsertMerchantCustomAttributes
[apiInstance bulkUpsertMerchantCustomAttributesWithBody:body
          completionHandler: ^(SQBulkUpsertMerchantCustomAttributesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQMerchantCustomAttributesApi->bulkUpsertMerchantCustomAttributes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQBulkUpsertMerchantCustomAttributesRequest***](SQBulkUpsertMerchantCustomAttributesRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQBulkUpsertMerchantCustomAttributesResponse***](SQBulkUpsertMerchantCustomAttributesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createMerchantCustomAttributeDefinition**
```objc
-(NSURLSessionTask*) createMerchantCustomAttributeDefinitionWithBody: (SQCreateMerchantCustomAttributeDefinitionRequest*) body
        completionHandler: (void (^)(SQCreateMerchantCustomAttributeDefinitionResponse* output, NSError* error)) handler;
```

CreateMerchantCustomAttributeDefinition

Creates a merchant-related [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) for a Square seller account. Use this endpoint to define a custom attribute that can be associated with a merchant connecting to your application. A custom attribute definition specifies the `key`, `visibility`, `schema`, and other properties for a custom attribute. After the definition is created, you can call [UpsertMerchantCustomAttribute](https://developer.squareup.com/reference/square_2023-10-18/merchant-custom-attributes-api/upsert-merchant-custom-attribute) or [BulkUpsertMerchantCustomAttributes](https://developer.squareup.com/reference/square_2023-10-18/merchant-custom-attributes-api/bulk-upsert-merchant-custom-attributes) to set the custom attribute for a merchant.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCreateMerchantCustomAttributeDefinitionRequest* body = [[SQCreateMerchantCustomAttributeDefinitionRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQMerchantCustomAttributesApi*apiInstance = [[SQMerchantCustomAttributesApi alloc] init];

// CreateMerchantCustomAttributeDefinition
[apiInstance createMerchantCustomAttributeDefinitionWithBody:body
          completionHandler: ^(SQCreateMerchantCustomAttributeDefinitionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQMerchantCustomAttributesApi->createMerchantCustomAttributeDefinition: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCreateMerchantCustomAttributeDefinitionRequest***](SQCreateMerchantCustomAttributeDefinitionRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateMerchantCustomAttributeDefinitionResponse***](SQCreateMerchantCustomAttributeDefinitionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMerchantCustomAttribute**
```objc
-(NSURLSessionTask*) deleteMerchantCustomAttributeWithMerchantId: (NSString*) merchantId
    key: (NSString*) key
        completionHandler: (void (^)(SQDeleteMerchantCustomAttributeResponse* output, NSError* error)) handler;
```

DeleteMerchantCustomAttribute

Deletes a [custom attribute](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) associated with a merchant. To delete a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* merchantId = @"merchantId_example"; // The ID of the target [merchant](https://developer.squareup.com/reference/square_2023-10-18/objects/Merchant).
NSString* key = @"key_example"; // The key of the custom attribute to delete. This key must match the `key` of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key.

SQMerchantCustomAttributesApi*apiInstance = [[SQMerchantCustomAttributesApi alloc] init];

// DeleteMerchantCustomAttribute
[apiInstance deleteMerchantCustomAttributeWithMerchantId:merchantId
              key:key
          completionHandler: ^(SQDeleteMerchantCustomAttributeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQMerchantCustomAttributesApi->deleteMerchantCustomAttribute: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **merchantId** | **NSString***| The ID of the target [merchant](https://developer.squareup.com/reference/square_2023-10-18/objects/Merchant). | 
 **key** | **NSString***| The key of the custom attribute to delete. This key must match the &#x60;key&#x60; of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key. | 

### Return type

[**SQDeleteMerchantCustomAttributeResponse***](SQDeleteMerchantCustomAttributeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMerchantCustomAttributeDefinition**
```objc
-(NSURLSessionTask*) deleteMerchantCustomAttributeDefinitionWithKey: (NSString*) key
        completionHandler: (void (^)(SQDeleteMerchantCustomAttributeDefinitionResponse* output, NSError* error)) handler;
```

DeleteMerchantCustomAttributeDefinition

Deletes a merchant-related [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) from a Square seller account. Deleting a custom attribute definition also deletes the corresponding custom attribute from the merchant. Only the definition owner can delete a custom attribute definition.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* key = @"key_example"; // The key of the custom attribute definition to delete.

SQMerchantCustomAttributesApi*apiInstance = [[SQMerchantCustomAttributesApi alloc] init];

// DeleteMerchantCustomAttributeDefinition
[apiInstance deleteMerchantCustomAttributeDefinitionWithKey:key
          completionHandler: ^(SQDeleteMerchantCustomAttributeDefinitionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQMerchantCustomAttributesApi->deleteMerchantCustomAttributeDefinition: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **NSString***| The key of the custom attribute definition to delete. | 

### Return type

[**SQDeleteMerchantCustomAttributeDefinitionResponse***](SQDeleteMerchantCustomAttributeDefinitionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listMerchantCustomAttributeDefinitions**
```objc
-(NSURLSessionTask*) listMerchantCustomAttributeDefinitionsWithVisibilityFilter: (NSString*) visibilityFilter
    limit: (NSNumber*) limit
    cursor: (NSString*) cursor
        completionHandler: (void (^)(SQListMerchantCustomAttributeDefinitionsResponse* output, NSError* error)) handler;
```

ListMerchantCustomAttributeDefinitions

Lists the merchant-related [custom attribute definitions](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) that belong to a Square seller account. When all response pages are retrieved, the results include all custom attribute definitions that are visible to the requesting application, including those that are created by other applications and set to `VISIBILITY_READ_ONLY` or `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* visibilityFilter = @"visibilityFilter_example"; // Filters the `CustomAttributeDefinition` results by their `visibility` values. (optional)
NSNumber* limit = @56; // The maximum number of results to return in a single paged response. This limit is advisory. The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100. The default value is 20. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
NSString* cursor = @"cursor_example"; // The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)

SQMerchantCustomAttributesApi*apiInstance = [[SQMerchantCustomAttributesApi alloc] init];

// ListMerchantCustomAttributeDefinitions
[apiInstance listMerchantCustomAttributeDefinitionsWithVisibilityFilter:visibilityFilter
              limit:limit
              cursor:cursor
          completionHandler: ^(SQListMerchantCustomAttributeDefinitionsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQMerchantCustomAttributesApi->listMerchantCustomAttributeDefinitions: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **visibilityFilter** | **NSString***| Filters the &#x60;CustomAttributeDefinition&#x60; results by their &#x60;visibility&#x60; values. | [optional] 
 **limit** | **NSNumber***| The maximum number of results to return in a single paged response. This limit is advisory. The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100. The default value is 20. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
 **cursor** | **NSString***| The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 

### Return type

[**SQListMerchantCustomAttributeDefinitionsResponse***](SQListMerchantCustomAttributeDefinitionsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listMerchantCustomAttributes**
```objc
-(NSURLSessionTask*) listMerchantCustomAttributesWithMerchantId: (NSString*) merchantId
    visibilityFilter: (NSString*) visibilityFilter
    limit: (NSNumber*) limit
    cursor: (NSString*) cursor
    withDefinitions: (NSNumber*) withDefinitions
        completionHandler: (void (^)(SQListMerchantCustomAttributesResponse* output, NSError* error)) handler;
```

ListMerchantCustomAttributes

Lists the [custom attributes](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) associated with a merchant. You can use the `with_definitions` query parameter to also retrieve custom attribute definitions in the same call. When all response pages are retrieved, the results include all custom attributes that are visible to the requesting application, including those that are owned by other applications and set to `VISIBILITY_READ_ONLY` or `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* merchantId = @"merchantId_example"; // The ID of the target [merchant](https://developer.squareup.com/reference/square_2023-10-18/objects/Merchant).
NSString* visibilityFilter = @"visibilityFilter_example"; // Filters the `CustomAttributeDefinition` results by their `visibility` values. (optional)
NSNumber* limit = @56; // The maximum number of results to return in a single paged response. This limit is advisory. The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100. The default value is 20. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
NSString* cursor = @"cursor_example"; // The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
NSNumber* withDefinitions = @true; // Indicates whether to return the [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) in the `definition` field of each custom attribute. Set this parameter to `true` to get the name and description of each custom attribute, information about the data type, or other definition details. The default value is `false`. (optional)

SQMerchantCustomAttributesApi*apiInstance = [[SQMerchantCustomAttributesApi alloc] init];

// ListMerchantCustomAttributes
[apiInstance listMerchantCustomAttributesWithMerchantId:merchantId
              visibilityFilter:visibilityFilter
              limit:limit
              cursor:cursor
              withDefinitions:withDefinitions
          completionHandler: ^(SQListMerchantCustomAttributesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQMerchantCustomAttributesApi->listMerchantCustomAttributes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **merchantId** | **NSString***| The ID of the target [merchant](https://developer.squareup.com/reference/square_2023-10-18/objects/Merchant). | 
 **visibilityFilter** | **NSString***| Filters the &#x60;CustomAttributeDefinition&#x60; results by their &#x60;visibility&#x60; values. | [optional] 
 **limit** | **NSNumber***| The maximum number of results to return in a single paged response. This limit is advisory. The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100. The default value is 20. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
 **cursor** | **NSString***| The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
 **withDefinitions** | **NSNumber***| Indicates whether to return the [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) in the &#x60;definition&#x60; field of each custom attribute. Set this parameter to &#x60;true&#x60; to get the name and description of each custom attribute, information about the data type, or other definition details. The default value is &#x60;false&#x60;. | [optional] 

### Return type

[**SQListMerchantCustomAttributesResponse***](SQListMerchantCustomAttributesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveMerchantCustomAttribute**
```objc
-(NSURLSessionTask*) retrieveMerchantCustomAttributeWithMerchantId: (NSString*) merchantId
    key: (NSString*) key
    withDefinition: (NSNumber*) withDefinition
    version: (NSNumber*) version
        completionHandler: (void (^)(SQRetrieveMerchantCustomAttributeResponse* output, NSError* error)) handler;
```

RetrieveMerchantCustomAttribute

Retrieves a [custom attribute](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) associated with a merchant. You can use the `with_definition` query parameter to also retrieve the custom attribute definition in the same call. To retrieve a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_ONLY` or `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* merchantId = @"merchantId_example"; // The ID of the target [merchant](https://developer.squareup.com/reference/square_2023-10-18/objects/Merchant).
NSString* key = @"key_example"; // The key of the custom attribute to retrieve. This key must match the `key` of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key.
NSNumber* withDefinition = @true; // Indicates whether to return the [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) in the `definition` field of the custom attribute. Set this parameter to `true` to get the name and description of the custom attribute, information about the data type, or other definition details. The default value is `false`. (optional)
NSNumber* version = @56; // The current version of the custom attribute, which is used for strongly consistent reads to guarantee that you receive the most up-to-date data. When included in the request, Square returns the specified version or a higher version if one exists. If the specified version is higher than the current version, Square returns a `BAD_REQUEST` error. (optional)

SQMerchantCustomAttributesApi*apiInstance = [[SQMerchantCustomAttributesApi alloc] init];

// RetrieveMerchantCustomAttribute
[apiInstance retrieveMerchantCustomAttributeWithMerchantId:merchantId
              key:key
              withDefinition:withDefinition
              version:version
          completionHandler: ^(SQRetrieveMerchantCustomAttributeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQMerchantCustomAttributesApi->retrieveMerchantCustomAttribute: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **merchantId** | **NSString***| The ID of the target [merchant](https://developer.squareup.com/reference/square_2023-10-18/objects/Merchant). | 
 **key** | **NSString***| The key of the custom attribute to retrieve. This key must match the &#x60;key&#x60; of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key. | 
 **withDefinition** | **NSNumber***| Indicates whether to return the [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) in the &#x60;definition&#x60; field of the custom attribute. Set this parameter to &#x60;true&#x60; to get the name and description of the custom attribute, information about the data type, or other definition details. The default value is &#x60;false&#x60;. | [optional] 
 **version** | **NSNumber***| The current version of the custom attribute, which is used for strongly consistent reads to guarantee that you receive the most up-to-date data. When included in the request, Square returns the specified version or a higher version if one exists. If the specified version is higher than the current version, Square returns a &#x60;BAD_REQUEST&#x60; error. | [optional] 

### Return type

[**SQRetrieveMerchantCustomAttributeResponse***](SQRetrieveMerchantCustomAttributeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveMerchantCustomAttributeDefinition**
```objc
-(NSURLSessionTask*) retrieveMerchantCustomAttributeDefinitionWithKey: (NSString*) key
    version: (NSNumber*) version
        completionHandler: (void (^)(SQRetrieveMerchantCustomAttributeDefinitionResponse* output, NSError* error)) handler;
```

RetrieveMerchantCustomAttributeDefinition

Retrieves a merchant-related [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) from a Square seller account. To retrieve a custom attribute definition created by another application, the `visibility` setting must be `VISIBILITY_READ_ONLY` or `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* key = @"key_example"; // The key of the custom attribute definition to retrieve. If the requesting application is not the definition owner, you must use the qualified key.
NSNumber* version = @56; // The current version of the custom attribute definition, which is used for strongly consistent reads to guarantee that you receive the most up-to-date data. When included in the request, Square returns the specified version or a higher version if one exists. If the specified version is higher than the current version, Square returns a `BAD_REQUEST` error. (optional)

SQMerchantCustomAttributesApi*apiInstance = [[SQMerchantCustomAttributesApi alloc] init];

// RetrieveMerchantCustomAttributeDefinition
[apiInstance retrieveMerchantCustomAttributeDefinitionWithKey:key
              version:version
          completionHandler: ^(SQRetrieveMerchantCustomAttributeDefinitionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQMerchantCustomAttributesApi->retrieveMerchantCustomAttributeDefinition: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **NSString***| The key of the custom attribute definition to retrieve. If the requesting application is not the definition owner, you must use the qualified key. | 
 **version** | **NSNumber***| The current version of the custom attribute definition, which is used for strongly consistent reads to guarantee that you receive the most up-to-date data. When included in the request, Square returns the specified version or a higher version if one exists. If the specified version is higher than the current version, Square returns a &#x60;BAD_REQUEST&#x60; error. | [optional] 

### Return type

[**SQRetrieveMerchantCustomAttributeDefinitionResponse***](SQRetrieveMerchantCustomAttributeDefinitionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMerchantCustomAttributeDefinition**
```objc
-(NSURLSessionTask*) updateMerchantCustomAttributeDefinitionWithKey: (NSString*) key
    body: (SQUpdateMerchantCustomAttributeDefinitionRequest*) body
        completionHandler: (void (^)(SQUpdateMerchantCustomAttributeDefinitionResponse* output, NSError* error)) handler;
```

UpdateMerchantCustomAttributeDefinition

Updates a merchant-related [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) for a Square seller account. Use this endpoint to update the following fields: `name`, `description`, `visibility`, or the `schema` for a `Selection` data type. Only the definition owner can update a custom attribute definition.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* key = @"key_example"; // The key of the custom attribute definition to update.
SQUpdateMerchantCustomAttributeDefinitionRequest* body = [[SQUpdateMerchantCustomAttributeDefinitionRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQMerchantCustomAttributesApi*apiInstance = [[SQMerchantCustomAttributesApi alloc] init];

// UpdateMerchantCustomAttributeDefinition
[apiInstance updateMerchantCustomAttributeDefinitionWithKey:key
              body:body
          completionHandler: ^(SQUpdateMerchantCustomAttributeDefinitionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQMerchantCustomAttributesApi->updateMerchantCustomAttributeDefinition: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **NSString***| The key of the custom attribute definition to update. | 
 **body** | [**SQUpdateMerchantCustomAttributeDefinitionRequest***](SQUpdateMerchantCustomAttributeDefinitionRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpdateMerchantCustomAttributeDefinitionResponse***](SQUpdateMerchantCustomAttributeDefinitionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upsertMerchantCustomAttribute**
```objc
-(NSURLSessionTask*) upsertMerchantCustomAttributeWithMerchantId: (NSString*) merchantId
    key: (NSString*) key
    body: (SQUpsertMerchantCustomAttributeRequest*) body
        completionHandler: (void (^)(SQUpsertMerchantCustomAttributeResponse* output, NSError* error)) handler;
```

UpsertMerchantCustomAttribute

Creates or updates a [custom attribute](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) for a merchant. Use this endpoint to set the value of a custom attribute for a specified merchant. A custom attribute is based on a custom attribute definition in a Square seller account, which is created using the [CreateMerchantCustomAttributeDefinition](https://developer.squareup.com/reference/square_2023-10-18/merchant-custom-attributes-api/create-merchant-custom-attribute-definition) endpoint. To create or update a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* merchantId = @"merchantId_example"; // The ID of the target [merchant](https://developer.squareup.com/reference/square_2023-10-18/objects/Merchant).
NSString* key = @"key_example"; // The key of the custom attribute to create or update. This key must match the `key` of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key.
SQUpsertMerchantCustomAttributeRequest* body = [[SQUpsertMerchantCustomAttributeRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQMerchantCustomAttributesApi*apiInstance = [[SQMerchantCustomAttributesApi alloc] init];

// UpsertMerchantCustomAttribute
[apiInstance upsertMerchantCustomAttributeWithMerchantId:merchantId
              key:key
              body:body
          completionHandler: ^(SQUpsertMerchantCustomAttributeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQMerchantCustomAttributesApi->upsertMerchantCustomAttribute: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **merchantId** | **NSString***| The ID of the target [merchant](https://developer.squareup.com/reference/square_2023-10-18/objects/Merchant). | 
 **key** | **NSString***| The key of the custom attribute to create or update. This key must match the &#x60;key&#x60; of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key. | 
 **body** | [**SQUpsertMerchantCustomAttributeRequest***](SQUpsertMerchantCustomAttributeRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpsertMerchantCustomAttributeResponse***](SQUpsertMerchantCustomAttributeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

