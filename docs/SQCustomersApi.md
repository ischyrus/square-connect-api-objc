# SQCustomersApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addGroupToCustomer**](SQCustomersApi.md#addgrouptocustomer) | **PUT** /v2/customers/{customer_id}/groups/{group_id} | AddGroupToCustomer
[**createCustomer**](SQCustomersApi.md#createcustomer) | **POST** /v2/customers | CreateCustomer
[**createCustomerCard**](SQCustomersApi.md#createcustomercard) | **POST** /v2/customers/{customer_id}/cards | CreateCustomerCard
[**deleteCustomer**](SQCustomersApi.md#deletecustomer) | **DELETE** /v2/customers/{customer_id} | DeleteCustomer
[**deleteCustomerCard**](SQCustomersApi.md#deletecustomercard) | **DELETE** /v2/customers/{customer_id}/cards/{card_id} | DeleteCustomerCard
[**listCustomers**](SQCustomersApi.md#listcustomers) | **GET** /v2/customers | ListCustomers
[**removeGroupFromCustomer**](SQCustomersApi.md#removegroupfromcustomer) | **DELETE** /v2/customers/{customer_id}/groups/{group_id} | RemoveGroupFromCustomer
[**retrieveCustomer**](SQCustomersApi.md#retrievecustomer) | **GET** /v2/customers/{customer_id} | RetrieveCustomer
[**searchCustomers**](SQCustomersApi.md#searchcustomers) | **POST** /v2/customers/search | SearchCustomers
[**updateCustomer**](SQCustomersApi.md#updatecustomer) | **PUT** /v2/customers/{customer_id} | UpdateCustomer


# **addGroupToCustomer**
```objc
-(NSURLSessionTask*) addGroupToCustomerWithCustomerId: (NSString*) customerId
    groupId: (NSString*) groupId
        completionHandler: (void (^)(SQAddGroupToCustomerResponse* output, NSError* error)) handler;
```

AddGroupToCustomer

Adds a group membership to a customer.  The customer is identified by the `customer_id` value and the customer group is identified by the `group_id` value.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* customerId = @"customerId_example"; // The ID of the customer to add to a group.
NSString* groupId = @"groupId_example"; // The ID of the customer group to add the customer to.

SQCustomersApi*apiInstance = [[SQCustomersApi alloc] init];

// AddGroupToCustomer
[apiInstance addGroupToCustomerWithCustomerId:customerId
              groupId:groupId
          completionHandler: ^(SQAddGroupToCustomerResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCustomersApi->addGroupToCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***| The ID of the customer to add to a group. | 
 **groupId** | **NSString***| The ID of the customer group to add the customer to. | 

### Return type

[**SQAddGroupToCustomerResponse***](SQAddGroupToCustomerResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCustomer**
```objc
-(NSURLSessionTask*) createCustomerWithBody: (SQCreateCustomerRequest*) body
        completionHandler: (void (^)(SQCreateCustomerResponse* output, NSError* error)) handler;
```

CreateCustomer

Creates a new customer for a business.  You must provide at least one of the following values in your request to this endpoint:  - `given_name` - `family_name` - `company_name` - `email_address` - `phone_number`

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCreateCustomerRequest* body = [[SQCreateCustomerRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQCustomersApi*apiInstance = [[SQCustomersApi alloc] init];

// CreateCustomer
[apiInstance createCustomerWithBody:body
          completionHandler: ^(SQCreateCustomerResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCustomersApi->createCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCreateCustomerRequest***](SQCreateCustomerRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateCustomerResponse***](SQCreateCustomerResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCustomerCard**
```objc
-(NSURLSessionTask*) createCustomerCardWithCustomerId: (NSString*) customerId
    body: (SQCreateCustomerCardRequest*) body
        completionHandler: (void (^)(SQCreateCustomerCardResponse* output, NSError* error)) handler;
```

CreateCustomerCard

Adds a card on file to an existing customer.  As with charges, calls to `CreateCustomerCard` are idempotent. Multiple calls with the same card nonce return the same card record that was created with the provided nonce during the _first_ call.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* customerId = @"customerId_example"; // The Square ID of the customer profile the card is linked to.
SQCreateCustomerCardRequest* body = [[SQCreateCustomerCardRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQCustomersApi*apiInstance = [[SQCustomersApi alloc] init];

// CreateCustomerCard
[apiInstance createCustomerCardWithCustomerId:customerId
              body:body
          completionHandler: ^(SQCreateCustomerCardResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCustomersApi->createCustomerCard: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***| The Square ID of the customer profile the card is linked to. | 
 **body** | [**SQCreateCustomerCardRequest***](SQCreateCustomerCardRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateCustomerCardResponse***](SQCreateCustomerCardResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomer**
```objc
-(NSURLSessionTask*) deleteCustomerWithCustomerId: (NSString*) customerId
    version: (NSNumber*) version
        completionHandler: (void (^)(SQDeleteCustomerResponse* output, NSError* error)) handler;
```

DeleteCustomer

Deletes a customer profile from a business. This operation also unlinks any associated cards on file.   As a best practice, include the `version` field in the request to enable [optimistic concurrency](https://developer.squareup.com/docs/build-basics/common-api-patterns/optimistic-concurrency) control. If included, the value must be set to the current version of the customer profile.   To delete a customer profile that was created by merging existing profiles, you must use the ID of the newly created profile.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* customerId = @"customerId_example"; // The ID of the customer to delete.
NSNumber* version = @789; // The current version of the customer profile.  As a best practice, you should include this parameter to enable [optimistic concurrency](https://developer.squareup.com/docs/build-basics/common-api-patterns/optimistic-concurrency) control.  For more information, see [Delete a customer profile](https://developer.squareup.com/docs/customers-api/use-the-api/keep-records#delete-customer-profile). (optional)

SQCustomersApi*apiInstance = [[SQCustomersApi alloc] init];

// DeleteCustomer
[apiInstance deleteCustomerWithCustomerId:customerId
              version:version
          completionHandler: ^(SQDeleteCustomerResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCustomersApi->deleteCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***| The ID of the customer to delete. | 
 **version** | **NSNumber***| The current version of the customer profile.  As a best practice, you should include this parameter to enable [optimistic concurrency](https://developer.squareup.com/docs/build-basics/common-api-patterns/optimistic-concurrency) control.  For more information, see [Delete a customer profile](https://developer.squareup.com/docs/customers-api/use-the-api/keep-records#delete-customer-profile). | [optional] 

### Return type

[**SQDeleteCustomerResponse***](SQDeleteCustomerResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomerCard**
```objc
-(NSURLSessionTask*) deleteCustomerCardWithCustomerId: (NSString*) customerId
    cardId: (NSString*) cardId
        completionHandler: (void (^)(SQDeleteCustomerCardResponse* output, NSError* error)) handler;
```

DeleteCustomerCard

Removes a card on file from a customer.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* customerId = @"customerId_example"; // The ID of the customer that the card on file belongs to.
NSString* cardId = @"cardId_example"; // The ID of the card on file to delete.

SQCustomersApi*apiInstance = [[SQCustomersApi alloc] init];

// DeleteCustomerCard
[apiInstance deleteCustomerCardWithCustomerId:customerId
              cardId:cardId
          completionHandler: ^(SQDeleteCustomerCardResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCustomersApi->deleteCustomerCard: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***| The ID of the customer that the card on file belongs to. | 
 **cardId** | **NSString***| The ID of the card on file to delete. | 

### Return type

[**SQDeleteCustomerCardResponse***](SQDeleteCustomerCardResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCustomers**
```objc
-(NSURLSessionTask*) listCustomersWithCursor: (NSString*) cursor
    limit: (NSNumber*) limit
    sortField: (NSString*) sortField
    sortOrder: (NSString*) sortOrder
    count: (NSNumber*) count
        completionHandler: (void (^)(SQListCustomersResponse* output, NSError* error)) handler;
```

ListCustomers

Lists customer profiles associated with a Square account.  Under normal operating conditions, newly created or updated customer profiles become available for the listing operation in well under 30 seconds. Occasionally, propagation of the new or updated profiles can take closer to one minute or longer, especially during network incidents and outages.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* cursor = @"cursor_example"; // A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for your original query.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
NSNumber* limit = @56; // The maximum number of results to return in a single page. This limit is advisory. The response might contain more or fewer results. If the specified limit is less than 1 or greater than 100, Square returns a `400 VALUE_TOO_LOW` or `400 VALUE_TOO_HIGH` error. The default value is 100.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
NSString* sortField = @"sortField_example"; // Indicates how customers should be sorted.  The default value is `DEFAULT`. (optional)
NSString* sortOrder = @"sortOrder_example"; // Indicates whether customers should be sorted in ascending (`ASC`) or descending (`DESC`) order.  The default value is `ASC`. (optional)
NSNumber* count = @true; // Indicates whether to return the total count of customers in the `count` field of the response.  The default value is `false`. (optional)

SQCustomersApi*apiInstance = [[SQCustomersApi alloc] init];

// ListCustomers
[apiInstance listCustomersWithCursor:cursor
              limit:limit
              sortField:sortField
              sortOrder:sortOrder
              count:count
          completionHandler: ^(SQListCustomersResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCustomersApi->listCustomers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **NSString***| A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for your original query.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
 **limit** | **NSNumber***| The maximum number of results to return in a single page. This limit is advisory. The response might contain more or fewer results. If the specified limit is less than 1 or greater than 100, Square returns a &#x60;400 VALUE_TOO_LOW&#x60; or &#x60;400 VALUE_TOO_HIGH&#x60; error. The default value is 100.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
 **sortField** | **NSString***| Indicates how customers should be sorted.  The default value is &#x60;DEFAULT&#x60;. | [optional] 
 **sortOrder** | **NSString***| Indicates whether customers should be sorted in ascending (&#x60;ASC&#x60;) or descending (&#x60;DESC&#x60;) order.  The default value is &#x60;ASC&#x60;. | [optional] 
 **count** | **NSNumber***| Indicates whether to return the total count of customers in the &#x60;count&#x60; field of the response.  The default value is &#x60;false&#x60;. | [optional] 

### Return type

[**SQListCustomersResponse***](SQListCustomersResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeGroupFromCustomer**
```objc
-(NSURLSessionTask*) removeGroupFromCustomerWithCustomerId: (NSString*) customerId
    groupId: (NSString*) groupId
        completionHandler: (void (^)(SQRemoveGroupFromCustomerResponse* output, NSError* error)) handler;
```

RemoveGroupFromCustomer

Removes a group membership from a customer.  The customer is identified by the `customer_id` value and the customer group is identified by the `group_id` value.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* customerId = @"customerId_example"; // The ID of the customer to remove from the group.
NSString* groupId = @"groupId_example"; // The ID of the customer group to remove the customer from.

SQCustomersApi*apiInstance = [[SQCustomersApi alloc] init];

// RemoveGroupFromCustomer
[apiInstance removeGroupFromCustomerWithCustomerId:customerId
              groupId:groupId
          completionHandler: ^(SQRemoveGroupFromCustomerResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCustomersApi->removeGroupFromCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***| The ID of the customer to remove from the group. | 
 **groupId** | **NSString***| The ID of the customer group to remove the customer from. | 

### Return type

[**SQRemoveGroupFromCustomerResponse***](SQRemoveGroupFromCustomerResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveCustomer**
```objc
-(NSURLSessionTask*) retrieveCustomerWithCustomerId: (NSString*) customerId
        completionHandler: (void (^)(SQRetrieveCustomerResponse* output, NSError* error)) handler;
```

RetrieveCustomer

Returns details for a single customer.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* customerId = @"customerId_example"; // The ID of the customer to retrieve.

SQCustomersApi*apiInstance = [[SQCustomersApi alloc] init];

// RetrieveCustomer
[apiInstance retrieveCustomerWithCustomerId:customerId
          completionHandler: ^(SQRetrieveCustomerResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCustomersApi->retrieveCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***| The ID of the customer to retrieve. | 

### Return type

[**SQRetrieveCustomerResponse***](SQRetrieveCustomerResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchCustomers**
```objc
-(NSURLSessionTask*) searchCustomersWithBody: (SQSearchCustomersRequest*) body
        completionHandler: (void (^)(SQSearchCustomersResponse* output, NSError* error)) handler;
```

SearchCustomers

Searches the customer profiles associated with a Square account using one or more supported query filters.  Calling `SearchCustomers` without any explicit query filter returns all customer profiles ordered alphabetically based on `given_name` and `family_name`.  Under normal operating conditions, newly created or updated customer profiles become available for the search operation in well under 30 seconds. Occasionally, propagation of the new or updated profiles can take closer to one minute or longer, especially during network incidents and outages.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQSearchCustomersRequest* body = [[SQSearchCustomersRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQCustomersApi*apiInstance = [[SQCustomersApi alloc] init];

// SearchCustomers
[apiInstance searchCustomersWithBody:body
          completionHandler: ^(SQSearchCustomersResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCustomersApi->searchCustomers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQSearchCustomersRequest***](SQSearchCustomersRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQSearchCustomersResponse***](SQSearchCustomersResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCustomer**
```objc
-(NSURLSessionTask*) updateCustomerWithCustomerId: (NSString*) customerId
    body: (SQUpdateCustomerRequest*) body
        completionHandler: (void (^)(SQUpdateCustomerResponse* output, NSError* error)) handler;
```

UpdateCustomer

Updates a customer profile. This endpoint supports sparse updates, so only new or changed fields are required in the request. To add or update a field, specify the new value. To remove a field, specify `null` and include the `X-Clear-Null` header set to `true` (recommended) or specify an empty string (string fields only).  As a best practice, include the `version` field in the request to enable [optimistic concurrency](https://developer.squareup.com/docs/build-basics/common-api-patterns/optimistic-concurrency) control. If included, the value must be set to the current version of the customer profile.  To update a customer profile that was created by merging existing profiles, you must use the ID of the newly created profile.  You cannot use this endpoint to change cards on file. To make changes, use the [Cards API](https://developer.squareup.com/reference/square_2023-10-18/cards-api) or [Gift Cards API](https://developer.squareup.com/reference/square_2023-10-18/gift-cards-api).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* customerId = @"customerId_example"; // The ID of the customer to update.
SQUpdateCustomerRequest* body = [[SQUpdateCustomerRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQCustomersApi*apiInstance = [[SQCustomersApi alloc] init];

// UpdateCustomer
[apiInstance updateCustomerWithCustomerId:customerId
              body:body
          completionHandler: ^(SQUpdateCustomerResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCustomersApi->updateCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***| The ID of the customer to update. | 
 **body** | [**SQUpdateCustomerRequest***](SQUpdateCustomerRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpdateCustomerResponse***](SQUpdateCustomerResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

