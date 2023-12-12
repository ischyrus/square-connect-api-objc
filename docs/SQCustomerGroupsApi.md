# SQCustomerGroupsApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCustomerGroup**](SQCustomerGroupsApi.md#createcustomergroup) | **POST** /v2/customers/groups | CreateCustomerGroup
[**deleteCustomerGroup**](SQCustomerGroupsApi.md#deletecustomergroup) | **DELETE** /v2/customers/groups/{group_id} | DeleteCustomerGroup
[**listCustomerGroups**](SQCustomerGroupsApi.md#listcustomergroups) | **GET** /v2/customers/groups | ListCustomerGroups
[**retrieveCustomerGroup**](SQCustomerGroupsApi.md#retrievecustomergroup) | **GET** /v2/customers/groups/{group_id} | RetrieveCustomerGroup
[**updateCustomerGroup**](SQCustomerGroupsApi.md#updatecustomergroup) | **PUT** /v2/customers/groups/{group_id} | UpdateCustomerGroup


# **createCustomerGroup**
```objc
-(NSURLSessionTask*) createCustomerGroupWithBody: (SQCreateCustomerGroupRequest*) body
        completionHandler: (void (^)(SQCreateCustomerGroupResponse* output, NSError* error)) handler;
```

CreateCustomerGroup

Creates a new customer group for a business.  The request must include the `name` value of the group.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCreateCustomerGroupRequest* body = [[SQCreateCustomerGroupRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQCustomerGroupsApi*apiInstance = [[SQCustomerGroupsApi alloc] init];

// CreateCustomerGroup
[apiInstance createCustomerGroupWithBody:body
          completionHandler: ^(SQCreateCustomerGroupResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCustomerGroupsApi->createCustomerGroup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCreateCustomerGroupRequest***](SQCreateCustomerGroupRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateCustomerGroupResponse***](SQCreateCustomerGroupResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomerGroup**
```objc
-(NSURLSessionTask*) deleteCustomerGroupWithGroupId: (NSString*) groupId
        completionHandler: (void (^)(SQDeleteCustomerGroupResponse* output, NSError* error)) handler;
```

DeleteCustomerGroup

Deletes a customer group as identified by the `group_id` value.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* groupId = @"groupId_example"; // The ID of the customer group to delete.

SQCustomerGroupsApi*apiInstance = [[SQCustomerGroupsApi alloc] init];

// DeleteCustomerGroup
[apiInstance deleteCustomerGroupWithGroupId:groupId
          completionHandler: ^(SQDeleteCustomerGroupResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCustomerGroupsApi->deleteCustomerGroup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **NSString***| The ID of the customer group to delete. | 

### Return type

[**SQDeleteCustomerGroupResponse***](SQDeleteCustomerGroupResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCustomerGroups**
```objc
-(NSURLSessionTask*) listCustomerGroupsWithCursor: (NSString*) cursor
    limit: (NSNumber*) limit
        completionHandler: (void (^)(SQListCustomerGroupsResponse* output, NSError* error)) handler;
```

ListCustomerGroups

Retrieves the list of customer groups of a business.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* cursor = @"cursor_example"; // A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for your original query.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
NSNumber* limit = @56; // The maximum number of results to return in a single page. This limit is advisory. The response might contain more or fewer results. If the limit is less than 1 or greater than 50, Square returns a `400 VALUE_TOO_LOW` or `400 VALUE_TOO_HIGH` error. The default value is 50.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)

SQCustomerGroupsApi*apiInstance = [[SQCustomerGroupsApi alloc] init];

// ListCustomerGroups
[apiInstance listCustomerGroupsWithCursor:cursor
              limit:limit
          completionHandler: ^(SQListCustomerGroupsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCustomerGroupsApi->listCustomerGroups: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **NSString***| A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for your original query.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
 **limit** | **NSNumber***| The maximum number of results to return in a single page. This limit is advisory. The response might contain more or fewer results. If the limit is less than 1 or greater than 50, Square returns a &#x60;400 VALUE_TOO_LOW&#x60; or &#x60;400 VALUE_TOO_HIGH&#x60; error. The default value is 50.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 

### Return type

[**SQListCustomerGroupsResponse***](SQListCustomerGroupsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveCustomerGroup**
```objc
-(NSURLSessionTask*) retrieveCustomerGroupWithGroupId: (NSString*) groupId
        completionHandler: (void (^)(SQRetrieveCustomerGroupResponse* output, NSError* error)) handler;
```

RetrieveCustomerGroup

Retrieves a specific customer group as identified by the `group_id` value.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* groupId = @"groupId_example"; // The ID of the customer group to retrieve.

SQCustomerGroupsApi*apiInstance = [[SQCustomerGroupsApi alloc] init];

// RetrieveCustomerGroup
[apiInstance retrieveCustomerGroupWithGroupId:groupId
          completionHandler: ^(SQRetrieveCustomerGroupResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCustomerGroupsApi->retrieveCustomerGroup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **NSString***| The ID of the customer group to retrieve. | 

### Return type

[**SQRetrieveCustomerGroupResponse***](SQRetrieveCustomerGroupResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCustomerGroup**
```objc
-(NSURLSessionTask*) updateCustomerGroupWithGroupId: (NSString*) groupId
    body: (SQUpdateCustomerGroupRequest*) body
        completionHandler: (void (^)(SQUpdateCustomerGroupResponse* output, NSError* error)) handler;
```

UpdateCustomerGroup

Updates a customer group as identified by the `group_id` value.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* groupId = @"groupId_example"; // The ID of the customer group to update.
SQUpdateCustomerGroupRequest* body = [[SQUpdateCustomerGroupRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQCustomerGroupsApi*apiInstance = [[SQCustomerGroupsApi alloc] init];

// UpdateCustomerGroup
[apiInstance updateCustomerGroupWithGroupId:groupId
              body:body
          completionHandler: ^(SQUpdateCustomerGroupResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCustomerGroupsApi->updateCustomerGroup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **NSString***| The ID of the customer group to update. | 
 **body** | [**SQUpdateCustomerGroupRequest***](SQUpdateCustomerGroupRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpdateCustomerGroupResponse***](SQUpdateCustomerGroupResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

