# SQInventoryApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batchChangeInventory**](SQInventoryApi.md#batchchangeinventory) | **POST** /v2/inventory/changes/batch-create | BatchChangeInventory
[**batchRetrieveInventoryChanges**](SQInventoryApi.md#batchretrieveinventorychanges) | **POST** /v2/inventory/changes/batch-retrieve | BatchRetrieveInventoryChanges
[**batchRetrieveInventoryCounts**](SQInventoryApi.md#batchretrieveinventorycounts) | **POST** /v2/inventory/counts/batch-retrieve | BatchRetrieveInventoryCounts
[**deprecatedBatchChangeInventory**](SQInventoryApi.md#deprecatedbatchchangeinventory) | **POST** /v2/inventory/batch-change | DeprecatedBatchChangeInventory
[**deprecatedBatchRetrieveInventoryChanges**](SQInventoryApi.md#deprecatedbatchretrieveinventorychanges) | **POST** /v2/inventory/batch-retrieve-changes | DeprecatedBatchRetrieveInventoryChanges
[**deprecatedBatchRetrieveInventoryCounts**](SQInventoryApi.md#deprecatedbatchretrieveinventorycounts) | **POST** /v2/inventory/batch-retrieve-counts | DeprecatedBatchRetrieveInventoryCounts
[**deprecatedRetrieveInventoryAdjustment**](SQInventoryApi.md#deprecatedretrieveinventoryadjustment) | **GET** /v2/inventory/adjustment/{adjustment_id} | DeprecatedRetrieveInventoryAdjustment
[**deprecatedRetrieveInventoryPhysicalCount**](SQInventoryApi.md#deprecatedretrieveinventoryphysicalcount) | **GET** /v2/inventory/physical-count/{physical_count_id} | DeprecatedRetrieveInventoryPhysicalCount
[**retrieveInventoryAdjustment**](SQInventoryApi.md#retrieveinventoryadjustment) | **GET** /v2/inventory/adjustments/{adjustment_id} | RetrieveInventoryAdjustment
[**retrieveInventoryChanges**](SQInventoryApi.md#retrieveinventorychanges) | **GET** /v2/inventory/{catalog_object_id}/changes | RetrieveInventoryChanges
[**retrieveInventoryCount**](SQInventoryApi.md#retrieveinventorycount) | **GET** /v2/inventory/{catalog_object_id} | RetrieveInventoryCount
[**retrieveInventoryPhysicalCount**](SQInventoryApi.md#retrieveinventoryphysicalcount) | **GET** /v2/inventory/physical-counts/{physical_count_id} | RetrieveInventoryPhysicalCount
[**retrieveInventoryTransfer**](SQInventoryApi.md#retrieveinventorytransfer) | **GET** /v2/inventory/transfers/{transfer_id} | RetrieveInventoryTransfer


# **batchChangeInventory**
```objc
-(NSURLSessionTask*) batchChangeInventoryWithBody: (SQBatchChangeInventoryRequest*) body
        completionHandler: (void (^)(SQBatchChangeInventoryResponse* output, NSError* error)) handler;
```

BatchChangeInventory

Applies adjustments and counts to the provided item quantities.  On success: returns the current calculated counts for all objects referenced in the request. On failure: returns a list of related errors.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQBatchChangeInventoryRequest* body = [[SQBatchChangeInventoryRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQInventoryApi*apiInstance = [[SQInventoryApi alloc] init];

// BatchChangeInventory
[apiInstance batchChangeInventoryWithBody:body
          completionHandler: ^(SQBatchChangeInventoryResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQInventoryApi->batchChangeInventory: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQBatchChangeInventoryRequest***](SQBatchChangeInventoryRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQBatchChangeInventoryResponse***](SQBatchChangeInventoryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **batchRetrieveInventoryChanges**
```objc
-(NSURLSessionTask*) batchRetrieveInventoryChangesWithBody: (SQBatchRetrieveInventoryChangesRequest*) body
        completionHandler: (void (^)(SQBatchRetrieveInventoryChangesResponse* output, NSError* error)) handler;
```

BatchRetrieveInventoryChanges

Returns historical physical counts and adjustments based on the provided filter criteria.  Results are paginated and sorted in ascending order according their `occurred_at` timestamp (oldest first).  BatchRetrieveInventoryChanges is a catch-all query endpoint for queries that cannot be handled by other, simpler endpoints.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQBatchRetrieveInventoryChangesRequest* body = [[SQBatchRetrieveInventoryChangesRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQInventoryApi*apiInstance = [[SQInventoryApi alloc] init];

// BatchRetrieveInventoryChanges
[apiInstance batchRetrieveInventoryChangesWithBody:body
          completionHandler: ^(SQBatchRetrieveInventoryChangesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQInventoryApi->batchRetrieveInventoryChanges: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQBatchRetrieveInventoryChangesRequest***](SQBatchRetrieveInventoryChangesRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQBatchRetrieveInventoryChangesResponse***](SQBatchRetrieveInventoryChangesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **batchRetrieveInventoryCounts**
```objc
-(NSURLSessionTask*) batchRetrieveInventoryCountsWithBody: (SQBatchRetrieveInventoryCountsRequest*) body
        completionHandler: (void (^)(SQBatchRetrieveInventoryCountsResponse* output, NSError* error)) handler;
```

BatchRetrieveInventoryCounts

Returns current counts for the provided [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject)s at the requested [Location](https://developer.squareup.com/reference/square_2023-10-18/objects/Location)s.  Results are paginated and sorted in descending order according to their `calculated_at` timestamp (newest first).  When `updated_after` is specified, only counts that have changed since that time (based on the server timestamp for the most recent change) are returned. This allows clients to perform a \"sync\" operation, for example in response to receiving a Webhook notification.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQBatchRetrieveInventoryCountsRequest* body = [[SQBatchRetrieveInventoryCountsRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQInventoryApi*apiInstance = [[SQInventoryApi alloc] init];

// BatchRetrieveInventoryCounts
[apiInstance batchRetrieveInventoryCountsWithBody:body
          completionHandler: ^(SQBatchRetrieveInventoryCountsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQInventoryApi->batchRetrieveInventoryCounts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQBatchRetrieveInventoryCountsRequest***](SQBatchRetrieveInventoryCountsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQBatchRetrieveInventoryCountsResponse***](SQBatchRetrieveInventoryCountsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deprecatedBatchChangeInventory**
```objc
-(NSURLSessionTask*) deprecatedBatchChangeInventoryWithBody: (SQBatchChangeInventoryRequest*) body
        completionHandler: (void (^)(SQBatchChangeInventoryResponse* output, NSError* error)) handler;
```

DeprecatedBatchChangeInventory

Deprecated version of [BatchChangeInventory](https://developer.squareup.com/reference/square_2023-10-18/inventory-api/batch-change-inventory) after the endpoint URL is updated to conform to the standard convention.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQBatchChangeInventoryRequest* body = [[SQBatchChangeInventoryRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQInventoryApi*apiInstance = [[SQInventoryApi alloc] init];

// DeprecatedBatchChangeInventory
[apiInstance deprecatedBatchChangeInventoryWithBody:body
          completionHandler: ^(SQBatchChangeInventoryResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQInventoryApi->deprecatedBatchChangeInventory: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQBatchChangeInventoryRequest***](SQBatchChangeInventoryRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQBatchChangeInventoryResponse***](SQBatchChangeInventoryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deprecatedBatchRetrieveInventoryChanges**
```objc
-(NSURLSessionTask*) deprecatedBatchRetrieveInventoryChangesWithBody: (SQBatchRetrieveInventoryChangesRequest*) body
        completionHandler: (void (^)(SQBatchRetrieveInventoryChangesResponse* output, NSError* error)) handler;
```

DeprecatedBatchRetrieveInventoryChanges

Deprecated version of [BatchRetrieveInventoryChanges](https://developer.squareup.com/reference/square_2023-10-18/inventory-api/batch-retrieve-inventory-changes) after the endpoint URL is updated to conform to the standard convention.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQBatchRetrieveInventoryChangesRequest* body = [[SQBatchRetrieveInventoryChangesRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQInventoryApi*apiInstance = [[SQInventoryApi alloc] init];

// DeprecatedBatchRetrieveInventoryChanges
[apiInstance deprecatedBatchRetrieveInventoryChangesWithBody:body
          completionHandler: ^(SQBatchRetrieveInventoryChangesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQInventoryApi->deprecatedBatchRetrieveInventoryChanges: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQBatchRetrieveInventoryChangesRequest***](SQBatchRetrieveInventoryChangesRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQBatchRetrieveInventoryChangesResponse***](SQBatchRetrieveInventoryChangesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deprecatedBatchRetrieveInventoryCounts**
```objc
-(NSURLSessionTask*) deprecatedBatchRetrieveInventoryCountsWithBody: (SQBatchRetrieveInventoryCountsRequest*) body
        completionHandler: (void (^)(SQBatchRetrieveInventoryCountsResponse* output, NSError* error)) handler;
```

DeprecatedBatchRetrieveInventoryCounts

Deprecated version of [BatchRetrieveInventoryCounts](https://developer.squareup.com/reference/square_2023-10-18/inventory-api/batch-retrieve-inventory-counts) after the endpoint URL is updated to conform to the standard convention.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQBatchRetrieveInventoryCountsRequest* body = [[SQBatchRetrieveInventoryCountsRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQInventoryApi*apiInstance = [[SQInventoryApi alloc] init];

// DeprecatedBatchRetrieveInventoryCounts
[apiInstance deprecatedBatchRetrieveInventoryCountsWithBody:body
          completionHandler: ^(SQBatchRetrieveInventoryCountsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQInventoryApi->deprecatedBatchRetrieveInventoryCounts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQBatchRetrieveInventoryCountsRequest***](SQBatchRetrieveInventoryCountsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQBatchRetrieveInventoryCountsResponse***](SQBatchRetrieveInventoryCountsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deprecatedRetrieveInventoryAdjustment**
```objc
-(NSURLSessionTask*) deprecatedRetrieveInventoryAdjustmentWithAdjustmentId: (NSString*) adjustmentId
        completionHandler: (void (^)(SQRetrieveInventoryAdjustmentResponse* output, NSError* error)) handler;
```

DeprecatedRetrieveInventoryAdjustment

Deprecated version of [RetrieveInventoryAdjustment](https://developer.squareup.com/reference/square_2023-10-18/inventory-api/retrieve-inventory-adjustment) after the endpoint URL is updated to conform to the standard convention.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* adjustmentId = @"adjustmentId_example"; // ID of the [InventoryAdjustment](https://developer.squareup.com/reference/square_2023-10-18/objects/InventoryAdjustment) to retrieve.

SQInventoryApi*apiInstance = [[SQInventoryApi alloc] init];

// DeprecatedRetrieveInventoryAdjustment
[apiInstance deprecatedRetrieveInventoryAdjustmentWithAdjustmentId:adjustmentId
          completionHandler: ^(SQRetrieveInventoryAdjustmentResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQInventoryApi->deprecatedRetrieveInventoryAdjustment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adjustmentId** | **NSString***| ID of the [InventoryAdjustment](https://developer.squareup.com/reference/square_2023-10-18/objects/InventoryAdjustment) to retrieve. | 

### Return type

[**SQRetrieveInventoryAdjustmentResponse***](SQRetrieveInventoryAdjustmentResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deprecatedRetrieveInventoryPhysicalCount**
```objc
-(NSURLSessionTask*) deprecatedRetrieveInventoryPhysicalCountWithPhysicalCountId: (NSString*) physicalCountId
        completionHandler: (void (^)(SQRetrieveInventoryPhysicalCountResponse* output, NSError* error)) handler;
```

DeprecatedRetrieveInventoryPhysicalCount

Deprecated version of [RetrieveInventoryPhysicalCount](https://developer.squareup.com/reference/square_2023-10-18/inventory-api/retrieve-inventory-physical-count) after the endpoint URL is updated to conform to the standard convention.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* physicalCountId = @"physicalCountId_example"; // ID of the [InventoryPhysicalCount](https://developer.squareup.com/reference/square_2023-10-18/objects/InventoryPhysicalCount) to retrieve.

SQInventoryApi*apiInstance = [[SQInventoryApi alloc] init];

// DeprecatedRetrieveInventoryPhysicalCount
[apiInstance deprecatedRetrieveInventoryPhysicalCountWithPhysicalCountId:physicalCountId
          completionHandler: ^(SQRetrieveInventoryPhysicalCountResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQInventoryApi->deprecatedRetrieveInventoryPhysicalCount: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **physicalCountId** | **NSString***| ID of the [InventoryPhysicalCount](https://developer.squareup.com/reference/square_2023-10-18/objects/InventoryPhysicalCount) to retrieve. | 

### Return type

[**SQRetrieveInventoryPhysicalCountResponse***](SQRetrieveInventoryPhysicalCountResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveInventoryAdjustment**
```objc
-(NSURLSessionTask*) retrieveInventoryAdjustmentWithAdjustmentId: (NSString*) adjustmentId
        completionHandler: (void (^)(SQRetrieveInventoryAdjustmentResponse* output, NSError* error)) handler;
```

RetrieveInventoryAdjustment

Returns the [InventoryAdjustment](https://developer.squareup.com/reference/square_2023-10-18/objects/InventoryAdjustment) object with the provided `adjustment_id`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* adjustmentId = @"adjustmentId_example"; // ID of the [InventoryAdjustment](https://developer.squareup.com/reference/square_2023-10-18/objects/InventoryAdjustment) to retrieve.

SQInventoryApi*apiInstance = [[SQInventoryApi alloc] init];

// RetrieveInventoryAdjustment
[apiInstance retrieveInventoryAdjustmentWithAdjustmentId:adjustmentId
          completionHandler: ^(SQRetrieveInventoryAdjustmentResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQInventoryApi->retrieveInventoryAdjustment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adjustmentId** | **NSString***| ID of the [InventoryAdjustment](https://developer.squareup.com/reference/square_2023-10-18/objects/InventoryAdjustment) to retrieve. | 

### Return type

[**SQRetrieveInventoryAdjustmentResponse***](SQRetrieveInventoryAdjustmentResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveInventoryChanges**
```objc
-(NSURLSessionTask*) retrieveInventoryChangesWithCatalogObjectId: (NSString*) catalogObjectId
    locationIds: (NSString*) locationIds
    cursor: (NSString*) cursor
        completionHandler: (void (^)(SQRetrieveInventoryChangesResponse* output, NSError* error)) handler;
```

RetrieveInventoryChanges

Returns a set of physical counts and inventory adjustments for the provided [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject) at the requested [Location](https://developer.squareup.com/reference/square_2023-10-18/objects/Location)s.  You can achieve the same result by calling [BatchRetrieveInventoryChanges](https://developer.squareup.com/reference/square_2023-10-18/inventory-api/batch-retrieve-inventory-changes) and having the `catalog_object_ids` list contain a single element of the `CatalogObject` ID.  Results are paginated and sorted in descending order according to their `occurred_at` timestamp (newest first).  There are no limits on how far back the caller can page. This endpoint can be used to display recent changes for a specific item. For more sophisticated queries, use a batch endpoint.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* catalogObjectId = @"catalogObjectId_example"; // ID of the [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject) to retrieve.
NSString* locationIds = @"locationIds_example"; // The [Location](https://developer.squareup.com/reference/square_2023-10-18/objects/Location) IDs to look up as a comma-separated list. An empty list queries all locations. (optional)
NSString* cursor = @"cursor_example"; // A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for the original query.  See the [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination) guide for more information. (optional)

SQInventoryApi*apiInstance = [[SQInventoryApi alloc] init];

// RetrieveInventoryChanges
[apiInstance retrieveInventoryChangesWithCatalogObjectId:catalogObjectId
              locationIds:locationIds
              cursor:cursor
          completionHandler: ^(SQRetrieveInventoryChangesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQInventoryApi->retrieveInventoryChanges: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalogObjectId** | **NSString***| ID of the [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject) to retrieve. | 
 **locationIds** | **NSString***| The [Location](https://developer.squareup.com/reference/square_2023-10-18/objects/Location) IDs to look up as a comma-separated list. An empty list queries all locations. | [optional] 
 **cursor** | **NSString***| A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for the original query.  See the [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination) guide for more information. | [optional] 

### Return type

[**SQRetrieveInventoryChangesResponse***](SQRetrieveInventoryChangesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveInventoryCount**
```objc
-(NSURLSessionTask*) retrieveInventoryCountWithCatalogObjectId: (NSString*) catalogObjectId
    locationIds: (NSString*) locationIds
    cursor: (NSString*) cursor
        completionHandler: (void (^)(SQRetrieveInventoryCountResponse* output, NSError* error)) handler;
```

RetrieveInventoryCount

Retrieves the current calculated stock count for a given [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject) at a given set of [Location](https://developer.squareup.com/reference/square_2023-10-18/objects/Location)s. Responses are paginated and unsorted. For more sophisticated queries, use a batch endpoint.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* catalogObjectId = @"catalogObjectId_example"; // ID of the [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject) to retrieve.
NSString* locationIds = @"locationIds_example"; // The [Location](https://developer.squareup.com/reference/square_2023-10-18/objects/Location) IDs to look up as a comma-separated list. An empty list queries all locations. (optional)
NSString* cursor = @"cursor_example"; // A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for the original query.  See the [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination) guide for more information. (optional)

SQInventoryApi*apiInstance = [[SQInventoryApi alloc] init];

// RetrieveInventoryCount
[apiInstance retrieveInventoryCountWithCatalogObjectId:catalogObjectId
              locationIds:locationIds
              cursor:cursor
          completionHandler: ^(SQRetrieveInventoryCountResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQInventoryApi->retrieveInventoryCount: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalogObjectId** | **NSString***| ID of the [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject) to retrieve. | 
 **locationIds** | **NSString***| The [Location](https://developer.squareup.com/reference/square_2023-10-18/objects/Location) IDs to look up as a comma-separated list. An empty list queries all locations. | [optional] 
 **cursor** | **NSString***| A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for the original query.  See the [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination) guide for more information. | [optional] 

### Return type

[**SQRetrieveInventoryCountResponse***](SQRetrieveInventoryCountResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveInventoryPhysicalCount**
```objc
-(NSURLSessionTask*) retrieveInventoryPhysicalCountWithPhysicalCountId: (NSString*) physicalCountId
        completionHandler: (void (^)(SQRetrieveInventoryPhysicalCountResponse* output, NSError* error)) handler;
```

RetrieveInventoryPhysicalCount

Returns the [InventoryPhysicalCount](https://developer.squareup.com/reference/square_2023-10-18/objects/InventoryPhysicalCount) object with the provided `physical_count_id`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* physicalCountId = @"physicalCountId_example"; // ID of the [InventoryPhysicalCount](https://developer.squareup.com/reference/square_2023-10-18/objects/InventoryPhysicalCount) to retrieve.

SQInventoryApi*apiInstance = [[SQInventoryApi alloc] init];

// RetrieveInventoryPhysicalCount
[apiInstance retrieveInventoryPhysicalCountWithPhysicalCountId:physicalCountId
          completionHandler: ^(SQRetrieveInventoryPhysicalCountResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQInventoryApi->retrieveInventoryPhysicalCount: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **physicalCountId** | **NSString***| ID of the [InventoryPhysicalCount](https://developer.squareup.com/reference/square_2023-10-18/objects/InventoryPhysicalCount) to retrieve. | 

### Return type

[**SQRetrieveInventoryPhysicalCountResponse***](SQRetrieveInventoryPhysicalCountResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveInventoryTransfer**
```objc
-(NSURLSessionTask*) retrieveInventoryTransferWithTransferId: (NSString*) transferId
        completionHandler: (void (^)(SQRetrieveInventoryTransferResponse* output, NSError* error)) handler;
```

RetrieveInventoryTransfer

Returns the [InventoryTransfer](https://developer.squareup.com/reference/square_2023-10-18/objects/InventoryTransfer) object with the provided `transfer_id`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* transferId = @"transferId_example"; // ID of the [InventoryTransfer](https://developer.squareup.com/reference/square_2023-10-18/objects/InventoryTransfer) to retrieve.

SQInventoryApi*apiInstance = [[SQInventoryApi alloc] init];

// RetrieveInventoryTransfer
[apiInstance retrieveInventoryTransferWithTransferId:transferId
          completionHandler: ^(SQRetrieveInventoryTransferResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQInventoryApi->retrieveInventoryTransfer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transferId** | **NSString***| ID of the [InventoryTransfer](https://developer.squareup.com/reference/square_2023-10-18/objects/InventoryTransfer) to retrieve. | 

### Return type

[**SQRetrieveInventoryTransferResponse***](SQRetrieveInventoryTransferResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

