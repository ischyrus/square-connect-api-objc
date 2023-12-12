# SQBookingCustomAttributesApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulkDeleteBookingCustomAttributes**](SQBookingCustomAttributesApi.md#bulkdeletebookingcustomattributes) | **POST** /v2/bookings/custom-attributes/bulk-delete | BulkDeleteBookingCustomAttributes
[**bulkUpsertBookingCustomAttributes**](SQBookingCustomAttributesApi.md#bulkupsertbookingcustomattributes) | **POST** /v2/bookings/custom-attributes/bulk-upsert | BulkUpsertBookingCustomAttributes
[**createBookingCustomAttributeDefinition**](SQBookingCustomAttributesApi.md#createbookingcustomattributedefinition) | **POST** /v2/bookings/custom-attribute-definitions | CreateBookingCustomAttributeDefinition
[**deleteBookingCustomAttribute**](SQBookingCustomAttributesApi.md#deletebookingcustomattribute) | **DELETE** /v2/bookings/{booking_id}/custom-attributes/{key} | DeleteBookingCustomAttribute
[**deleteBookingCustomAttributeDefinition**](SQBookingCustomAttributesApi.md#deletebookingcustomattributedefinition) | **DELETE** /v2/bookings/custom-attribute-definitions/{key} | DeleteBookingCustomAttributeDefinition
[**listBookingCustomAttributeDefinitions**](SQBookingCustomAttributesApi.md#listbookingcustomattributedefinitions) | **GET** /v2/bookings/custom-attribute-definitions | ListBookingCustomAttributeDefinitions
[**listBookingCustomAttributes**](SQBookingCustomAttributesApi.md#listbookingcustomattributes) | **GET** /v2/bookings/{booking_id}/custom-attributes | ListBookingCustomAttributes
[**retrieveBookingCustomAttribute**](SQBookingCustomAttributesApi.md#retrievebookingcustomattribute) | **GET** /v2/bookings/{booking_id}/custom-attributes/{key} | RetrieveBookingCustomAttribute
[**retrieveBookingCustomAttributeDefinition**](SQBookingCustomAttributesApi.md#retrievebookingcustomattributedefinition) | **GET** /v2/bookings/custom-attribute-definitions/{key} | RetrieveBookingCustomAttributeDefinition
[**updateBookingCustomAttributeDefinition**](SQBookingCustomAttributesApi.md#updatebookingcustomattributedefinition) | **PUT** /v2/bookings/custom-attribute-definitions/{key} | UpdateBookingCustomAttributeDefinition
[**upsertBookingCustomAttribute**](SQBookingCustomAttributesApi.md#upsertbookingcustomattribute) | **PUT** /v2/bookings/{booking_id}/custom-attributes/{key} | UpsertBookingCustomAttribute


# **bulkDeleteBookingCustomAttributes**
```objc
-(NSURLSessionTask*) bulkDeleteBookingCustomAttributesWithBody: (SQBulkDeleteBookingCustomAttributesRequest*) body
        completionHandler: (void (^)(SQBulkDeleteBookingCustomAttributesResponse* output, NSError* error)) handler;
```

BulkDeleteBookingCustomAttributes

Bulk deletes bookings custom attributes.  To call this endpoint with buyer-level permissions, set `APPOINTMENTS_WRITE` for the OAuth scope. To call this endpoint with seller-level permissions, set `APPOINTMENTS_ALL_WRITE` and `APPOINTMENTS_WRITE` for the OAuth scope.  For calls to this endpoint with seller-level permissions to succeed, the seller must have subscribed to *Appointments Plus* or *Appointments Premium*.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQBulkDeleteBookingCustomAttributesRequest* body = [[SQBulkDeleteBookingCustomAttributesRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQBookingCustomAttributesApi*apiInstance = [[SQBookingCustomAttributesApi alloc] init];

// BulkDeleteBookingCustomAttributes
[apiInstance bulkDeleteBookingCustomAttributesWithBody:body
          completionHandler: ^(SQBulkDeleteBookingCustomAttributesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQBookingCustomAttributesApi->bulkDeleteBookingCustomAttributes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQBulkDeleteBookingCustomAttributesRequest***](SQBulkDeleteBookingCustomAttributesRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQBulkDeleteBookingCustomAttributesResponse***](SQBulkDeleteBookingCustomAttributesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulkUpsertBookingCustomAttributes**
```objc
-(NSURLSessionTask*) bulkUpsertBookingCustomAttributesWithBody: (SQBulkUpsertBookingCustomAttributesRequest*) body
        completionHandler: (void (^)(SQBulkUpsertBookingCustomAttributesResponse* output, NSError* error)) handler;
```

BulkUpsertBookingCustomAttributes

Bulk upserts bookings custom attributes.  To call this endpoint with buyer-level permissions, set `APPOINTMENTS_WRITE` for the OAuth scope. To call this endpoint with seller-level permissions, set `APPOINTMENTS_ALL_WRITE` and `APPOINTMENTS_WRITE` for the OAuth scope.  For calls to this endpoint with seller-level permissions to succeed, the seller must have subscribed to *Appointments Plus* or *Appointments Premium*.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQBulkUpsertBookingCustomAttributesRequest* body = [[SQBulkUpsertBookingCustomAttributesRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQBookingCustomAttributesApi*apiInstance = [[SQBookingCustomAttributesApi alloc] init];

// BulkUpsertBookingCustomAttributes
[apiInstance bulkUpsertBookingCustomAttributesWithBody:body
          completionHandler: ^(SQBulkUpsertBookingCustomAttributesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQBookingCustomAttributesApi->bulkUpsertBookingCustomAttributes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQBulkUpsertBookingCustomAttributesRequest***](SQBulkUpsertBookingCustomAttributesRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQBulkUpsertBookingCustomAttributesResponse***](SQBulkUpsertBookingCustomAttributesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createBookingCustomAttributeDefinition**
```objc
-(NSURLSessionTask*) createBookingCustomAttributeDefinitionWithBody: (SQCreateBookingCustomAttributeDefinitionRequest*) body
        completionHandler: (void (^)(SQCreateBookingCustomAttributeDefinitionResponse* output, NSError* error)) handler;
```

CreateBookingCustomAttributeDefinition

Creates a bookings custom attribute definition.  To call this endpoint with buyer-level permissions, set `APPOINTMENTS_WRITE` for the OAuth scope. To call this endpoint with seller-level permissions, set `APPOINTMENTS_ALL_WRITE` and `APPOINTMENTS_WRITE` for the OAuth scope.  For calls to this endpoint with seller-level permissions to succeed, the seller must have subscribed to *Appointments Plus* or *Appointments Premium*.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCreateBookingCustomAttributeDefinitionRequest* body = [[SQCreateBookingCustomAttributeDefinitionRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQBookingCustomAttributesApi*apiInstance = [[SQBookingCustomAttributesApi alloc] init];

// CreateBookingCustomAttributeDefinition
[apiInstance createBookingCustomAttributeDefinitionWithBody:body
          completionHandler: ^(SQCreateBookingCustomAttributeDefinitionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQBookingCustomAttributesApi->createBookingCustomAttributeDefinition: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCreateBookingCustomAttributeDefinitionRequest***](SQCreateBookingCustomAttributeDefinitionRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateBookingCustomAttributeDefinitionResponse***](SQCreateBookingCustomAttributeDefinitionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBookingCustomAttribute**
```objc
-(NSURLSessionTask*) deleteBookingCustomAttributeWithBookingId: (NSString*) bookingId
    key: (NSString*) key
        completionHandler: (void (^)(SQDeleteBookingCustomAttributeResponse* output, NSError* error)) handler;
```

DeleteBookingCustomAttribute

Deletes a bookings custom attribute.  To call this endpoint with buyer-level permissions, set `APPOINTMENTS_WRITE` for the OAuth scope. To call this endpoint with seller-level permissions, set `APPOINTMENTS_ALL_WRITE` and `APPOINTMENTS_WRITE` for the OAuth scope.  For calls to this endpoint with seller-level permissions to succeed, the seller must have subscribed to *Appointments Plus* or *Appointments Premium*.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* bookingId = @"bookingId_example"; // The ID of the target [booking](https://developer.squareup.com/reference/square_2023-10-18/objects/Booking).
NSString* key = @"key_example"; // The key of the custom attribute to delete. This key must match the `key` of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key.

SQBookingCustomAttributesApi*apiInstance = [[SQBookingCustomAttributesApi alloc] init];

// DeleteBookingCustomAttribute
[apiInstance deleteBookingCustomAttributeWithBookingId:bookingId
              key:key
          completionHandler: ^(SQDeleteBookingCustomAttributeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQBookingCustomAttributesApi->deleteBookingCustomAttribute: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookingId** | **NSString***| The ID of the target [booking](https://developer.squareup.com/reference/square_2023-10-18/objects/Booking). | 
 **key** | **NSString***| The key of the custom attribute to delete. This key must match the &#x60;key&#x60; of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key. | 

### Return type

[**SQDeleteBookingCustomAttributeResponse***](SQDeleteBookingCustomAttributeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBookingCustomAttributeDefinition**
```objc
-(NSURLSessionTask*) deleteBookingCustomAttributeDefinitionWithKey: (NSString*) key
        completionHandler: (void (^)(SQDeleteBookingCustomAttributeDefinitionResponse* output, NSError* error)) handler;
```

DeleteBookingCustomAttributeDefinition

Deletes a bookings custom attribute definition.  To call this endpoint with buyer-level permissions, set `APPOINTMENTS_WRITE` for the OAuth scope. To call this endpoint with seller-level permissions, set `APPOINTMENTS_ALL_WRITE` and `APPOINTMENTS_WRITE` for the OAuth scope.  For calls to this endpoint with seller-level permissions to succeed, the seller must have subscribed to *Appointments Plus* or *Appointments Premium*.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* key = @"key_example"; // The key of the custom attribute definition to delete.

SQBookingCustomAttributesApi*apiInstance = [[SQBookingCustomAttributesApi alloc] init];

// DeleteBookingCustomAttributeDefinition
[apiInstance deleteBookingCustomAttributeDefinitionWithKey:key
          completionHandler: ^(SQDeleteBookingCustomAttributeDefinitionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQBookingCustomAttributesApi->deleteBookingCustomAttributeDefinition: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **NSString***| The key of the custom attribute definition to delete. | 

### Return type

[**SQDeleteBookingCustomAttributeDefinitionResponse***](SQDeleteBookingCustomAttributeDefinitionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listBookingCustomAttributeDefinitions**
```objc
-(NSURLSessionTask*) listBookingCustomAttributeDefinitionsWithLimit: (NSNumber*) limit
    cursor: (NSString*) cursor
        completionHandler: (void (^)(SQListBookingCustomAttributeDefinitionsResponse* output, NSError* error)) handler;
```

ListBookingCustomAttributeDefinitions

Get all bookings custom attribute definitions.  To call this endpoint with buyer-level permissions, set `APPOINTMENTS_READ` for the OAuth scope. To call this endpoint with seller-level permissions, set `APPOINTMENTS_ALL_READ` and `APPOINTMENTS_READ` for the OAuth scope.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSNumber* limit = @56; // The maximum number of results to return in a single paged response. This limit is advisory. The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100. The default value is 20. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
NSString* cursor = @"cursor_example"; // The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)

SQBookingCustomAttributesApi*apiInstance = [[SQBookingCustomAttributesApi alloc] init];

// ListBookingCustomAttributeDefinitions
[apiInstance listBookingCustomAttributeDefinitionsWithLimit:limit
              cursor:cursor
          completionHandler: ^(SQListBookingCustomAttributeDefinitionsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQBookingCustomAttributesApi->listBookingCustomAttributeDefinitions: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **NSNumber***| The maximum number of results to return in a single paged response. This limit is advisory. The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100. The default value is 20. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
 **cursor** | **NSString***| The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 

### Return type

[**SQListBookingCustomAttributeDefinitionsResponse***](SQListBookingCustomAttributeDefinitionsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listBookingCustomAttributes**
```objc
-(NSURLSessionTask*) listBookingCustomAttributesWithBookingId: (NSString*) bookingId
    limit: (NSNumber*) limit
    cursor: (NSString*) cursor
    withDefinitions: (NSNumber*) withDefinitions
        completionHandler: (void (^)(SQListBookingCustomAttributesResponse* output, NSError* error)) handler;
```

ListBookingCustomAttributes

Lists a booking's custom attributes.  To call this endpoint with buyer-level permissions, set `APPOINTMENTS_READ` for the OAuth scope. To call this endpoint with seller-level permissions, set `APPOINTMENTS_ALL_READ` and `APPOINTMENTS_READ` for the OAuth scope.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* bookingId = @"bookingId_example"; // The ID of the target [booking](https://developer.squareup.com/reference/square_2023-10-18/objects/Booking).
NSNumber* limit = @56; // The maximum number of results to return in a single paged response. This limit is advisory. The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100. The default value is 20. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
NSString* cursor = @"cursor_example"; // The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
NSNumber* withDefinitions = @true; // Indicates whether to return the [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) in the `definition` field of each custom attribute. Set this parameter to `true` to get the name and description of each custom attribute, information about the data type, or other definition details. The default value is `false`. (optional)

SQBookingCustomAttributesApi*apiInstance = [[SQBookingCustomAttributesApi alloc] init];

// ListBookingCustomAttributes
[apiInstance listBookingCustomAttributesWithBookingId:bookingId
              limit:limit
              cursor:cursor
              withDefinitions:withDefinitions
          completionHandler: ^(SQListBookingCustomAttributesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQBookingCustomAttributesApi->listBookingCustomAttributes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookingId** | **NSString***| The ID of the target [booking](https://developer.squareup.com/reference/square_2023-10-18/objects/Booking). | 
 **limit** | **NSNumber***| The maximum number of results to return in a single paged response. This limit is advisory. The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100. The default value is 20. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
 **cursor** | **NSString***| The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
 **withDefinitions** | **NSNumber***| Indicates whether to return the [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) in the &#x60;definition&#x60; field of each custom attribute. Set this parameter to &#x60;true&#x60; to get the name and description of each custom attribute, information about the data type, or other definition details. The default value is &#x60;false&#x60;. | [optional] 

### Return type

[**SQListBookingCustomAttributesResponse***](SQListBookingCustomAttributesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveBookingCustomAttribute**
```objc
-(NSURLSessionTask*) retrieveBookingCustomAttributeWithBookingId: (NSString*) bookingId
    key: (NSString*) key
    withDefinition: (NSNumber*) withDefinition
    version: (NSNumber*) version
        completionHandler: (void (^)(SQRetrieveBookingCustomAttributeResponse* output, NSError* error)) handler;
```

RetrieveBookingCustomAttribute

Retrieves a bookings custom attribute.  To call this endpoint with buyer-level permissions, set `APPOINTMENTS_READ` for the OAuth scope. To call this endpoint with seller-level permissions, set `APPOINTMENTS_ALL_READ` and `APPOINTMENTS_READ` for the OAuth scope.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* bookingId = @"bookingId_example"; // The ID of the target [booking](https://developer.squareup.com/reference/square_2023-10-18/objects/Booking).
NSString* key = @"key_example"; // The key of the custom attribute to retrieve. This key must match the `key` of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key.
NSNumber* withDefinition = @true; // Indicates whether to return the [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) in the `definition` field of the custom attribute. Set this parameter to `true` to get the name and description of the custom attribute, information about the data type, or other definition details. The default value is `false`. (optional)
NSNumber* version = @56; // The current version of the custom attribute, which is used for strongly consistent reads to guarantee that you receive the most up-to-date data. When included in the request, Square returns the specified version or a higher version if one exists. If the specified version is higher than the current version, Square returns a `BAD_REQUEST` error. (optional)

SQBookingCustomAttributesApi*apiInstance = [[SQBookingCustomAttributesApi alloc] init];

// RetrieveBookingCustomAttribute
[apiInstance retrieveBookingCustomAttributeWithBookingId:bookingId
              key:key
              withDefinition:withDefinition
              version:version
          completionHandler: ^(SQRetrieveBookingCustomAttributeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQBookingCustomAttributesApi->retrieveBookingCustomAttribute: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookingId** | **NSString***| The ID of the target [booking](https://developer.squareup.com/reference/square_2023-10-18/objects/Booking). | 
 **key** | **NSString***| The key of the custom attribute to retrieve. This key must match the &#x60;key&#x60; of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key. | 
 **withDefinition** | **NSNumber***| Indicates whether to return the [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) in the &#x60;definition&#x60; field of the custom attribute. Set this parameter to &#x60;true&#x60; to get the name and description of the custom attribute, information about the data type, or other definition details. The default value is &#x60;false&#x60;. | [optional] 
 **version** | **NSNumber***| The current version of the custom attribute, which is used for strongly consistent reads to guarantee that you receive the most up-to-date data. When included in the request, Square returns the specified version or a higher version if one exists. If the specified version is higher than the current version, Square returns a &#x60;BAD_REQUEST&#x60; error. | [optional] 

### Return type

[**SQRetrieveBookingCustomAttributeResponse***](SQRetrieveBookingCustomAttributeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveBookingCustomAttributeDefinition**
```objc
-(NSURLSessionTask*) retrieveBookingCustomAttributeDefinitionWithKey: (NSString*) key
    version: (NSNumber*) version
        completionHandler: (void (^)(SQRetrieveBookingCustomAttributeDefinitionResponse* output, NSError* error)) handler;
```

RetrieveBookingCustomAttributeDefinition

Retrieves a bookings custom attribute definition.  To call this endpoint with buyer-level permissions, set `APPOINTMENTS_READ` for the OAuth scope. To call this endpoint with seller-level permissions, set `APPOINTMENTS_ALL_READ` and `APPOINTMENTS_READ` for the OAuth scope.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* key = @"key_example"; // The key of the custom attribute definition to retrieve. If the requesting application is not the definition owner, you must use the qualified key.
NSNumber* version = @56; // The current version of the custom attribute definition, which is used for strongly consistent reads to guarantee that you receive the most up-to-date data. When included in the request, Square returns the specified version or a higher version if one exists. If the specified version is higher than the current version, Square returns a `BAD_REQUEST` error. (optional)

SQBookingCustomAttributesApi*apiInstance = [[SQBookingCustomAttributesApi alloc] init];

// RetrieveBookingCustomAttributeDefinition
[apiInstance retrieveBookingCustomAttributeDefinitionWithKey:key
              version:version
          completionHandler: ^(SQRetrieveBookingCustomAttributeDefinitionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQBookingCustomAttributesApi->retrieveBookingCustomAttributeDefinition: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **NSString***| The key of the custom attribute definition to retrieve. If the requesting application is not the definition owner, you must use the qualified key. | 
 **version** | **NSNumber***| The current version of the custom attribute definition, which is used for strongly consistent reads to guarantee that you receive the most up-to-date data. When included in the request, Square returns the specified version or a higher version if one exists. If the specified version is higher than the current version, Square returns a &#x60;BAD_REQUEST&#x60; error. | [optional] 

### Return type

[**SQRetrieveBookingCustomAttributeDefinitionResponse***](SQRetrieveBookingCustomAttributeDefinitionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBookingCustomAttributeDefinition**
```objc
-(NSURLSessionTask*) updateBookingCustomAttributeDefinitionWithKey: (NSString*) key
    body: (SQUpdateBookingCustomAttributeDefinitionRequest*) body
        completionHandler: (void (^)(SQUpdateBookingCustomAttributeDefinitionResponse* output, NSError* error)) handler;
```

UpdateBookingCustomAttributeDefinition

Updates a bookings custom attribute definition.  To call this endpoint with buyer-level permissions, set `APPOINTMENTS_WRITE` for the OAuth scope. To call this endpoint with seller-level permissions, set `APPOINTMENTS_ALL_WRITE` and `APPOINTMENTS_WRITE` for the OAuth scope.  For calls to this endpoint with seller-level permissions to succeed, the seller must have subscribed to *Appointments Plus* or *Appointments Premium*.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* key = @"key_example"; // The key of the custom attribute definition to update.
SQUpdateBookingCustomAttributeDefinitionRequest* body = [[SQUpdateBookingCustomAttributeDefinitionRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQBookingCustomAttributesApi*apiInstance = [[SQBookingCustomAttributesApi alloc] init];

// UpdateBookingCustomAttributeDefinition
[apiInstance updateBookingCustomAttributeDefinitionWithKey:key
              body:body
          completionHandler: ^(SQUpdateBookingCustomAttributeDefinitionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQBookingCustomAttributesApi->updateBookingCustomAttributeDefinition: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **NSString***| The key of the custom attribute definition to update. | 
 **body** | [**SQUpdateBookingCustomAttributeDefinitionRequest***](SQUpdateBookingCustomAttributeDefinitionRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpdateBookingCustomAttributeDefinitionResponse***](SQUpdateBookingCustomAttributeDefinitionResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upsertBookingCustomAttribute**
```objc
-(NSURLSessionTask*) upsertBookingCustomAttributeWithBookingId: (NSString*) bookingId
    key: (NSString*) key
    body: (SQUpsertBookingCustomAttributeRequest*) body
        completionHandler: (void (^)(SQUpsertBookingCustomAttributeResponse* output, NSError* error)) handler;
```

UpsertBookingCustomAttribute

Upserts a bookings custom attribute.  To call this endpoint with buyer-level permissions, set `APPOINTMENTS_WRITE` for the OAuth scope. To call this endpoint with seller-level permissions, set `APPOINTMENTS_ALL_WRITE` and `APPOINTMENTS_WRITE` for the OAuth scope.  For calls to this endpoint with seller-level permissions to succeed, the seller must have subscribed to *Appointments Plus* or *Appointments Premium*.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* bookingId = @"bookingId_example"; // The ID of the target [booking](https://developer.squareup.com/reference/square_2023-10-18/objects/Booking).
NSString* key = @"key_example"; // The key of the custom attribute to create or update. This key must match the `key` of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key.
SQUpsertBookingCustomAttributeRequest* body = [[SQUpsertBookingCustomAttributeRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQBookingCustomAttributesApi*apiInstance = [[SQBookingCustomAttributesApi alloc] init];

// UpsertBookingCustomAttribute
[apiInstance upsertBookingCustomAttributeWithBookingId:bookingId
              key:key
              body:body
          completionHandler: ^(SQUpsertBookingCustomAttributeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQBookingCustomAttributesApi->upsertBookingCustomAttribute: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookingId** | **NSString***| The ID of the target [booking](https://developer.squareup.com/reference/square_2023-10-18/objects/Booking). | 
 **key** | **NSString***| The key of the custom attribute to create or update. This key must match the &#x60;key&#x60; of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key. | 
 **body** | [**SQUpsertBookingCustomAttributeRequest***](SQUpsertBookingCustomAttributeRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpsertBookingCustomAttributeResponse***](SQUpsertBookingCustomAttributeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

