# SQLocationCustomAttributesApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulkDeleteLocationCustomAttributes**](SQLocationCustomAttributesApi.md#bulkdeletelocationcustomattributes) | **POST** /v2/locations/custom-attributes/bulk-delete | BulkDeleteLocationCustomAttributes
[**bulkUpsertLocationCustomAttributes**](SQLocationCustomAttributesApi.md#bulkupsertlocationcustomattributes) | **POST** /v2/locations/custom-attributes/bulk-upsert | BulkUpsertLocationCustomAttributes
[**createLocationCustomAttributeDefinition**](SQLocationCustomAttributesApi.md#createlocationcustomattributedefinition) | **POST** /v2/locations/custom-attribute-definitions | CreateLocationCustomAttributeDefinition
[**deleteLocationCustomAttribute**](SQLocationCustomAttributesApi.md#deletelocationcustomattribute) | **DELETE** /v2/locations/{location_id}/custom-attributes/{key} | DeleteLocationCustomAttribute
[**deleteLocationCustomAttributeDefinition**](SQLocationCustomAttributesApi.md#deletelocationcustomattributedefinition) | **DELETE** /v2/locations/custom-attribute-definitions/{key} | DeleteLocationCustomAttributeDefinition
[**listLocationCustomAttributeDefinitions**](SQLocationCustomAttributesApi.md#listlocationcustomattributedefinitions) | **GET** /v2/locations/custom-attribute-definitions | ListLocationCustomAttributeDefinitions
[**listLocationCustomAttributes**](SQLocationCustomAttributesApi.md#listlocationcustomattributes) | **GET** /v2/locations/{location_id}/custom-attributes | ListLocationCustomAttributes
[**retrieveLocationCustomAttribute**](SQLocationCustomAttributesApi.md#retrievelocationcustomattribute) | **GET** /v2/locations/{location_id}/custom-attributes/{key} | RetrieveLocationCustomAttribute
[**retrieveLocationCustomAttributeDefinition**](SQLocationCustomAttributesApi.md#retrievelocationcustomattributedefinition) | **GET** /v2/locations/custom-attribute-definitions/{key} | RetrieveLocationCustomAttributeDefinition
[**updateLocationCustomAttributeDefinition**](SQLocationCustomAttributesApi.md#updatelocationcustomattributedefinition) | **PUT** /v2/locations/custom-attribute-definitions/{key} | UpdateLocationCustomAttributeDefinition
[**upsertLocationCustomAttribute**](SQLocationCustomAttributesApi.md#upsertlocationcustomattribute) | **POST** /v2/locations/{location_id}/custom-attributes/{key} | UpsertLocationCustomAttribute


# **bulkDeleteLocationCustomAttributes**
```objc
-(NSURLSessionTask*) bulkDeleteLocationCustomAttributesWithBody: (SQBulkDeleteLocationCustomAttributesRequest*) body
        completionHandler: (void (^)(SQBulkDeleteLocationCustomAttributesResponse* output, NSError* error)) handler;
```

BulkDeleteLocationCustomAttributes

Deletes [custom attributes](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) for locations as a bulk operation. To delete a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQBulkDeleteLocationCustomAttributesRequest* body = [[SQBulkDeleteLocationCustomAttributesRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQLocationCustomAttributesApi*apiInstance = [[SQLocationCustomAttributesApi alloc] init];

// BulkDeleteLocationCustomAttributes
[apiInstance bulkDeleteLocationCustomAttributesWithBody:body
          completionHandler: ^(SQBulkDeleteLocationCustomAttributesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLocationCustomAttributesApi->bulkDeleteLocationCustomAttributes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQBulkDeleteLocationCustomAttributesRequest***](SQBulkDeleteLocationCustomAttributesRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQBulkDeleteLocationCustomAttributesResponse***](SQBulkDeleteLocationCustomAttributesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulkUpsertLocationCustomAttributes**
```objc
-(NSURLSessionTask*) bulkUpsertLocationCustomAttributesWithBody: (SQBulkUpsertLocationCustomAttributesRequest*) body
        completionHandler: (void (^)(SQBulkUpsertLocationCustomAttributesResponse* output, NSError* error)) handler;
```

BulkUpsertLocationCustomAttributes

Creates or updates [custom attributes](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) for locations as a bulk operation. Use this endpoint to set the value of one or more custom attributes for one or more locations. A custom attribute is based on a custom attribute definition in a Square seller account, which is created using the [CreateLocationCustomAttributeDefinition](https://developer.squareup.com/reference/square_2023-10-18/location-custom-attributes-api/create-location-custom-attribute-definition) endpoint. This `BulkUpsertLocationCustomAttributes` endpoint accepts a map of 1 to 25 individual upsert requests and returns a map of individual upsert responses. Each upsert request has a unique ID and provides a location ID and custom attribute. Each upsert response is returned with the ID of the corresponding request. To create or update a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQBulkUpsertLocationCustomAttributesRequest* body = [[SQBulkUpsertLocationCustomAttributesRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQLocationCustomAttributesApi*apiInstance = [[SQLocationCustomAttributesApi alloc] init];

// BulkUpsertLocationCustomAttributes
[apiInstance bulkUpsertLocationCustomAttributesWithBody:body
          completionHandler: ^(SQBulkUpsertLocationCustomAttributesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLocationCustomAttributesApi->bulkUpsertLocationCustomAttributes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQBulkUpsertLocationCustomAttributesRequest***](SQBulkUpsertLocationCustomAttributesRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQBulkUpsertLocationCustomAttributesResponse***](SQBulkUpsertLocationCustomAttributesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createLocationCustomAttributeDefinition**
```objc
-(NSURLSessionTask*) createLocationCustomAttributeDefinitionWithBody: (SQCreateLocationCustomAttributeDefinitionRequest*) body
        completionHandler: (void (^)(SQCreateLocationCustomAttributeDefinitionResponse* output, NSError* error)) handler;
```

CreateLocationCustomAttributeDefinition

Creates a location-related [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) for a Square seller account. Use this endpoint to define a custom attribute that can be associated with locations. A custom attribute definition specifies the `key`, `visibility`, `schema`, and other properties for a custom attribute. After the definition is created, you can call [UpsertLocationCustomAttribute](https://developer.squareup.com/reference/square_2023-10-18/location-custom-attributes-api/upsert-location-custom-attribute) or [BulkUpsertLocationCustomAttributes](https://developer.squareup.com/reference/square_2023-10-18/location-custom-attributes-api/bulk-upsert-location-custom-attributes) to set the custom attribute for locations.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCreateLocationCustomAttributeDefinitionRequest* body = [[SQCreateLocationCustomAttributeDefinitionRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQLocationCustomAttributesApi*apiInstance = [[SQLocationCustomAttributesApi alloc] init];

// CreateLocationCustomAttributeDefinition
[apiInstance createLocationCustomAttributeDefinitionWithBody:body
          completionHandler: ^(SQCreateLocationCustomAttributeDefinitionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLocationCustomAttributesApi->createLocationCustomAttributeDefinition: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCreateLocationCustomAttributeDefinitionRequest***](SQCreateLocationCustomAttributeDefinitionRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateLocationCustomAttributeDefinitionResponse***](SQCreateLocationCustomAttributeDefinitionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteLocationCustomAttribute**
```objc
-(NSURLSessionTask*) deleteLocationCustomAttributeWithLocationId: (NSString*) locationId
    key: (NSString*) key
        completionHandler: (void (^)(SQDeleteLocationCustomAttributeResponse* output, NSError* error)) handler;
```

DeleteLocationCustomAttribute

Deletes a [custom attribute](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) associated with a location. To delete a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* locationId = @"locationId_example"; // The ID of the target [location](https://developer.squareup.com/reference/square_2023-10-18/objects/Location).
NSString* key = @"key_example"; // The key of the custom attribute to delete. This key must match the `key` of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key.

SQLocationCustomAttributesApi*apiInstance = [[SQLocationCustomAttributesApi alloc] init];

// DeleteLocationCustomAttribute
[apiInstance deleteLocationCustomAttributeWithLocationId:locationId
              key:key
          completionHandler: ^(SQDeleteLocationCustomAttributeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLocationCustomAttributesApi->deleteLocationCustomAttribute: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***| The ID of the target [location](https://developer.squareup.com/reference/square_2023-10-18/objects/Location). | 
 **key** | **NSString***| The key of the custom attribute to delete. This key must match the &#x60;key&#x60; of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key. | 

### Return type

[**SQDeleteLocationCustomAttributeResponse***](SQDeleteLocationCustomAttributeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteLocationCustomAttributeDefinition**
```objc
-(NSURLSessionTask*) deleteLocationCustomAttributeDefinitionWithKey: (NSString*) key
        completionHandler: (void (^)(SQDeleteLocationCustomAttributeDefinitionResponse* output, NSError* error)) handler;
```

DeleteLocationCustomAttributeDefinition

Deletes a location-related [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) from a Square seller account. Deleting a custom attribute definition also deletes the corresponding custom attribute from all locations. Only the definition owner can delete a custom attribute definition.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* key = @"key_example"; // The key of the custom attribute definition to delete.

SQLocationCustomAttributesApi*apiInstance = [[SQLocationCustomAttributesApi alloc] init];

// DeleteLocationCustomAttributeDefinition
[apiInstance deleteLocationCustomAttributeDefinitionWithKey:key
          completionHandler: ^(SQDeleteLocationCustomAttributeDefinitionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLocationCustomAttributesApi->deleteLocationCustomAttributeDefinition: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **NSString***| The key of the custom attribute definition to delete. | 

### Return type

[**SQDeleteLocationCustomAttributeDefinitionResponse***](SQDeleteLocationCustomAttributeDefinitionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listLocationCustomAttributeDefinitions**
```objc
-(NSURLSessionTask*) listLocationCustomAttributeDefinitionsWithVisibilityFilter: (NSString*) visibilityFilter
    limit: (NSNumber*) limit
    cursor: (NSString*) cursor
        completionHandler: (void (^)(SQListLocationCustomAttributeDefinitionsResponse* output, NSError* error)) handler;
```

ListLocationCustomAttributeDefinitions

Lists the location-related [custom attribute definitions](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) that belong to a Square seller account. When all response pages are retrieved, the results include all custom attribute definitions that are visible to the requesting application, including those that are created by other applications and set to `VISIBILITY_READ_ONLY` or `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* visibilityFilter = @"visibilityFilter_example"; // Filters the `CustomAttributeDefinition` results by their `visibility` values. (optional)
NSNumber* limit = @56; // The maximum number of results to return in a single paged response. This limit is advisory. The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100. The default value is 20. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
NSString* cursor = @"cursor_example"; // The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)

SQLocationCustomAttributesApi*apiInstance = [[SQLocationCustomAttributesApi alloc] init];

// ListLocationCustomAttributeDefinitions
[apiInstance listLocationCustomAttributeDefinitionsWithVisibilityFilter:visibilityFilter
              limit:limit
              cursor:cursor
          completionHandler: ^(SQListLocationCustomAttributeDefinitionsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLocationCustomAttributesApi->listLocationCustomAttributeDefinitions: %@", error);
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

[**SQListLocationCustomAttributeDefinitionsResponse***](SQListLocationCustomAttributeDefinitionsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listLocationCustomAttributes**
```objc
-(NSURLSessionTask*) listLocationCustomAttributesWithLocationId: (NSString*) locationId
    visibilityFilter: (NSString*) visibilityFilter
    limit: (NSNumber*) limit
    cursor: (NSString*) cursor
    withDefinitions: (NSNumber*) withDefinitions
        completionHandler: (void (^)(SQListLocationCustomAttributesResponse* output, NSError* error)) handler;
```

ListLocationCustomAttributes

Lists the [custom attributes](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) associated with a location. You can use the `with_definitions` query parameter to also retrieve custom attribute definitions in the same call. When all response pages are retrieved, the results include all custom attributes that are visible to the requesting application, including those that are owned by other applications and set to `VISIBILITY_READ_ONLY` or `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* locationId = @"locationId_example"; // The ID of the target [location](https://developer.squareup.com/reference/square_2023-10-18/objects/Location).
NSString* visibilityFilter = @"visibilityFilter_example"; // Filters the `CustomAttributeDefinition` results by their `visibility` values. (optional)
NSNumber* limit = @56; // The maximum number of results to return in a single paged response. This limit is advisory. The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100. The default value is 20. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
NSString* cursor = @"cursor_example"; // The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
NSNumber* withDefinitions = @true; // Indicates whether to return the [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) in the `definition` field of each custom attribute. Set this parameter to `true` to get the name and description of each custom attribute, information about the data type, or other definition details. The default value is `false`. (optional)

SQLocationCustomAttributesApi*apiInstance = [[SQLocationCustomAttributesApi alloc] init];

// ListLocationCustomAttributes
[apiInstance listLocationCustomAttributesWithLocationId:locationId
              visibilityFilter:visibilityFilter
              limit:limit
              cursor:cursor
              withDefinitions:withDefinitions
          completionHandler: ^(SQListLocationCustomAttributesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLocationCustomAttributesApi->listLocationCustomAttributes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***| The ID of the target [location](https://developer.squareup.com/reference/square_2023-10-18/objects/Location). | 
 **visibilityFilter** | **NSString***| Filters the &#x60;CustomAttributeDefinition&#x60; results by their &#x60;visibility&#x60; values. | [optional] 
 **limit** | **NSNumber***| The maximum number of results to return in a single paged response. This limit is advisory. The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100. The default value is 20. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
 **cursor** | **NSString***| The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
 **withDefinitions** | **NSNumber***| Indicates whether to return the [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) in the &#x60;definition&#x60; field of each custom attribute. Set this parameter to &#x60;true&#x60; to get the name and description of each custom attribute, information about the data type, or other definition details. The default value is &#x60;false&#x60;. | [optional] 

### Return type

[**SQListLocationCustomAttributesResponse***](SQListLocationCustomAttributesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveLocationCustomAttribute**
```objc
-(NSURLSessionTask*) retrieveLocationCustomAttributeWithLocationId: (NSString*) locationId
    key: (NSString*) key
    withDefinition: (NSNumber*) withDefinition
    version: (NSNumber*) version
        completionHandler: (void (^)(SQRetrieveLocationCustomAttributeResponse* output, NSError* error)) handler;
```

RetrieveLocationCustomAttribute

Retrieves a [custom attribute](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) associated with a location. You can use the `with_definition` query parameter to also retrieve the custom attribute definition in the same call. To retrieve a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_ONLY` or `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* locationId = @"locationId_example"; // The ID of the target [location](https://developer.squareup.com/reference/square_2023-10-18/objects/Location).
NSString* key = @"key_example"; // The key of the custom attribute to retrieve. This key must match the `key` of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key.
NSNumber* withDefinition = @true; // Indicates whether to return the [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) in the `definition` field of the custom attribute. Set this parameter to `true` to get the name and description of the custom attribute, information about the data type, or other definition details. The default value is `false`. (optional)
NSNumber* version = @56; // The current version of the custom attribute, which is used for strongly consistent reads to guarantee that you receive the most up-to-date data. When included in the request, Square returns the specified version or a higher version if one exists. If the specified version is higher than the current version, Square returns a `BAD_REQUEST` error. (optional)

SQLocationCustomAttributesApi*apiInstance = [[SQLocationCustomAttributesApi alloc] init];

// RetrieveLocationCustomAttribute
[apiInstance retrieveLocationCustomAttributeWithLocationId:locationId
              key:key
              withDefinition:withDefinition
              version:version
          completionHandler: ^(SQRetrieveLocationCustomAttributeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLocationCustomAttributesApi->retrieveLocationCustomAttribute: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***| The ID of the target [location](https://developer.squareup.com/reference/square_2023-10-18/objects/Location). | 
 **key** | **NSString***| The key of the custom attribute to retrieve. This key must match the &#x60;key&#x60; of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key. | 
 **withDefinition** | **NSNumber***| Indicates whether to return the [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) in the &#x60;definition&#x60; field of the custom attribute. Set this parameter to &#x60;true&#x60; to get the name and description of the custom attribute, information about the data type, or other definition details. The default value is &#x60;false&#x60;. | [optional] 
 **version** | **NSNumber***| The current version of the custom attribute, which is used for strongly consistent reads to guarantee that you receive the most up-to-date data. When included in the request, Square returns the specified version or a higher version if one exists. If the specified version is higher than the current version, Square returns a &#x60;BAD_REQUEST&#x60; error. | [optional] 

### Return type

[**SQRetrieveLocationCustomAttributeResponse***](SQRetrieveLocationCustomAttributeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveLocationCustomAttributeDefinition**
```objc
-(NSURLSessionTask*) retrieveLocationCustomAttributeDefinitionWithKey: (NSString*) key
    version: (NSNumber*) version
        completionHandler: (void (^)(SQRetrieveLocationCustomAttributeDefinitionResponse* output, NSError* error)) handler;
```

RetrieveLocationCustomAttributeDefinition

Retrieves a location-related [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) from a Square seller account. To retrieve a custom attribute definition created by another application, the `visibility` setting must be `VISIBILITY_READ_ONLY` or `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* key = @"key_example"; // The key of the custom attribute definition to retrieve. If the requesting application is not the definition owner, you must use the qualified key.
NSNumber* version = @56; // The current version of the custom attribute definition, which is used for strongly consistent reads to guarantee that you receive the most up-to-date data. When included in the request, Square returns the specified version or a higher version if one exists. If the specified version is higher than the current version, Square returns a `BAD_REQUEST` error. (optional)

SQLocationCustomAttributesApi*apiInstance = [[SQLocationCustomAttributesApi alloc] init];

// RetrieveLocationCustomAttributeDefinition
[apiInstance retrieveLocationCustomAttributeDefinitionWithKey:key
              version:version
          completionHandler: ^(SQRetrieveLocationCustomAttributeDefinitionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLocationCustomAttributesApi->retrieveLocationCustomAttributeDefinition: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **NSString***| The key of the custom attribute definition to retrieve. If the requesting application is not the definition owner, you must use the qualified key. | 
 **version** | **NSNumber***| The current version of the custom attribute definition, which is used for strongly consistent reads to guarantee that you receive the most up-to-date data. When included in the request, Square returns the specified version or a higher version if one exists. If the specified version is higher than the current version, Square returns a &#x60;BAD_REQUEST&#x60; error. | [optional] 

### Return type

[**SQRetrieveLocationCustomAttributeDefinitionResponse***](SQRetrieveLocationCustomAttributeDefinitionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateLocationCustomAttributeDefinition**
```objc
-(NSURLSessionTask*) updateLocationCustomAttributeDefinitionWithKey: (NSString*) key
    body: (SQUpdateLocationCustomAttributeDefinitionRequest*) body
        completionHandler: (void (^)(SQUpdateLocationCustomAttributeDefinitionResponse* output, NSError* error)) handler;
```

UpdateLocationCustomAttributeDefinition

Updates a location-related [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) for a Square seller account. Use this endpoint to update the following fields: `name`, `description`, `visibility`, or the `schema` for a `Selection` data type. Only the definition owner can update a custom attribute definition.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* key = @"key_example"; // The key of the custom attribute definition to update.
SQUpdateLocationCustomAttributeDefinitionRequest* body = [[SQUpdateLocationCustomAttributeDefinitionRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQLocationCustomAttributesApi*apiInstance = [[SQLocationCustomAttributesApi alloc] init];

// UpdateLocationCustomAttributeDefinition
[apiInstance updateLocationCustomAttributeDefinitionWithKey:key
              body:body
          completionHandler: ^(SQUpdateLocationCustomAttributeDefinitionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLocationCustomAttributesApi->updateLocationCustomAttributeDefinition: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **NSString***| The key of the custom attribute definition to update. | 
 **body** | [**SQUpdateLocationCustomAttributeDefinitionRequest***](SQUpdateLocationCustomAttributeDefinitionRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpdateLocationCustomAttributeDefinitionResponse***](SQUpdateLocationCustomAttributeDefinitionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upsertLocationCustomAttribute**
```objc
-(NSURLSessionTask*) upsertLocationCustomAttributeWithLocationId: (NSString*) locationId
    key: (NSString*) key
    body: (SQUpsertLocationCustomAttributeRequest*) body
        completionHandler: (void (^)(SQUpsertLocationCustomAttributeResponse* output, NSError* error)) handler;
```

UpsertLocationCustomAttribute

Creates or updates a [custom attribute](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) for a location. Use this endpoint to set the value of a custom attribute for a specified location. A custom attribute is based on a custom attribute definition in a Square seller account, which is created using the [CreateLocationCustomAttributeDefinition](https://developer.squareup.com/reference/square_2023-10-18/location-custom-attributes-api/create-location-custom-attribute-definition) endpoint. To create or update a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_WRITE_VALUES`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* locationId = @"locationId_example"; // The ID of the target [location](https://developer.squareup.com/reference/square_2023-10-18/objects/Location).
NSString* key = @"key_example"; // The key of the custom attribute to create or update. This key must match the `key` of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key.
SQUpsertLocationCustomAttributeRequest* body = [[SQUpsertLocationCustomAttributeRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQLocationCustomAttributesApi*apiInstance = [[SQLocationCustomAttributesApi alloc] init];

// UpsertLocationCustomAttribute
[apiInstance upsertLocationCustomAttributeWithLocationId:locationId
              key:key
              body:body
          completionHandler: ^(SQUpsertLocationCustomAttributeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLocationCustomAttributesApi->upsertLocationCustomAttribute: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***| The ID of the target [location](https://developer.squareup.com/reference/square_2023-10-18/objects/Location). | 
 **key** | **NSString***| The key of the custom attribute to create or update. This key must match the &#x60;key&#x60; of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key. | 
 **body** | [**SQUpsertLocationCustomAttributeRequest***](SQUpsertLocationCustomAttributeRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpsertLocationCustomAttributeResponse***](SQUpsertLocationCustomAttributeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

