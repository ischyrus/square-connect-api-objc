# SQCustomerCustomAttributesApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulkUpsertCustomerCustomAttributes**](SQCustomerCustomAttributesApi.md#bulkupsertcustomercustomattributes) | **POST** /v2/customers/custom-attributes/bulk-upsert | BulkUpsertCustomerCustomAttributes
[**createCustomerCustomAttributeDefinition**](SQCustomerCustomAttributesApi.md#createcustomercustomattributedefinition) | **POST** /v2/customers/custom-attribute-definitions | CreateCustomerCustomAttributeDefinition
[**deleteCustomerCustomAttribute**](SQCustomerCustomAttributesApi.md#deletecustomercustomattribute) | **DELETE** /v2/customers/{customer_id}/custom-attributes/{key} | DeleteCustomerCustomAttribute
[**deleteCustomerCustomAttributeDefinition**](SQCustomerCustomAttributesApi.md#deletecustomercustomattributedefinition) | **DELETE** /v2/customers/custom-attribute-definitions/{key} | DeleteCustomerCustomAttributeDefinition
[**listCustomerCustomAttributeDefinitions**](SQCustomerCustomAttributesApi.md#listcustomercustomattributedefinitions) | **GET** /v2/customers/custom-attribute-definitions | ListCustomerCustomAttributeDefinitions
[**listCustomerCustomAttributes**](SQCustomerCustomAttributesApi.md#listcustomercustomattributes) | **GET** /v2/customers/{customer_id}/custom-attributes | ListCustomerCustomAttributes
[**retrieveCustomerCustomAttribute**](SQCustomerCustomAttributesApi.md#retrievecustomercustomattribute) | **GET** /v2/customers/{customer_id}/custom-attributes/{key} | RetrieveCustomerCustomAttribute
[**retrieveCustomerCustomAttributeDefinition**](SQCustomerCustomAttributesApi.md#retrievecustomercustomattributedefinition) | **GET** /v2/customers/custom-attribute-definitions/{key} | RetrieveCustomerCustomAttributeDefinition
[**updateCustomerCustomAttributeDefinition**](SQCustomerCustomAttributesApi.md#updatecustomercustomattributedefinition) | **PUT** /v2/customers/custom-attribute-definitions/{key} | UpdateCustomerCustomAttributeDefinition
[**upsertCustomerCustomAttribute**](SQCustomerCustomAttributesApi.md#upsertcustomercustomattribute) | **POST** /v2/customers/{customer_id}/custom-attributes/{key} | UpsertCustomerCustomAttribute


# **bulkUpsertCustomerCustomAttributes**
```objc
-(NSURLSessionTask*) bulkUpsertCustomerCustomAttributesWithBody: (SQBulkUpsertCustomerCustomAttributesRequest*) body
        completionHandler: (void (^)(SQBulkUpsertCustomerCustomAttributesResponse* output, NSError* error)) handler;
```

BulkUpsertCustomerCustomAttributes

Creates or updates [custom attributes](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) for customer profiles as a bulk operation.  Use this endpoint to set the value of one or more custom attributes for one or more customer profiles. A custom attribute is based on a custom attribute definition in a Square seller account, which is created using the [CreateCustomerCustomAttributeDefinition](https://developer.squareup.com/reference/square_2023-10-18/customer-custom-attributes-api/create-customer-custom-attribute-definition) endpoint.  This `BulkUpsertCustomerCustomAttributes` endpoint accepts a map of 1 to 25 individual upsert  requests and returns a map of individual upsert responses. Each upsert request has a unique ID  and provides a customer ID and custom attribute. Each upsert response is returned with the ID  of the corresponding request.  To create or update a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_WRITE_VALUES`. Note that seller-defined custom attributes (also known as custom fields) are always set to `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQBulkUpsertCustomerCustomAttributesRequest* body = [[SQBulkUpsertCustomerCustomAttributesRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQCustomerCustomAttributesApi*apiInstance = [[SQCustomerCustomAttributesApi alloc] init];

// BulkUpsertCustomerCustomAttributes
[apiInstance bulkUpsertCustomerCustomAttributesWithBody:body
          completionHandler: ^(SQBulkUpsertCustomerCustomAttributesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCustomerCustomAttributesApi->bulkUpsertCustomerCustomAttributes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQBulkUpsertCustomerCustomAttributesRequest***](SQBulkUpsertCustomerCustomAttributesRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQBulkUpsertCustomerCustomAttributesResponse***](SQBulkUpsertCustomerCustomAttributesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCustomerCustomAttributeDefinition**
```objc
-(NSURLSessionTask*) createCustomerCustomAttributeDefinitionWithBody: (SQCreateCustomerCustomAttributeDefinitionRequest*) body
        completionHandler: (void (^)(SQCreateCustomerCustomAttributeDefinitionResponse* output, NSError* error)) handler;
```

CreateCustomerCustomAttributeDefinition

Creates a customer-related [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) for a Square seller account. Use this endpoint to define a custom attribute that can be associated with customer profiles.  A custom attribute definition specifies the `key`, `visibility`, `schema`, and other properties for a custom attribute. After the definition is created, you can call [UpsertCustomerCustomAttribute](https://developer.squareup.com/reference/square_2023-10-18/customer-custom-attributes-api/upsert-customer-custom-attribute) or [BulkUpsertCustomerCustomAttributes](https://developer.squareup.com/reference/square_2023-10-18/customer-custom-attributes-api/bulk-upsert-customer-custom-attributes) to set the custom attribute for customer profiles in the seller's Customer Directory.  Sellers can view all custom attributes in exported customer data, including those set to `VISIBILITY_HIDDEN`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCreateCustomerCustomAttributeDefinitionRequest* body = [[SQCreateCustomerCustomAttributeDefinitionRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQCustomerCustomAttributesApi*apiInstance = [[SQCustomerCustomAttributesApi alloc] init];

// CreateCustomerCustomAttributeDefinition
[apiInstance createCustomerCustomAttributeDefinitionWithBody:body
          completionHandler: ^(SQCreateCustomerCustomAttributeDefinitionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCustomerCustomAttributesApi->createCustomerCustomAttributeDefinition: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCreateCustomerCustomAttributeDefinitionRequest***](SQCreateCustomerCustomAttributeDefinitionRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateCustomerCustomAttributeDefinitionResponse***](SQCreateCustomerCustomAttributeDefinitionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomerCustomAttribute**
```objc
-(NSURLSessionTask*) deleteCustomerCustomAttributeWithCustomerId: (NSString*) customerId
    key: (NSString*) key
        completionHandler: (void (^)(SQDeleteCustomerCustomAttributeResponse* output, NSError* error)) handler;
```

DeleteCustomerCustomAttribute

Deletes a [custom attribute](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) associated with a customer profile.  To delete a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_WRITE_VALUES`. Note that seller-defined custom attributes (also known as custom fields) are always set to `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* customerId = @"customerId_example"; // The ID of the target [customer profile](https://developer.squareup.com/reference/square_2023-10-18/objects/Customer).
NSString* key = @"key_example"; // The key of the custom attribute to delete. This key must match the `key` of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key.

SQCustomerCustomAttributesApi*apiInstance = [[SQCustomerCustomAttributesApi alloc] init];

// DeleteCustomerCustomAttribute
[apiInstance deleteCustomerCustomAttributeWithCustomerId:customerId
              key:key
          completionHandler: ^(SQDeleteCustomerCustomAttributeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCustomerCustomAttributesApi->deleteCustomerCustomAttribute: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***| The ID of the target [customer profile](https://developer.squareup.com/reference/square_2023-10-18/objects/Customer). | 
 **key** | **NSString***| The key of the custom attribute to delete. This key must match the &#x60;key&#x60; of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key. | 

### Return type

[**SQDeleteCustomerCustomAttributeResponse***](SQDeleteCustomerCustomAttributeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomerCustomAttributeDefinition**
```objc
-(NSURLSessionTask*) deleteCustomerCustomAttributeDefinitionWithKey: (NSString*) key
        completionHandler: (void (^)(SQDeleteCustomerCustomAttributeDefinitionResponse* output, NSError* error)) handler;
```

DeleteCustomerCustomAttributeDefinition

Deletes a customer-related [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) from a Square seller account.  Deleting a custom attribute definition also deletes the corresponding custom attribute from all customer profiles in the seller's Customer Directory.  Only the definition owner can delete a custom attribute definition.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* key = @"key_example"; // The key of the custom attribute definition to delete.

SQCustomerCustomAttributesApi*apiInstance = [[SQCustomerCustomAttributesApi alloc] init];

// DeleteCustomerCustomAttributeDefinition
[apiInstance deleteCustomerCustomAttributeDefinitionWithKey:key
          completionHandler: ^(SQDeleteCustomerCustomAttributeDefinitionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCustomerCustomAttributesApi->deleteCustomerCustomAttributeDefinition: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **NSString***| The key of the custom attribute definition to delete. | 

### Return type

[**SQDeleteCustomerCustomAttributeDefinitionResponse***](SQDeleteCustomerCustomAttributeDefinitionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCustomerCustomAttributeDefinitions**
```objc
-(NSURLSessionTask*) listCustomerCustomAttributeDefinitionsWithLimit: (NSNumber*) limit
    cursor: (NSString*) cursor
        completionHandler: (void (^)(SQListCustomerCustomAttributeDefinitionsResponse* output, NSError* error)) handler;
```

ListCustomerCustomAttributeDefinitions

Lists the customer-related [custom attribute definitions](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) that belong to a Square seller account.  When all response pages are retrieved, the results include all custom attribute definitions that are visible to the requesting application, including those that are created by other applications and set to `VISIBILITY_READ_ONLY` or `VISIBILITY_READ_WRITE_VALUES`. Note that seller-defined custom attributes (also known as custom fields) are always set to `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSNumber* limit = @56; // The maximum number of results to return in a single paged response. This limit is advisory. The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100. The default value is 20. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
NSString* cursor = @"cursor_example"; // The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)

SQCustomerCustomAttributesApi*apiInstance = [[SQCustomerCustomAttributesApi alloc] init];

// ListCustomerCustomAttributeDefinitions
[apiInstance listCustomerCustomAttributeDefinitionsWithLimit:limit
              cursor:cursor
          completionHandler: ^(SQListCustomerCustomAttributeDefinitionsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCustomerCustomAttributesApi->listCustomerCustomAttributeDefinitions: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **NSNumber***| The maximum number of results to return in a single paged response. This limit is advisory. The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100. The default value is 20. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
 **cursor** | **NSString***| The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 

### Return type

[**SQListCustomerCustomAttributeDefinitionsResponse***](SQListCustomerCustomAttributeDefinitionsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCustomerCustomAttributes**
```objc
-(NSURLSessionTask*) listCustomerCustomAttributesWithCustomerId: (NSString*) customerId
    limit: (NSNumber*) limit
    cursor: (NSString*) cursor
    withDefinitions: (NSNumber*) withDefinitions
        completionHandler: (void (^)(SQListCustomerCustomAttributesResponse* output, NSError* error)) handler;
```

ListCustomerCustomAttributes

Lists the [custom attributes](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) associated with a customer profile.  You can use the `with_definitions` query parameter to also retrieve custom attribute definitions in the same call.  When all response pages are retrieved, the results include all custom attributes that are visible to the requesting application, including those that are owned by other applications and set to `VISIBILITY_READ_ONLY` or `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* customerId = @"customerId_example"; // The ID of the target [customer profile](https://developer.squareup.com/reference/square_2023-10-18/objects/Customer).
NSNumber* limit = @56; // The maximum number of results to return in a single paged response. This limit is advisory. The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100. The default value is 20. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
NSString* cursor = @"cursor_example"; // The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
NSNumber* withDefinitions = @true; // Indicates whether to return the [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) in the `definition` field of each custom attribute. Set this parameter to `true` to get the name and description of each custom attribute, information about the data type, or other definition details. The default value is `false`. (optional)

SQCustomerCustomAttributesApi*apiInstance = [[SQCustomerCustomAttributesApi alloc] init];

// ListCustomerCustomAttributes
[apiInstance listCustomerCustomAttributesWithCustomerId:customerId
              limit:limit
              cursor:cursor
              withDefinitions:withDefinitions
          completionHandler: ^(SQListCustomerCustomAttributesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCustomerCustomAttributesApi->listCustomerCustomAttributes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***| The ID of the target [customer profile](https://developer.squareup.com/reference/square_2023-10-18/objects/Customer). | 
 **limit** | **NSNumber***| The maximum number of results to return in a single paged response. This limit is advisory. The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100. The default value is 20. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
 **cursor** | **NSString***| The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
 **withDefinitions** | **NSNumber***| Indicates whether to return the [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) in the &#x60;definition&#x60; field of each custom attribute. Set this parameter to &#x60;true&#x60; to get the name and description of each custom attribute, information about the data type, or other definition details. The default value is &#x60;false&#x60;. | [optional] 

### Return type

[**SQListCustomerCustomAttributesResponse***](SQListCustomerCustomAttributesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveCustomerCustomAttribute**
```objc
-(NSURLSessionTask*) retrieveCustomerCustomAttributeWithCustomerId: (NSString*) customerId
    key: (NSString*) key
    withDefinition: (NSNumber*) withDefinition
    version: (NSNumber*) version
        completionHandler: (void (^)(SQRetrieveCustomerCustomAttributeResponse* output, NSError* error)) handler;
```

RetrieveCustomerCustomAttribute

Retrieves a [custom attribute](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) associated with a customer profile.  You can use the `with_definition` query parameter to also retrieve the custom attribute definition in the same call.  To retrieve a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_ONLY` or `VISIBILITY_READ_WRITE_VALUES`. Note that seller-defined custom attributes (also known as custom fields) are always set to `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* customerId = @"customerId_example"; // The ID of the target [customer profile](https://developer.squareup.com/reference/square_2023-10-18/objects/Customer).
NSString* key = @"key_example"; // The key of the custom attribute to retrieve. This key must match the `key` of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key.
NSNumber* withDefinition = @true; // Indicates whether to return the [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) in the `definition` field of the custom attribute. Set this parameter to `true` to get the name and description of the custom attribute, information about the data type, or other definition details. The default value is `false`. (optional)
NSNumber* version = @56; // The current version of the custom attribute, which is used for strongly consistent reads to guarantee that you receive the most up-to-date data. When included in the request, Square returns the specified version or a higher version if one exists. If the specified version is higher than the current version, Square returns a `BAD_REQUEST` error. (optional)

SQCustomerCustomAttributesApi*apiInstance = [[SQCustomerCustomAttributesApi alloc] init];

// RetrieveCustomerCustomAttribute
[apiInstance retrieveCustomerCustomAttributeWithCustomerId:customerId
              key:key
              withDefinition:withDefinition
              version:version
          completionHandler: ^(SQRetrieveCustomerCustomAttributeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCustomerCustomAttributesApi->retrieveCustomerCustomAttribute: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***| The ID of the target [customer profile](https://developer.squareup.com/reference/square_2023-10-18/objects/Customer). | 
 **key** | **NSString***| The key of the custom attribute to retrieve. This key must match the &#x60;key&#x60; of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key. | 
 **withDefinition** | **NSNumber***| Indicates whether to return the [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) in the &#x60;definition&#x60; field of the custom attribute. Set this parameter to &#x60;true&#x60; to get the name and description of the custom attribute, information about the data type, or other definition details. The default value is &#x60;false&#x60;. | [optional] 
 **version** | **NSNumber***| The current version of the custom attribute, which is used for strongly consistent reads to guarantee that you receive the most up-to-date data. When included in the request, Square returns the specified version or a higher version if one exists. If the specified version is higher than the current version, Square returns a &#x60;BAD_REQUEST&#x60; error. | [optional] 

### Return type

[**SQRetrieveCustomerCustomAttributeResponse***](SQRetrieveCustomerCustomAttributeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveCustomerCustomAttributeDefinition**
```objc
-(NSURLSessionTask*) retrieveCustomerCustomAttributeDefinitionWithKey: (NSString*) key
    version: (NSNumber*) version
        completionHandler: (void (^)(SQRetrieveCustomerCustomAttributeDefinitionResponse* output, NSError* error)) handler;
```

RetrieveCustomerCustomAttributeDefinition

Retrieves a customer-related [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) from a Square seller account.  To retrieve a custom attribute definition created by another application, the `visibility` setting must be `VISIBILITY_READ_ONLY` or `VISIBILITY_READ_WRITE_VALUES`. Note that seller-defined custom attributes (also known as custom fields) are always set to `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* key = @"key_example"; // The key of the custom attribute definition to retrieve. If the requesting application is not the definition owner, you must use the qualified key.
NSNumber* version = @56; // The current version of the custom attribute definition, which is used for strongly consistent reads to guarantee that you receive the most up-to-date data. When included in the request, Square returns the specified version or a higher version if one exists. If the specified version is higher than the current version, Square returns a `BAD_REQUEST` error. (optional)

SQCustomerCustomAttributesApi*apiInstance = [[SQCustomerCustomAttributesApi alloc] init];

// RetrieveCustomerCustomAttributeDefinition
[apiInstance retrieveCustomerCustomAttributeDefinitionWithKey:key
              version:version
          completionHandler: ^(SQRetrieveCustomerCustomAttributeDefinitionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCustomerCustomAttributesApi->retrieveCustomerCustomAttributeDefinition: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **NSString***| The key of the custom attribute definition to retrieve. If the requesting application is not the definition owner, you must use the qualified key. | 
 **version** | **NSNumber***| The current version of the custom attribute definition, which is used for strongly consistent reads to guarantee that you receive the most up-to-date data. When included in the request, Square returns the specified version or a higher version if one exists. If the specified version is higher than the current version, Square returns a &#x60;BAD_REQUEST&#x60; error. | [optional] 

### Return type

[**SQRetrieveCustomerCustomAttributeDefinitionResponse***](SQRetrieveCustomerCustomAttributeDefinitionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCustomerCustomAttributeDefinition**
```objc
-(NSURLSessionTask*) updateCustomerCustomAttributeDefinitionWithKey: (NSString*) key
    body: (SQUpdateCustomerCustomAttributeDefinitionRequest*) body
        completionHandler: (void (^)(SQUpdateCustomerCustomAttributeDefinitionResponse* output, NSError* error)) handler;
```

UpdateCustomerCustomAttributeDefinition

Updates a customer-related [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) for a Square seller account.  Use this endpoint to update the following fields: `name`, `description`, `visibility`, or the `schema` for a `Selection` data type.  Only the definition owner can update a custom attribute definition. Note that sellers can view all custom attributes in exported customer data, including those set to `VISIBILITY_HIDDEN`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* key = @"key_example"; // The key of the custom attribute definition to update.
SQUpdateCustomerCustomAttributeDefinitionRequest* body = [[SQUpdateCustomerCustomAttributeDefinitionRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQCustomerCustomAttributesApi*apiInstance = [[SQCustomerCustomAttributesApi alloc] init];

// UpdateCustomerCustomAttributeDefinition
[apiInstance updateCustomerCustomAttributeDefinitionWithKey:key
              body:body
          completionHandler: ^(SQUpdateCustomerCustomAttributeDefinitionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCustomerCustomAttributesApi->updateCustomerCustomAttributeDefinition: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **NSString***| The key of the custom attribute definition to update. | 
 **body** | [**SQUpdateCustomerCustomAttributeDefinitionRequest***](SQUpdateCustomerCustomAttributeDefinitionRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpdateCustomerCustomAttributeDefinitionResponse***](SQUpdateCustomerCustomAttributeDefinitionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upsertCustomerCustomAttribute**
```objc
-(NSURLSessionTask*) upsertCustomerCustomAttributeWithCustomerId: (NSString*) customerId
    key: (NSString*) key
    body: (SQUpsertCustomerCustomAttributeRequest*) body
        completionHandler: (void (^)(SQUpsertCustomerCustomAttributeResponse* output, NSError* error)) handler;
```

UpsertCustomerCustomAttribute

Creates or updates a [custom attribute](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) for a customer profile.  Use this endpoint to set the value of a custom attribute for a specified customer profile. A custom attribute is based on a custom attribute definition in a Square seller account, which is created using the [CreateCustomerCustomAttributeDefinition](https://developer.squareup.com/reference/square_2023-10-18/customer-custom-attributes-api/create-customer-custom-attribute-definition) endpoint.  To create or update a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_WRITE_VALUES`. Note that seller-defined custom attributes (also known as custom fields) are always set to `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* customerId = @"customerId_example"; // The ID of the target [customer profile](https://developer.squareup.com/reference/square_2023-10-18/objects/Customer).
NSString* key = @"key_example"; // The key of the custom attribute to create or update. This key must match the `key` of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key.
SQUpsertCustomerCustomAttributeRequest* body = [[SQUpsertCustomerCustomAttributeRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQCustomerCustomAttributesApi*apiInstance = [[SQCustomerCustomAttributesApi alloc] init];

// UpsertCustomerCustomAttribute
[apiInstance upsertCustomerCustomAttributeWithCustomerId:customerId
              key:key
              body:body
          completionHandler: ^(SQUpsertCustomerCustomAttributeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCustomerCustomAttributesApi->upsertCustomerCustomAttribute: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***| The ID of the target [customer profile](https://developer.squareup.com/reference/square_2023-10-18/objects/Customer). | 
 **key** | **NSString***| The key of the custom attribute to create or update. This key must match the &#x60;key&#x60; of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key. | 
 **body** | [**SQUpsertCustomerCustomAttributeRequest***](SQUpsertCustomerCustomAttributeRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpsertCustomerCustomAttributeResponse***](SQUpsertCustomerCustomAttributeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

