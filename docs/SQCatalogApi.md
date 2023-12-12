# SQCatalogApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batchDeleteCatalogObjects**](SQCatalogApi.md#batchdeletecatalogobjects) | **POST** /v2/catalog/batch-delete | BatchDeleteCatalogObjects
[**batchRetrieveCatalogObjects**](SQCatalogApi.md#batchretrievecatalogobjects) | **POST** /v2/catalog/batch-retrieve | BatchRetrieveCatalogObjects
[**batchUpsertCatalogObjects**](SQCatalogApi.md#batchupsertcatalogobjects) | **POST** /v2/catalog/batch-upsert | BatchUpsertCatalogObjects
[**catalogInfo**](SQCatalogApi.md#cataloginfo) | **GET** /v2/catalog/info | CatalogInfo
[**deleteCatalogObject**](SQCatalogApi.md#deletecatalogobject) | **DELETE** /v2/catalog/object/{object_id} | DeleteCatalogObject
[**listCatalog**](SQCatalogApi.md#listcatalog) | **GET** /v2/catalog/list | ListCatalog
[**retrieveCatalogObject**](SQCatalogApi.md#retrievecatalogobject) | **GET** /v2/catalog/object/{object_id} | RetrieveCatalogObject
[**searchCatalogItems**](SQCatalogApi.md#searchcatalogitems) | **POST** /v2/catalog/search-catalog-items | SearchCatalogItems
[**searchCatalogObjects**](SQCatalogApi.md#searchcatalogobjects) | **POST** /v2/catalog/search | SearchCatalogObjects
[**updateItemModifierLists**](SQCatalogApi.md#updateitemmodifierlists) | **POST** /v2/catalog/update-item-modifier-lists | UpdateItemModifierLists
[**updateItemTaxes**](SQCatalogApi.md#updateitemtaxes) | **POST** /v2/catalog/update-item-taxes | UpdateItemTaxes
[**upsertCatalogObject**](SQCatalogApi.md#upsertcatalogobject) | **POST** /v2/catalog/object | UpsertCatalogObject


# **batchDeleteCatalogObjects**
```objc
-(NSURLSessionTask*) batchDeleteCatalogObjectsWithBody: (SQBatchDeleteCatalogObjectsRequest*) body
        completionHandler: (void (^)(SQBatchDeleteCatalogObjectsResponse* output, NSError* error)) handler;
```

BatchDeleteCatalogObjects

Deletes a set of [CatalogItem](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogItem)s based on the provided list of target IDs and returns a set of successfully deleted IDs in the response. Deletion is a cascading event such that all children of the targeted object are also deleted. For example, deleting a CatalogItem will also delete all of its [CatalogItemVariation](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogItemVariation) children.  `BatchDeleteCatalogObjects` succeeds even if only a portion of the targeted IDs can be deleted. The response will only include IDs that were actually deleted.  To ensure consistency, only one delete request is processed at a time per seller account.   While one (batch or non-batch) delete request is being processed, other (batched and non-batched)  delete requests are rejected with the `429` error code.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQBatchDeleteCatalogObjectsRequest* body = [[SQBatchDeleteCatalogObjectsRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQCatalogApi*apiInstance = [[SQCatalogApi alloc] init];

// BatchDeleteCatalogObjects
[apiInstance batchDeleteCatalogObjectsWithBody:body
          completionHandler: ^(SQBatchDeleteCatalogObjectsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCatalogApi->batchDeleteCatalogObjects: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQBatchDeleteCatalogObjectsRequest***](SQBatchDeleteCatalogObjectsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQBatchDeleteCatalogObjectsResponse***](SQBatchDeleteCatalogObjectsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **batchRetrieveCatalogObjects**
```objc
-(NSURLSessionTask*) batchRetrieveCatalogObjectsWithBody: (SQBatchRetrieveCatalogObjectsRequest*) body
        completionHandler: (void (^)(SQBatchRetrieveCatalogObjectsResponse* output, NSError* error)) handler;
```

BatchRetrieveCatalogObjects

Returns a set of objects based on the provided ID. Each [CatalogItem](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogItem) returned in the set includes all of its child information including: all of its [CatalogItemVariation](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogItemVariation) objects, references to its [CatalogModifierList](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogModifierList) objects, and the ids of any [CatalogTax](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogTax) objects that apply to it.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQBatchRetrieveCatalogObjectsRequest* body = [[SQBatchRetrieveCatalogObjectsRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQCatalogApi*apiInstance = [[SQCatalogApi alloc] init];

// BatchRetrieveCatalogObjects
[apiInstance batchRetrieveCatalogObjectsWithBody:body
          completionHandler: ^(SQBatchRetrieveCatalogObjectsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCatalogApi->batchRetrieveCatalogObjects: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQBatchRetrieveCatalogObjectsRequest***](SQBatchRetrieveCatalogObjectsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQBatchRetrieveCatalogObjectsResponse***](SQBatchRetrieveCatalogObjectsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **batchUpsertCatalogObjects**
```objc
-(NSURLSessionTask*) batchUpsertCatalogObjectsWithBody: (SQBatchUpsertCatalogObjectsRequest*) body
        completionHandler: (void (^)(SQBatchUpsertCatalogObjectsResponse* output, NSError* error)) handler;
```

BatchUpsertCatalogObjects

Creates or updates up to 10,000 target objects based on the provided list of objects. The target objects are grouped into batches and each batch is inserted/updated in an all-or-nothing manner. If an object within a batch is malformed in some way, or violates a database constraint, the entire batch containing that item will be disregarded. However, other batches in the same request may still succeed. Each batch may contain up to 1,000 objects, and batches will be processed in order as long as the total object count for the request (items, variations, modifier lists, discounts, and taxes) is no more than 10,000.  To ensure consistency, only one update request is processed at a time per seller account.   While one (batch or non-batch) update request is being processed, other (batched and non-batched)  update requests are rejected with the `429` error code.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQBatchUpsertCatalogObjectsRequest* body = [[SQBatchUpsertCatalogObjectsRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQCatalogApi*apiInstance = [[SQCatalogApi alloc] init];

// BatchUpsertCatalogObjects
[apiInstance batchUpsertCatalogObjectsWithBody:body
          completionHandler: ^(SQBatchUpsertCatalogObjectsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCatalogApi->batchUpsertCatalogObjects: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQBatchUpsertCatalogObjectsRequest***](SQBatchUpsertCatalogObjectsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQBatchUpsertCatalogObjectsResponse***](SQBatchUpsertCatalogObjectsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **catalogInfo**
```objc
-(NSURLSessionTask*) catalogInfoWithCompletionHandler: 
        (void (^)(SQCatalogInfoResponse* output, NSError* error)) handler;
```

CatalogInfo

Retrieves information about the Square Catalog API, such as batch size limits that can be used by the `BatchUpsertCatalogObjects` endpoint.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];



SQCatalogApi*apiInstance = [[SQCatalogApi alloc] init];

// CatalogInfo
[apiInstance catalogInfoWithCompletionHandler: 
          ^(SQCatalogInfoResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCatalogApi->catalogInfo: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SQCatalogInfoResponse***](SQCatalogInfoResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCatalogObject**
```objc
-(NSURLSessionTask*) deleteCatalogObjectWithObjectId: (NSString*) objectId
        completionHandler: (void (^)(SQDeleteCatalogObjectResponse* output, NSError* error)) handler;
```

DeleteCatalogObject

Deletes a single [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject) based on the provided ID and returns the set of successfully deleted IDs in the response. Deletion is a cascading event such that all children of the targeted object are also deleted. For example, deleting a [CatalogItem](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogItem) will also delete all of its [CatalogItemVariation](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogItemVariation) children.  To ensure consistency, only one delete request is processed at a time per seller account.   While one (batch or non-batch) delete request is being processed, other (batched and non-batched)  delete requests are rejected with the `429` error code.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* objectId = @"objectId_example"; // The ID of the catalog object to be deleted. When an object is deleted, other objects in the graph that depend on that object will be deleted as well (for example, deleting a catalog item will delete its catalog item variations).

SQCatalogApi*apiInstance = [[SQCatalogApi alloc] init];

// DeleteCatalogObject
[apiInstance deleteCatalogObjectWithObjectId:objectId
          completionHandler: ^(SQDeleteCatalogObjectResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCatalogApi->deleteCatalogObject: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **objectId** | **NSString***| The ID of the catalog object to be deleted. When an object is deleted, other objects in the graph that depend on that object will be deleted as well (for example, deleting a catalog item will delete its catalog item variations). | 

### Return type

[**SQDeleteCatalogObjectResponse***](SQDeleteCatalogObjectResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCatalog**
```objc
-(NSURLSessionTask*) listCatalogWithCursor: (NSString*) cursor
    types: (NSString*) types
    catalogVersion: (NSNumber*) catalogVersion
        completionHandler: (void (^)(SQListCatalogResponse* output, NSError* error)) handler;
```

ListCatalog

Returns a list of all [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject)s of the specified types in the catalog.   The `types` parameter is specified as a comma-separated list of the [CatalogObjectType](https://developer.squareup.com/reference/square_2023-10-18/enums/CatalogObjectType) values,  for example, \"`ITEM`, `ITEM_VARIATION`, `MODIFIER`, `MODIFIER_LIST`, `CATEGORY`, `DISCOUNT`, `TAX`, `IMAGE`\".  __Important:__ ListCatalog does not return deleted catalog items. To retrieve deleted catalog items, use [SearchCatalogObjects](https://developer.squareup.com/reference/square_2023-10-18/catalog-api/search-catalog-objects) and set the `include_deleted_objects` attribute value to `true`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* cursor = @"cursor_example"; // The pagination cursor returned in the previous response. Leave unset for an initial request. The page size is currently set to be 100. See [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination) for more information. (optional)
NSString* types = @"types_example"; // An optional case-insensitive, comma-separated list of object types to retrieve.  The valid values are defined in the [CatalogObjectType](https://developer.squareup.com/reference/square_2023-10-18/enums/CatalogObjectType) enum, for example, `ITEM`, `ITEM_VARIATION`, `CATEGORY`, `DISCOUNT`, `TAX`, `MODIFIER`, `MODIFIER_LIST`, `IMAGE`, etc.  If this is unspecified, the operation returns objects of all the top level types at the version of the Square API used to make the request. Object types that are nested onto other object types are not included in the defaults.  At the current API version the default object types are: ITEM, CATEGORY, TAX, DISCOUNT, MODIFIER_LIST,  PRICING_RULE, PRODUCT_SET, TIME_PERIOD, MEASUREMENT_UNIT, SUBSCRIPTION_PLAN, ITEM_OPTION, CUSTOM_ATTRIBUTE_DEFINITION, QUICK_AMOUNT_SETTINGS. (optional)
NSNumber* catalogVersion = @789; // The specific version of the catalog objects to be included in the response. This allows you to retrieve historical versions of objects. The specified version value is matched against the [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject)s' `version` attribute.  If not included, results will be from the current version of the catalog. (optional)

SQCatalogApi*apiInstance = [[SQCatalogApi alloc] init];

// ListCatalog
[apiInstance listCatalogWithCursor:cursor
              types:types
              catalogVersion:catalogVersion
          completionHandler: ^(SQListCatalogResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCatalogApi->listCatalog: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **NSString***| The pagination cursor returned in the previous response. Leave unset for an initial request. The page size is currently set to be 100. See [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination) for more information. | [optional] 
 **types** | **NSString***| An optional case-insensitive, comma-separated list of object types to retrieve.  The valid values are defined in the [CatalogObjectType](https://developer.squareup.com/reference/square_2023-10-18/enums/CatalogObjectType) enum, for example, &#x60;ITEM&#x60;, &#x60;ITEM_VARIATION&#x60;, &#x60;CATEGORY&#x60;, &#x60;DISCOUNT&#x60;, &#x60;TAX&#x60;, &#x60;MODIFIER&#x60;, &#x60;MODIFIER_LIST&#x60;, &#x60;IMAGE&#x60;, etc.  If this is unspecified, the operation returns objects of all the top level types at the version of the Square API used to make the request. Object types that are nested onto other object types are not included in the defaults.  At the current API version the default object types are: ITEM, CATEGORY, TAX, DISCOUNT, MODIFIER_LIST,  PRICING_RULE, PRODUCT_SET, TIME_PERIOD, MEASUREMENT_UNIT, SUBSCRIPTION_PLAN, ITEM_OPTION, CUSTOM_ATTRIBUTE_DEFINITION, QUICK_AMOUNT_SETTINGS. | [optional] 
 **catalogVersion** | **NSNumber***| The specific version of the catalog objects to be included in the response. This allows you to retrieve historical versions of objects. The specified version value is matched against the [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject)s&#39; &#x60;version&#x60; attribute.  If not included, results will be from the current version of the catalog. | [optional] 

### Return type

[**SQListCatalogResponse***](SQListCatalogResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveCatalogObject**
```objc
-(NSURLSessionTask*) retrieveCatalogObjectWithObjectId: (NSString*) objectId
    includeRelatedObjects: (NSNumber*) includeRelatedObjects
    catalogVersion: (NSNumber*) catalogVersion
        completionHandler: (void (^)(SQRetrieveCatalogObjectResponse* output, NSError* error)) handler;
```

RetrieveCatalogObject

Returns a single [CatalogItem](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogItem) as a [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject) based on the provided ID. The returned object includes all of the relevant [CatalogItem](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogItem) information including: [CatalogItemVariation](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogItemVariation) children, references to its [CatalogModifierList](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogModifierList) objects, and the ids of any [CatalogTax](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogTax) objects that apply to it.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* objectId = @"objectId_example"; // The object ID of any type of catalog objects to be retrieved.
NSNumber* includeRelatedObjects = @true; // If `true`, the response will include additional objects that are related to the requested objects. Related objects are defined as any objects referenced by ID by the results in the `objects` field of the response. These objects are put in the `related_objects` field. Setting this to `true` is helpful when the objects are needed for immediate display to a user. This process only goes one level deep. Objects referenced by the related objects will not be included. For example,  if the `objects` field of the response contains a CatalogItem, its associated CatalogCategory objects, CatalogTax objects, CatalogImage objects and CatalogModifierLists will be returned in the `related_objects` field of the response. If the `objects` field of the response contains a CatalogItemVariation, its parent CatalogItem will be returned in the `related_objects` field of the response.  Default value: `false` (optional)
NSNumber* catalogVersion = @789; // Requests objects as of a specific version of the catalog. This allows you to retrieve historical versions of objects. The value to retrieve a specific version of an object can be found in the version field of [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject)s. If not included, results will be from the current version of the catalog. (optional)

SQCatalogApi*apiInstance = [[SQCatalogApi alloc] init];

// RetrieveCatalogObject
[apiInstance retrieveCatalogObjectWithObjectId:objectId
              includeRelatedObjects:includeRelatedObjects
              catalogVersion:catalogVersion
          completionHandler: ^(SQRetrieveCatalogObjectResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCatalogApi->retrieveCatalogObject: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **objectId** | **NSString***| The object ID of any type of catalog objects to be retrieved. | 
 **includeRelatedObjects** | **NSNumber***| If &#x60;true&#x60;, the response will include additional objects that are related to the requested objects. Related objects are defined as any objects referenced by ID by the results in the &#x60;objects&#x60; field of the response. These objects are put in the &#x60;related_objects&#x60; field. Setting this to &#x60;true&#x60; is helpful when the objects are needed for immediate display to a user. This process only goes one level deep. Objects referenced by the related objects will not be included. For example,  if the &#x60;objects&#x60; field of the response contains a CatalogItem, its associated CatalogCategory objects, CatalogTax objects, CatalogImage objects and CatalogModifierLists will be returned in the &#x60;related_objects&#x60; field of the response. If the &#x60;objects&#x60; field of the response contains a CatalogItemVariation, its parent CatalogItem will be returned in the &#x60;related_objects&#x60; field of the response.  Default value: &#x60;false&#x60; | [optional] 
 **catalogVersion** | **NSNumber***| Requests objects as of a specific version of the catalog. This allows you to retrieve historical versions of objects. The value to retrieve a specific version of an object can be found in the version field of [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject)s. If not included, results will be from the current version of the catalog. | [optional] 

### Return type

[**SQRetrieveCatalogObjectResponse***](SQRetrieveCatalogObjectResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchCatalogItems**
```objc
-(NSURLSessionTask*) searchCatalogItemsWithBody: (SQSearchCatalogItemsRequest*) body
        completionHandler: (void (^)(SQSearchCatalogItemsResponse* output, NSError* error)) handler;
```

SearchCatalogItems

Searches for catalog items or item variations by matching supported search attribute values, including custom attribute values, against one or more of the specified query filters.  This (`SearchCatalogItems`) endpoint differs from the [SearchCatalogObjects](https://developer.squareup.com/reference/square_2023-10-18/catalog-api/search-catalog-objects) endpoint in the following aspects:  - `SearchCatalogItems` can only search for items or item variations, whereas `SearchCatalogObjects` can search for any type of catalog objects. - `SearchCatalogItems` supports the custom attribute query filters to return items or item variations that contain custom attribute values, where `SearchCatalogObjects` does not. - `SearchCatalogItems` does not support the `include_deleted_objects` filter to search for deleted items or item variations, whereas `SearchCatalogObjects` does. - The both endpoints use different call conventions, including the query filter formats.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQSearchCatalogItemsRequest* body = [[SQSearchCatalogItemsRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQCatalogApi*apiInstance = [[SQCatalogApi alloc] init];

// SearchCatalogItems
[apiInstance searchCatalogItemsWithBody:body
          completionHandler: ^(SQSearchCatalogItemsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCatalogApi->searchCatalogItems: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQSearchCatalogItemsRequest***](SQSearchCatalogItemsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQSearchCatalogItemsResponse***](SQSearchCatalogItemsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchCatalogObjects**
```objc
-(NSURLSessionTask*) searchCatalogObjectsWithBody: (SQSearchCatalogObjectsRequest*) body
        completionHandler: (void (^)(SQSearchCatalogObjectsResponse* output, NSError* error)) handler;
```

SearchCatalogObjects

Searches for [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject) of any type by matching supported search attribute values, excluding custom attribute values on items or item variations, against one or more of the specified query filters.  This (`SearchCatalogObjects`) endpoint differs from the [SearchCatalogItems](https://developer.squareup.com/reference/square_2023-10-18/catalog-api/search-catalog-items) endpoint in the following aspects:  - `SearchCatalogItems` can only search for items or item variations, whereas `SearchCatalogObjects` can search for any type of catalog objects. - `SearchCatalogItems` supports the custom attribute query filters to return items or item variations that contain custom attribute values, where `SearchCatalogObjects` does not. - `SearchCatalogItems` does not support the `include_deleted_objects` filter to search for deleted items or item variations, whereas `SearchCatalogObjects` does. - The both endpoints have different call conventions, including the query filter formats.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQSearchCatalogObjectsRequest* body = [[SQSearchCatalogObjectsRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQCatalogApi*apiInstance = [[SQCatalogApi alloc] init];

// SearchCatalogObjects
[apiInstance searchCatalogObjectsWithBody:body
          completionHandler: ^(SQSearchCatalogObjectsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCatalogApi->searchCatalogObjects: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQSearchCatalogObjectsRequest***](SQSearchCatalogObjectsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQSearchCatalogObjectsResponse***](SQSearchCatalogObjectsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateItemModifierLists**
```objc
-(NSURLSessionTask*) updateItemModifierListsWithBody: (SQUpdateItemModifierListsRequest*) body
        completionHandler: (void (^)(SQUpdateItemModifierListsResponse* output, NSError* error)) handler;
```

UpdateItemModifierLists

Updates the [CatalogModifierList](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogModifierList) objects that apply to the targeted [CatalogItem](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogItem) without having to perform an upsert on the entire item.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQUpdateItemModifierListsRequest* body = [[SQUpdateItemModifierListsRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQCatalogApi*apiInstance = [[SQCatalogApi alloc] init];

// UpdateItemModifierLists
[apiInstance updateItemModifierListsWithBody:body
          completionHandler: ^(SQUpdateItemModifierListsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCatalogApi->updateItemModifierLists: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQUpdateItemModifierListsRequest***](SQUpdateItemModifierListsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpdateItemModifierListsResponse***](SQUpdateItemModifierListsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateItemTaxes**
```objc
-(NSURLSessionTask*) updateItemTaxesWithBody: (SQUpdateItemTaxesRequest*) body
        completionHandler: (void (^)(SQUpdateItemTaxesResponse* output, NSError* error)) handler;
```

UpdateItemTaxes

Updates the [CatalogTax](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogTax) objects that apply to the targeted [CatalogItem](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogItem) without having to perform an upsert on the entire item.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQUpdateItemTaxesRequest* body = [[SQUpdateItemTaxesRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQCatalogApi*apiInstance = [[SQCatalogApi alloc] init];

// UpdateItemTaxes
[apiInstance updateItemTaxesWithBody:body
          completionHandler: ^(SQUpdateItemTaxesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCatalogApi->updateItemTaxes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQUpdateItemTaxesRequest***](SQUpdateItemTaxesRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpdateItemTaxesResponse***](SQUpdateItemTaxesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upsertCatalogObject**
```objc
-(NSURLSessionTask*) upsertCatalogObjectWithBody: (SQUpsertCatalogObjectRequest*) body
        completionHandler: (void (^)(SQUpsertCatalogObjectResponse* output, NSError* error)) handler;
```

UpsertCatalogObject

Creates a new or updates the specified [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject).  To ensure consistency, only one update request is processed at a time per seller account.   While one (batch or non-batch) update request is being processed, other (batched and non-batched)  update requests are rejected with the `429` error code.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQUpsertCatalogObjectRequest* body = [[SQUpsertCatalogObjectRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQCatalogApi*apiInstance = [[SQCatalogApi alloc] init];

// UpsertCatalogObject
[apiInstance upsertCatalogObjectWithBody:body
          completionHandler: ^(SQUpsertCatalogObjectResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCatalogApi->upsertCatalogObject: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQUpsertCatalogObjectRequest***](SQUpsertCatalogObjectRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpsertCatalogObjectResponse***](SQUpsertCatalogObjectResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

