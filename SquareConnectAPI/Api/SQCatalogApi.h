#import <Foundation/Foundation.h>
#import "SQBatchDeleteCatalogObjectsRequest.h"
#import "SQBatchDeleteCatalogObjectsResponse.h"
#import "SQBatchRetrieveCatalogObjectsRequest.h"
#import "SQBatchRetrieveCatalogObjectsResponse.h"
#import "SQBatchUpsertCatalogObjectsRequest.h"
#import "SQBatchUpsertCatalogObjectsResponse.h"
#import "SQCatalogInfoResponse.h"
#import "SQDeleteCatalogObjectResponse.h"
#import "SQListCatalogResponse.h"
#import "SQRetrieveCatalogObjectResponse.h"
#import "SQSearchCatalogItemsRequest.h"
#import "SQSearchCatalogItemsResponse.h"
#import "SQSearchCatalogObjectsRequest.h"
#import "SQSearchCatalogObjectsResponse.h"
#import "SQUpdateItemModifierListsRequest.h"
#import "SQUpdateItemModifierListsResponse.h"
#import "SQUpdateItemTaxesRequest.h"
#import "SQUpdateItemTaxesResponse.h"
#import "SQUpsertCatalogObjectRequest.h"
#import "SQUpsertCatalogObjectResponse.h"
#import "SQApi.h"

