# SQOrderCustomAttributesApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulkDeleteOrderCustomAttributes**](SQOrderCustomAttributesApi.md#bulkdeleteordercustomattributes) | **POST** /v2/orders/custom-attributes/bulk-delete | BulkDeleteOrderCustomAttributes
[**bulkUpsertOrderCustomAttributes**](SQOrderCustomAttributesApi.md#bulkupsertordercustomattributes) | **POST** /v2/orders/custom-attributes/bulk-upsert | BulkUpsertOrderCustomAttributes
[**createOrderCustomAttributeDefinition**](SQOrderCustomAttributesApi.md#createordercustomattributedefinition) | **POST** /v2/orders/custom-attribute-definitions | CreateOrderCustomAttributeDefinition
[**deleteOrderCustomAttribute**](SQOrderCustomAttributesApi.md#deleteordercustomattribute) | **DELETE** /v2/orders/{order_id}/custom-attributes/{custom_attribute_key} | DeleteOrderCustomAttribute
[**deleteOrderCustomAttributeDefinition**](SQOrderCustomAttributesApi.md#deleteordercustomattributedefinition) | **DELETE** /v2/orders/custom-attribute-definitions/{key} | DeleteOrderCustomAttributeDefinition
[**listOrderCustomAttributeDefinitions**](SQOrderCustomAttributesApi.md#listordercustomattributedefinitions) | **GET** /v2/orders/custom-attribute-definitions | ListOrderCustomAttributeDefinitions
[**listOrderCustomAttributes**](SQOrderCustomAttributesApi.md#listordercustomattributes) | **GET** /v2/orders/{order_id}/custom-attributes | ListOrderCustomAttributes
[**retrieveOrderCustomAttribute**](SQOrderCustomAttributesApi.md#retrieveordercustomattribute) | **GET** /v2/orders/{order_id}/custom-attributes/{custom_attribute_key} | RetrieveOrderCustomAttribute
[**retrieveOrderCustomAttributeDefinition**](SQOrderCustomAttributesApi.md#retrieveordercustomattributedefinition) | **GET** /v2/orders/custom-attribute-definitions/{key} | RetrieveOrderCustomAttributeDefinition
[**updateOrderCustomAttributeDefinition**](SQOrderCustomAttributesApi.md#updateordercustomattributedefinition) | **PUT** /v2/orders/custom-attribute-definitions/{key} | UpdateOrderCustomAttributeDefinition
[**upsertOrderCustomAttribute**](SQOrderCustomAttributesApi.md#upsertordercustomattribute) | **POST** /v2/orders/{order_id}/custom-attributes/{custom_attribute_key} | UpsertOrderCustomAttribute


# **bulkDeleteOrderCustomAttributes**
```objc
-(NSURLSessionTask*) bulkDeleteOrderCustomAttributesWithBody: (SQBulkDeleteOrderCustomAttributesRequest*) body
        completionHandler: (void (^)(SQBulkDeleteOrderCustomAttributesResponse* output, NSError* error)) handler;
```

BulkDeleteOrderCustomAttributes

Deletes order [custom attributes](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) as a bulk operation.  Use this endpoint to delete one or more custom attributes from one or more orders. A custom attribute is based on a custom attribute definition in a Square seller account.  (To create a custom attribute definition, use the [CreateOrderCustomAttributeDefinition](https://developer.squareup.com/reference/square_2023-10-18/order-custom-attributes-api/create-order-custom-attribute-definition) endpoint.)  This `BulkDeleteOrderCustomAttributes` endpoint accepts a map of 1 to 25 individual delete requests and returns a map of individual delete responses. Each delete request has a unique ID and provides an order ID and custom attribute. Each delete response is returned with the ID of the corresponding request.  To delete a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_WRITE_VALUES`. Note that seller-defined custom attributes (also known as custom fields) are always set to `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQBulkDeleteOrderCustomAttributesRequest* body = [[SQBulkDeleteOrderCustomAttributesRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQOrderCustomAttributesApi*apiInstance = [[SQOrderCustomAttributesApi alloc] init];

// BulkDeleteOrderCustomAttributes
[apiInstance bulkDeleteOrderCustomAttributesWithBody:body
          completionHandler: ^(SQBulkDeleteOrderCustomAttributesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQOrderCustomAttributesApi->bulkDeleteOrderCustomAttributes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQBulkDeleteOrderCustomAttributesRequest***](SQBulkDeleteOrderCustomAttributesRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQBulkDeleteOrderCustomAttributesResponse***](SQBulkDeleteOrderCustomAttributesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulkUpsertOrderCustomAttributes**
```objc
-(NSURLSessionTask*) bulkUpsertOrderCustomAttributesWithBody: (SQBulkUpsertOrderCustomAttributesRequest*) body
        completionHandler: (void (^)(SQBulkUpsertOrderCustomAttributesResponse* output, NSError* error)) handler;
```

BulkUpsertOrderCustomAttributes

Creates or updates order [custom attributes](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) as a bulk operation.  Use this endpoint to delete one or more custom attributes from one or more orders. A custom attribute is based on a custom attribute definition in a Square seller account.  (To create a custom attribute definition, use the [CreateOrderCustomAttributeDefinition](https://developer.squareup.com/reference/square_2023-10-18/order-custom-attributes-api/create-order-custom-attribute-definition) endpoint.)  This `BulkUpsertOrderCustomAttributes` endpoint accepts a map of 1 to 25 individual upsert requests and returns a map of individual upsert responses. Each upsert request has a unique ID and provides an order ID and custom attribute. Each upsert response is returned with the ID of the corresponding request.  To create or update a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_WRITE_VALUES`. Note that seller-defined custom attributes (also known as custom fields) are always set to `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQBulkUpsertOrderCustomAttributesRequest* body = [[SQBulkUpsertOrderCustomAttributesRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQOrderCustomAttributesApi*apiInstance = [[SQOrderCustomAttributesApi alloc] init];

// BulkUpsertOrderCustomAttributes
[apiInstance bulkUpsertOrderCustomAttributesWithBody:body
          completionHandler: ^(SQBulkUpsertOrderCustomAttributesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQOrderCustomAttributesApi->bulkUpsertOrderCustomAttributes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQBulkUpsertOrderCustomAttributesRequest***](SQBulkUpsertOrderCustomAttributesRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQBulkUpsertOrderCustomAttributesResponse***](SQBulkUpsertOrderCustomAttributesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOrderCustomAttributeDefinition**
```objc
-(NSURLSessionTask*) createOrderCustomAttributeDefinitionWithBody: (SQCreateOrderCustomAttributeDefinitionRequest*) body
        completionHandler: (void (^)(SQCreateOrderCustomAttributeDefinitionResponse* output, NSError* error)) handler;
```

CreateOrderCustomAttributeDefinition

Creates an order-related custom attribute definition.  Use this endpoint to define a custom attribute that can be associated with orders.  After creating a custom attribute definition, you can set the custom attribute for orders in the Square seller account.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCreateOrderCustomAttributeDefinitionRequest* body = [[SQCreateOrderCustomAttributeDefinitionRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQOrderCustomAttributesApi*apiInstance = [[SQOrderCustomAttributesApi alloc] init];

// CreateOrderCustomAttributeDefinition
[apiInstance createOrderCustomAttributeDefinitionWithBody:body
          completionHandler: ^(SQCreateOrderCustomAttributeDefinitionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQOrderCustomAttributesApi->createOrderCustomAttributeDefinition: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCreateOrderCustomAttributeDefinitionRequest***](SQCreateOrderCustomAttributeDefinitionRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateOrderCustomAttributeDefinitionResponse***](SQCreateOrderCustomAttributeDefinitionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOrderCustomAttribute**
```objc
-(NSURLSessionTask*) deleteOrderCustomAttributeWithOrderId: (NSString*) orderId
    customAttributeKey: (NSString*) customAttributeKey
        completionHandler: (void (^)(SQDeleteOrderCustomAttributeResponse* output, NSError* error)) handler;
```

DeleteOrderCustomAttribute

Deletes a [custom attribute](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) associated with a customer profile.  To delete a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_WRITE_VALUES`. Note that seller-defined custom attributes (also known as custom fields) are always set to `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* orderId = @"orderId_example"; // The ID of the target [order](https://developer.squareup.com/reference/square_2023-10-18/objects/Order).
NSString* customAttributeKey = @"customAttributeKey_example"; // The key of the custom attribute to delete.  This key must match the key of an existing custom attribute definition.

SQOrderCustomAttributesApi*apiInstance = [[SQOrderCustomAttributesApi alloc] init];

// DeleteOrderCustomAttribute
[apiInstance deleteOrderCustomAttributeWithOrderId:orderId
              customAttributeKey:customAttributeKey
          completionHandler: ^(SQDeleteOrderCustomAttributeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQOrderCustomAttributesApi->deleteOrderCustomAttribute: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **NSString***| The ID of the target [order](https://developer.squareup.com/reference/square_2023-10-18/objects/Order). | 
 **customAttributeKey** | **NSString***| The key of the custom attribute to delete.  This key must match the key of an existing custom attribute definition. | 

### Return type

[**SQDeleteOrderCustomAttributeResponse***](SQDeleteOrderCustomAttributeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOrderCustomAttributeDefinition**
```objc
-(NSURLSessionTask*) deleteOrderCustomAttributeDefinitionWithKey: (NSString*) key
        completionHandler: (void (^)(SQDeleteOrderCustomAttributeDefinitionResponse* output, NSError* error)) handler;
```

DeleteOrderCustomAttributeDefinition

Deletes an order-related [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) from a Square seller account.  Only the definition owner can delete a custom attribute definition.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* key = @"key_example"; // The key of the custom attribute definition to delete.

SQOrderCustomAttributesApi*apiInstance = [[SQOrderCustomAttributesApi alloc] init];

// DeleteOrderCustomAttributeDefinition
[apiInstance deleteOrderCustomAttributeDefinitionWithKey:key
          completionHandler: ^(SQDeleteOrderCustomAttributeDefinitionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQOrderCustomAttributesApi->deleteOrderCustomAttributeDefinition: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **NSString***| The key of the custom attribute definition to delete. | 

### Return type

[**SQDeleteOrderCustomAttributeDefinitionResponse***](SQDeleteOrderCustomAttributeDefinitionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOrderCustomAttributeDefinitions**
```objc
-(NSURLSessionTask*) listOrderCustomAttributeDefinitionsWithVisibilityFilter: (NSString*) visibilityFilter
    cursor: (NSString*) cursor
    limit: (NSNumber*) limit
        completionHandler: (void (^)(SQListOrderCustomAttributeDefinitionsResponse* output, NSError* error)) handler;
```

ListOrderCustomAttributeDefinitions

Lists the order-related [custom attribute definitions](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) that belong to a Square seller account.  When all response pages are retrieved, the results include all custom attribute definitions that are visible to the requesting application, including those that are created by other applications and set to `VISIBILITY_READ_ONLY` or `VISIBILITY_READ_WRITE_VALUES`. Note that seller-defined custom attributes (also known as custom fields) are always set to `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* visibilityFilter = @"visibilityFilter_example"; // Requests that all of the custom attributes be returned, or only those that are read-only or read-write. (optional)
NSString* cursor = @"cursor_example"; // The cursor returned in the paged response from the previous call to this endpoint.  Provide this cursor to retrieve the next page of results for your original request.  For more information, see [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination). (optional)
NSNumber* limit = @56; // The maximum number of results to return in a single paged response. This limit is advisory.  The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100.  The default value is 20. For more information, see [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination). (optional)

SQOrderCustomAttributesApi*apiInstance = [[SQOrderCustomAttributesApi alloc] init];

// ListOrderCustomAttributeDefinitions
[apiInstance listOrderCustomAttributeDefinitionsWithVisibilityFilter:visibilityFilter
              cursor:cursor
              limit:limit
          completionHandler: ^(SQListOrderCustomAttributeDefinitionsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQOrderCustomAttributesApi->listOrderCustomAttributeDefinitions: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **visibilityFilter** | **NSString***| Requests that all of the custom attributes be returned, or only those that are read-only or read-write. | [optional] 
 **cursor** | **NSString***| The cursor returned in the paged response from the previous call to this endpoint.  Provide this cursor to retrieve the next page of results for your original request.  For more information, see [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination). | [optional] 
 **limit** | **NSNumber***| The maximum number of results to return in a single paged response. This limit is advisory.  The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100.  The default value is 20. For more information, see [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination). | [optional] 

### Return type

[**SQListOrderCustomAttributeDefinitionsResponse***](SQListOrderCustomAttributeDefinitionsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOrderCustomAttributes**
```objc
-(NSURLSessionTask*) listOrderCustomAttributesWithOrderId: (NSString*) orderId
    visibilityFilter: (NSString*) visibilityFilter
    cursor: (NSString*) cursor
    limit: (NSNumber*) limit
    withDefinitions: (NSNumber*) withDefinitions
        completionHandler: (void (^)(SQListOrderCustomAttributesResponse* output, NSError* error)) handler;
```

ListOrderCustomAttributes

Lists the [custom attributes](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) associated with an order.  You can use the `with_definitions` query parameter to also retrieve custom attribute definitions in the same call.  When all response pages are retrieved, the results include all custom attributes that are visible to the requesting application, including those that are owned by other applications and set to `VISIBILITY_READ_ONLY` or `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* orderId = @"orderId_example"; // The ID of the target [order](https://developer.squareup.com/reference/square_2023-10-18/objects/Order).
NSString* visibilityFilter = @"visibilityFilter_example"; // Requests that all of the custom attributes be returned, or only those that are read-only or read-write. (optional)
NSString* cursor = @"cursor_example"; // The cursor returned in the paged response from the previous call to this endpoint.  Provide this cursor to retrieve the next page of results for your original request.  For more information, see [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination). (optional)
NSNumber* limit = @56; // The maximum number of results to return in a single paged response. This limit is advisory.  The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100.  The default value is 20. For more information, see [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination). (optional)
NSNumber* withDefinitions = @true; // Indicates whether to return the [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) in the `definition` field of each custom attribute. Set this parameter to `true` to get the name and description of each custom attribute,  information about the data type, or other definition details. The default value is `false`. (optional)

SQOrderCustomAttributesApi*apiInstance = [[SQOrderCustomAttributesApi alloc] init];

// ListOrderCustomAttributes
[apiInstance listOrderCustomAttributesWithOrderId:orderId
              visibilityFilter:visibilityFilter
              cursor:cursor
              limit:limit
              withDefinitions:withDefinitions
          completionHandler: ^(SQListOrderCustomAttributesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQOrderCustomAttributesApi->listOrderCustomAttributes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **NSString***| The ID of the target [order](https://developer.squareup.com/reference/square_2023-10-18/objects/Order). | 
 **visibilityFilter** | **NSString***| Requests that all of the custom attributes be returned, or only those that are read-only or read-write. | [optional] 
 **cursor** | **NSString***| The cursor returned in the paged response from the previous call to this endpoint.  Provide this cursor to retrieve the next page of results for your original request.  For more information, see [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination). | [optional] 
 **limit** | **NSNumber***| The maximum number of results to return in a single paged response. This limit is advisory.  The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100.  The default value is 20. For more information, see [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination). | [optional] 
 **withDefinitions** | **NSNumber***| Indicates whether to return the [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) in the &#x60;definition&#x60; field of each custom attribute. Set this parameter to &#x60;true&#x60; to get the name and description of each custom attribute,  information about the data type, or other definition details. The default value is &#x60;false&#x60;. | [optional] 

### Return type

[**SQListOrderCustomAttributesResponse***](SQListOrderCustomAttributesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveOrderCustomAttribute**
```objc
-(NSURLSessionTask*) retrieveOrderCustomAttributeWithOrderId: (NSString*) orderId
    customAttributeKey: (NSString*) customAttributeKey
    version: (NSNumber*) version
    withDefinition: (NSNumber*) withDefinition
        completionHandler: (void (^)(SQRetrieveOrderCustomAttributeResponse* output, NSError* error)) handler;
```

RetrieveOrderCustomAttribute

Retrieves a [custom attribute](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) associated with an order.  You can use the `with_definition` query parameter to also retrieve the custom attribute definition in the same call.  To retrieve a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_ONLY` or `VISIBILITY_READ_WRITE_VALUES`. Note that seller-defined custom attributes also known as custom fields) are always set to `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* orderId = @"orderId_example"; // The ID of the target [order](https://developer.squareup.com/reference/square_2023-10-18/objects/Order).
NSString* customAttributeKey = @"customAttributeKey_example"; // The key of the custom attribute to retrieve.  This key must match the key of an existing custom attribute definition.
NSNumber* version = @56; // To enable [optimistic concurrency](https://developer.squareup.com/docs/build-basics/common-api-patterns/optimistic-concurrency) control, include this optional field and specify the current version of the custom attribute. (optional)
NSNumber* withDefinition = @true; // Indicates whether to return the [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) in the `definition` field of each  custom attribute. Set this parameter to `true` to get the name and description of each custom attribute,  information about the data type, or other definition details. The default value is `false`. (optional)

SQOrderCustomAttributesApi*apiInstance = [[SQOrderCustomAttributesApi alloc] init];

// RetrieveOrderCustomAttribute
[apiInstance retrieveOrderCustomAttributeWithOrderId:orderId
              customAttributeKey:customAttributeKey
              version:version
              withDefinition:withDefinition
          completionHandler: ^(SQRetrieveOrderCustomAttributeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQOrderCustomAttributesApi->retrieveOrderCustomAttribute: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **NSString***| The ID of the target [order](https://developer.squareup.com/reference/square_2023-10-18/objects/Order). | 
 **customAttributeKey** | **NSString***| The key of the custom attribute to retrieve.  This key must match the key of an existing custom attribute definition. | 
 **version** | **NSNumber***| To enable [optimistic concurrency](https://developer.squareup.com/docs/build-basics/common-api-patterns/optimistic-concurrency) control, include this optional field and specify the current version of the custom attribute. | [optional] 
 **withDefinition** | **NSNumber***| Indicates whether to return the [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) in the &#x60;definition&#x60; field of each  custom attribute. Set this parameter to &#x60;true&#x60; to get the name and description of each custom attribute,  information about the data type, or other definition details. The default value is &#x60;false&#x60;. | [optional] 

### Return type

[**SQRetrieveOrderCustomAttributeResponse***](SQRetrieveOrderCustomAttributeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveOrderCustomAttributeDefinition**
```objc
-(NSURLSessionTask*) retrieveOrderCustomAttributeDefinitionWithKey: (NSString*) key
    version: (NSNumber*) version
        completionHandler: (void (^)(SQRetrieveOrderCustomAttributeDefinitionResponse* output, NSError* error)) handler;
```

RetrieveOrderCustomAttributeDefinition

Retrieves an order-related [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) from a Square seller account.  To retrieve a custom attribute definition created by another application, the `visibility` setting must be `VISIBILITY_READ_ONLY` or `VISIBILITY_READ_WRITE_VALUES`. Note that seller-defined custom attributes (also known as custom fields) are always set to `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* key = @"key_example"; // The key of the custom attribute definition to retrieve.
NSNumber* version = @56; // To enable [optimistic concurrency](https://developer.squareup.com/docs/build-basics/common-api-patterns/optimistic-concurrency) control, include this optional field and specify the current version of the custom attribute. (optional)

SQOrderCustomAttributesApi*apiInstance = [[SQOrderCustomAttributesApi alloc] init];

// RetrieveOrderCustomAttributeDefinition
[apiInstance retrieveOrderCustomAttributeDefinitionWithKey:key
              version:version
          completionHandler: ^(SQRetrieveOrderCustomAttributeDefinitionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQOrderCustomAttributesApi->retrieveOrderCustomAttributeDefinition: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **NSString***| The key of the custom attribute definition to retrieve. | 
 **version** | **NSNumber***| To enable [optimistic concurrency](https://developer.squareup.com/docs/build-basics/common-api-patterns/optimistic-concurrency) control, include this optional field and specify the current version of the custom attribute. | [optional] 

### Return type

[**SQRetrieveOrderCustomAttributeDefinitionResponse***](SQRetrieveOrderCustomAttributeDefinitionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrderCustomAttributeDefinition**
```objc
-(NSURLSessionTask*) updateOrderCustomAttributeDefinitionWithKey: (NSString*) key
    body: (SQUpdateOrderCustomAttributeDefinitionRequest*) body
        completionHandler: (void (^)(SQUpdateOrderCustomAttributeDefinitionResponse* output, NSError* error)) handler;
```

UpdateOrderCustomAttributeDefinition

Updates an order-related custom attribute definition for a Square seller account.  Only the definition owner can update a custom attribute definition. Note that sellers can view all custom attributes in exported customer data, including those set to `VISIBILITY_HIDDEN`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* key = @"key_example"; // The key of the custom attribute definition to update.
SQUpdateOrderCustomAttributeDefinitionRequest* body = [[SQUpdateOrderCustomAttributeDefinitionRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQOrderCustomAttributesApi*apiInstance = [[SQOrderCustomAttributesApi alloc] init];

// UpdateOrderCustomAttributeDefinition
[apiInstance updateOrderCustomAttributeDefinitionWithKey:key
              body:body
          completionHandler: ^(SQUpdateOrderCustomAttributeDefinitionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQOrderCustomAttributesApi->updateOrderCustomAttributeDefinition: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **NSString***| The key of the custom attribute definition to update. | 
 **body** | [**SQUpdateOrderCustomAttributeDefinitionRequest***](SQUpdateOrderCustomAttributeDefinitionRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpdateOrderCustomAttributeDefinitionResponse***](SQUpdateOrderCustomAttributeDefinitionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upsertOrderCustomAttribute**
```objc
-(NSURLSessionTask*) upsertOrderCustomAttributeWithOrderId: (NSString*) orderId
    customAttributeKey: (NSString*) customAttributeKey
    body: (SQUpsertOrderCustomAttributeRequest*) body
        completionHandler: (void (^)(SQUpsertOrderCustomAttributeResponse* output, NSError* error)) handler;
```

UpsertOrderCustomAttribute

Creates or updates a [custom attribute](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) for an order.  Use this endpoint to set the value of a custom attribute for a specific order. A custom attribute is based on a custom attribute definition in a Square seller account. (To create a custom attribute definition, use the [CreateOrderCustomAttributeDefinition](https://developer.squareup.com/reference/square_2023-10-18/order-custom-attributes-api/create-order-custom-attribute-definition) endpoint.)  To create or update a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_WRITE_VALUES`. Note that seller-defined custom attributes (also known as custom fields) are always set to `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* orderId = @"orderId_example"; // The ID of the target [order](https://developer.squareup.com/reference/square_2023-10-18/objects/Order).
NSString* customAttributeKey = @"customAttributeKey_example"; // The key of the custom attribute to create or update.  This key must match the key  of an existing custom attribute definition.
SQUpsertOrderCustomAttributeRequest* body = [[SQUpsertOrderCustomAttributeRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQOrderCustomAttributesApi*apiInstance = [[SQOrderCustomAttributesApi alloc] init];

// UpsertOrderCustomAttribute
[apiInstance upsertOrderCustomAttributeWithOrderId:orderId
              customAttributeKey:customAttributeKey
              body:body
          completionHandler: ^(SQUpsertOrderCustomAttributeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQOrderCustomAttributesApi->upsertOrderCustomAttribute: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **NSString***| The ID of the target [order](https://developer.squareup.com/reference/square_2023-10-18/objects/Order). | 
 **customAttributeKey** | **NSString***| The key of the custom attribute to create or update.  This key must match the key  of an existing custom attribute definition. | 
 **body** | [**SQUpsertOrderCustomAttributeRequest***](SQUpsertOrderCustomAttributeRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpsertOrderCustomAttributeResponse***](SQUpsertOrderCustomAttributeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