/**
* Square Connect API
* Client library for accessing the Square Connect APIs
*
* OpenAPI spec version: 2.0
* Contact: developers@squareup.com
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/



@interface SQCatalogApi: NSObject <SQApi>

extern NSString* kSQCatalogApiErrorDomain;
extern NSInteger kSQCatalogApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SQApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// BatchDeleteCatalogObjects
/// Deletes a set of [CatalogItem](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogItem)s based on the provided list of target IDs and returns a set of successfully deleted IDs in the response. Deletion is a cascading event such that all children of the targeted object are also deleted. For example, deleting a CatalogItem will also delete all of its [CatalogItemVariation](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogItemVariation) children.  `BatchDeleteCatalogObjects` succeeds even if only a portion of the targeted IDs can be deleted. The response will only include IDs that were actually deleted.  To ensure consistency, only one delete request is processed at a time per seller account.   While one (batch or non-batch) delete request is being processed, other (batched and non-batched)  delete requests are rejected with the `429` error code.
///
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQBatchDeleteCatalogObjectsResponse*
-(NSURLSessionTask*) batchDeleteCatalogObjectsWithBody: (SQBatchDeleteCatalogObjectsRequest*) body
    completionHandler: (void (^)(SQBatchDeleteCatalogObjectsResponse* output, NSError* error)) handler;


/// BatchRetrieveCatalogObjects
/// Returns a set of objects based on the provided ID. Each [CatalogItem](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogItem) returned in the set includes all of its child information including: all of its [CatalogItemVariation](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogItemVariation) objects, references to its [CatalogModifierList](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogModifierList) objects, and the ids of any [CatalogTax](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogTax) objects that apply to it.
///
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQBatchRetrieveCatalogObjectsResponse*
-(NSURLSessionTask*) batchRetrieveCatalogObjectsWithBody: (SQBatchRetrieveCatalogObjectsRequest*) body
    completionHandler: (void (^)(SQBatchRetrieveCatalogObjectsResponse* output, NSError* error)) handler;


/// BatchUpsertCatalogObjects
/// Creates or updates up to 10,000 target objects based on the provided list of objects. The target objects are grouped into batches and each batch is inserted/updated in an all-or-nothing manner. If an object within a batch is malformed in some way, or violates a database constraint, the entire batch containing that item will be disregarded. However, other batches in the same request may still succeed. Each batch may contain up to 1,000 objects, and batches will be processed in order as long as the total object count for the request (items, variations, modifier lists, discounts, and taxes) is no more than 10,000.  To ensure consistency, only one update request is processed at a time per seller account.   While one (batch or non-batch) update request is being processed, other (batched and non-batched)  update requests are rejected with the `429` error code.
///
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQBatchUpsertCatalogObjectsResponse*
-(NSURLSessionTask*) batchUpsertCatalogObjectsWithBody: (SQBatchUpsertCatalogObjectsRequest*) body
    completionHandler: (void (^)(SQBatchUpsertCatalogObjectsResponse* output, NSError* error)) handler;


/// CatalogInfo
/// Retrieves information about the Square Catalog API, such as batch size limits that can be used by the `BatchUpsertCatalogObjects` endpoint.
///
/// 
///  code:200 message:"Success"
///
/// @return SQCatalogInfoResponse*
-(NSURLSessionTask*) catalogInfoWithCompletionHandler: 
    (void (^)(SQCatalogInfoResponse* output, NSError* error)) handler;


/// DeleteCatalogObject
/// Deletes a single [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject) based on the provided ID and returns the set of successfully deleted IDs in the response. Deletion is a cascading event such that all children of the targeted object are also deleted. For example, deleting a [CatalogItem](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogItem) will also delete all of its [CatalogItemVariation](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogItemVariation) children.  To ensure consistency, only one delete request is processed at a time per seller account.   While one (batch or non-batch) delete request is being processed, other (batched and non-batched)  delete requests are rejected with the `429` error code.
///
/// @param objectId The ID of the catalog object to be deleted. When an object is deleted, other objects in the graph that depend on that object will be deleted as well (for example, deleting a catalog item will delete its catalog item variations).
/// 
///  code:200 message:"Success"
///
/// @return SQDeleteCatalogObjectResponse*
-(NSURLSessionTask*) deleteCatalogObjectWithObjectId: (NSString*) objectId
    completionHandler: (void (^)(SQDeleteCatalogObjectResponse* output, NSError* error)) handler;


/// ListCatalog
/// Returns a list of all [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject)s of the specified types in the catalog.   The `types` parameter is specified as a comma-separated list of the [CatalogObjectType](https://developer.squareup.com/reference/square_2023-10-18/enums/CatalogObjectType) values,  for example, \"`ITEM`, `ITEM_VARIATION`, `MODIFIER`, `MODIFIER_LIST`, `CATEGORY`, `DISCOUNT`, `TAX`, `IMAGE`\".  __Important:__ ListCatalog does not return deleted catalog items. To retrieve deleted catalog items, use [SearchCatalogObjects](https://developer.squareup.com/reference/square_2023-10-18/catalog-api/search-catalog-objects) and set the `include_deleted_objects` attribute value to `true`.
///
/// @param cursor The pagination cursor returned in the previous response. Leave unset for an initial request. The page size is currently set to be 100. See [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination) for more information. (optional)
/// @param types An optional case-insensitive, comma-separated list of object types to retrieve.  The valid values are defined in the [CatalogObjectType](https://developer.squareup.com/reference/square_2023-10-18/enums/CatalogObjectType) enum, for example, &#x60;ITEM&#x60;, &#x60;ITEM_VARIATION&#x60;, &#x60;CATEGORY&#x60;, &#x60;DISCOUNT&#x60;, &#x60;TAX&#x60;, &#x60;MODIFIER&#x60;, &#x60;MODIFIER_LIST&#x60;, &#x60;IMAGE&#x60;, etc.  If this is unspecified, the operation returns objects of all the top level types at the version of the Square API used to make the request. Object types that are nested onto other object types are not included in the defaults.  At the current API version the default object types are: ITEM, CATEGORY, TAX, DISCOUNT, MODIFIER_LIST,  PRICING_RULE, PRODUCT_SET, TIME_PERIOD, MEASUREMENT_UNIT, SUBSCRIPTION_PLAN, ITEM_OPTION, CUSTOM_ATTRIBUTE_DEFINITION, QUICK_AMOUNT_SETTINGS. (optional)
/// @param catalogVersion The specific version of the catalog objects to be included in the response. This allows you to retrieve historical versions of objects. The specified version value is matched against the [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject)s&#39; &#x60;version&#x60; attribute.  If not included, results will be from the current version of the catalog. (optional)
/// 
///  code:200 message:"Success"
///
/// @return SQListCatalogResponse*
-(NSURLSessionTask*) listCatalogWithCursor: (NSString*) cursor
    types: (NSString*) types
    catalogVersion: (NSNumber*) catalogVersion
    completionHandler: (void (^)(SQListCatalogResponse* output, NSError* error)) handler;


/// RetrieveCatalogObject
/// Returns a single [CatalogItem](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogItem) as a [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject) based on the provided ID. The returned object includes all of the relevant [CatalogItem](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogItem) information including: [CatalogItemVariation](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogItemVariation) children, references to its [CatalogModifierList](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogModifierList) objects, and the ids of any [CatalogTax](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogTax) objects that apply to it.
///
/// @param objectId The object ID of any type of catalog objects to be retrieved.
/// @param includeRelatedObjects If &#x60;true&#x60;, the response will include additional objects that are related to the requested objects. Related objects are defined as any objects referenced by ID by the results in the &#x60;objects&#x60; field of the response. These objects are put in the &#x60;related_objects&#x60; field. Setting this to &#x60;true&#x60; is helpful when the objects are needed for immediate display to a user. This process only goes one level deep. Objects referenced by the related objects will not be included. For example,  if the &#x60;objects&#x60; field of the response contains a CatalogItem, its associated CatalogCategory objects, CatalogTax objects, CatalogImage objects and CatalogModifierLists will be returned in the &#x60;related_objects&#x60; field of the response. If the &#x60;objects&#x60; field of the response contains a CatalogItemVariation, its parent CatalogItem will be returned in the &#x60;related_objects&#x60; field of the response.  Default value: &#x60;false&#x60; (optional)
/// @param catalogVersion Requests objects as of a specific version of the catalog. This allows you to retrieve historical versions of objects. The value to retrieve a specific version of an object can be found in the version field of [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject)s. If not included, results will be from the current version of the catalog. (optional)
/// 
///  code:200 message:"Success"
///
/// @return SQRetrieveCatalogObjectResponse*
-(NSURLSessionTask*) retrieveCatalogObjectWithObjectId: (NSString*) objectId
    includeRelatedObjects: (NSNumber*) includeRelatedObjects
    catalogVersion: (NSNumber*) catalogVersion
    completionHandler: (void (^)(SQRetrieveCatalogObjectResponse* output, NSError* error)) handler;


/// SearchCatalogItems
/// Searches for catalog items or item variations by matching supported search attribute values, including custom attribute values, against one or more of the specified query filters.  This (`SearchCatalogItems`) endpoint differs from the [SearchCatalogObjects](https://developer.squareup.com/reference/square_2023-10-18/catalog-api/search-catalog-objects) endpoint in the following aspects:  - `SearchCatalogItems` can only search for items or item variations, whereas `SearchCatalogObjects` can search for any type of catalog objects. - `SearchCatalogItems` supports the custom attribute query filters to return items or item variations that contain custom attribute values, where `SearchCatalogObjects` does not. - `SearchCatalogItems` does not support the `include_deleted_objects` filter to search for deleted items or item variations, whereas `SearchCatalogObjects` does. - The both endpoints use different call conventions, including the query filter formats.
///
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQSearchCatalogItemsResponse*
-(NSURLSessionTask*) searchCatalogItemsWithBody: (SQSearchCatalogItemsRequest*) body
    completionHandler: (void (^)(SQSearchCatalogItemsResponse* output, NSError* error)) handler;


/// SearchCatalogObjects
/// Searches for [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject) of any type by matching supported search attribute values, excluding custom attribute values on items or item variations, against one or more of the specified query filters.  This (`SearchCatalogObjects`) endpoint differs from the [SearchCatalogItems](https://developer.squareup.com/reference/square_2023-10-18/catalog-api/search-catalog-items) endpoint in the following aspects:  - `SearchCatalogItems` can only search for items or item variations, whereas `SearchCatalogObjects` can search for any type of catalog objects. - `SearchCatalogItems` supports the custom attribute query filters to return items or item variations that contain custom attribute values, where `SearchCatalogObjects` does not. - `SearchCatalogItems` does not support the `include_deleted_objects` filter to search for deleted items or item variations, whereas `SearchCatalogObjects` does. - The both endpoints have different call conventions, including the query filter formats.
///
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQSearchCatalogObjectsResponse*
-(NSURLSessionTask*) searchCatalogObjectsWithBody: (SQSearchCatalogObjectsRequest*) body
    completionHandler: (void (^)(SQSearchCatalogObjectsResponse* output, NSError* error)) handler;


/// UpdateItemModifierLists
/// Updates the [CatalogModifierList](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogModifierList) objects that apply to the targeted [CatalogItem](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogItem) without having to perform an upsert on the entire item.
///
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQUpdateItemModifierListsResponse*
-(NSURLSessionTask*) updateItemModifierListsWithBody: (SQUpdateItemModifierListsRequest*) body
    completionHandler: (void (^)(SQUpdateItemModifierListsResponse* output, NSError* error)) handler;


/// UpdateItemTaxes
/// Updates the [CatalogTax](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogTax) objects that apply to the targeted [CatalogItem](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogItem) without having to perform an upsert on the entire item.
///
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQUpdateItemTaxesResponse*
-(NSURLSessionTask*) updateItemTaxesWithBody: (SQUpdateItemTaxesRequest*) body
    completionHandler: (void (^)(SQUpdateItemTaxesResponse* output, NSError* error)) handler;


/// UpsertCatalogObject
/// Creates a new or updates the specified [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject).  To ensure consistency, only one update request is processed at a time per seller account.   While one (batch or non-batch) update request is being processed, other (batched and non-batched)  update requests are rejected with the `429` error code.
///
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQUpsertCatalogObjectResponse*
-(NSURLSessionTask*) upsertCatalogObjectWithBody: (SQUpsertCatalogObjectRequest*) body
    completionHandler: (void (^)(SQUpsertCatalogObjectResponse* output, NSError* error)) handler;



@end
