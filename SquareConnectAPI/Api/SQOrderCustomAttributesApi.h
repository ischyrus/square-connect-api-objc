#import <Foundation/Foundation.h>
#import "SQBulkDeleteOrderCustomAttributesRequest.h"
#import "SQBulkDeleteOrderCustomAttributesResponse.h"
#import "SQBulkUpsertOrderCustomAttributesRequest.h"
#import "SQBulkUpsertOrderCustomAttributesResponse.h"
#import "SQCreateOrderCustomAttributeDefinitionRequest.h"
#import "SQCreateOrderCustomAttributeDefinitionResponse.h"
#import "SQDeleteOrderCustomAttributeDefinitionResponse.h"
#import "SQDeleteOrderCustomAttributeResponse.h"
#import "SQListOrderCustomAttributeDefinitionsResponse.h"
#import "SQListOrderCustomAttributesResponse.h"
#import "SQRetrieveOrderCustomAttributeDefinitionResponse.h"
#import "SQRetrieveOrderCustomAttributeResponse.h"
#import "SQUpdateOrderCustomAttributeDefinitionRequest.h"
#import "SQUpdateOrderCustomAttributeDefinitionResponse.h"
#import "SQUpsertOrderCustomAttributeRequest.h"
#import "SQUpsertOrderCustomAttributeResponse.h"
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



@interface SQOrderCustomAttributesApi: NSObject <SQApi>

extern NSString* kSQOrderCustomAttributesApiErrorDomain;
extern NSInteger kSQOrderCustomAttributesApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SQApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// BulkDeleteOrderCustomAttributes
/// Deletes order [custom attributes](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) as a bulk operation.  Use this endpoint to delete one or more custom attributes from one or more orders. A custom attribute is based on a custom attribute definition in a Square seller account.  (To create a custom attribute definition, use the [CreateOrderCustomAttributeDefinition](https://developer.squareup.com/reference/square_2023-10-18/order-custom-attributes-api/create-order-custom-attribute-definition) endpoint.)  This `BulkDeleteOrderCustomAttributes` endpoint accepts a map of 1 to 25 individual delete requests and returns a map of individual delete responses. Each delete request has a unique ID and provides an order ID and custom attribute. Each delete response is returned with the ID of the corresponding request.  To delete a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_WRITE_VALUES`. Note that seller-defined custom attributes (also known as custom fields) are always set to `VISIBILITY_READ_WRITE_VALUES`.
///
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQBulkDeleteOrderCustomAttributesResponse*
-(NSURLSessionTask*) bulkDeleteOrderCustomAttributesWithBody: (SQBulkDeleteOrderCustomAttributesRequest*) body
    completionHandler: (void (^)(SQBulkDeleteOrderCustomAttributesResponse* output, NSError* error)) handler;


/// BulkUpsertOrderCustomAttributes
/// Creates or updates order [custom attributes](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) as a bulk operation.  Use this endpoint to delete one or more custom attributes from one or more orders. A custom attribute is based on a custom attribute definition in a Square seller account.  (To create a custom attribute definition, use the [CreateOrderCustomAttributeDefinition](https://developer.squareup.com/reference/square_2023-10-18/order-custom-attributes-api/create-order-custom-attribute-definition) endpoint.)  This `BulkUpsertOrderCustomAttributes` endpoint accepts a map of 1 to 25 individual upsert requests and returns a map of individual upsert responses. Each upsert request has a unique ID and provides an order ID and custom attribute. Each upsert response is returned with the ID of the corresponding request.  To create or update a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_WRITE_VALUES`. Note that seller-defined custom attributes (also known as custom fields) are always set to `VISIBILITY_READ_WRITE_VALUES`.
///
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQBulkUpsertOrderCustomAttributesResponse*
-(NSURLSessionTask*) bulkUpsertOrderCustomAttributesWithBody: (SQBulkUpsertOrderCustomAttributesRequest*) body
    completionHandler: (void (^)(SQBulkUpsertOrderCustomAttributesResponse* output, NSError* error)) handler;


/// CreateOrderCustomAttributeDefinition
/// Creates an order-related custom attribute definition.  Use this endpoint to define a custom attribute that can be associated with orders.  After creating a custom attribute definition, you can set the custom attribute for orders in the Square seller account.
///
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQCreateOrderCustomAttributeDefinitionResponse*
-(NSURLSessionTask*) createOrderCustomAttributeDefinitionWithBody: (SQCreateOrderCustomAttributeDefinitionRequest*) body
    completionHandler: (void (^)(SQCreateOrderCustomAttributeDefinitionResponse* output, NSError* error)) handler;


/// DeleteOrderCustomAttribute
/// Deletes a [custom attribute](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) associated with a customer profile.  To delete a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_WRITE_VALUES`. Note that seller-defined custom attributes (also known as custom fields) are always set to `VISIBILITY_READ_WRITE_VALUES`.
///
/// @param orderId The ID of the target [order](https://developer.squareup.com/reference/square_2023-10-18/objects/Order).
/// @param customAttributeKey The key of the custom attribute to delete.  This key must match the key of an existing custom attribute definition.
/// 
///  code:200 message:"Success"
///
/// @return SQDeleteOrderCustomAttributeResponse*
-(NSURLSessionTask*) deleteOrderCustomAttributeWithOrderId: (NSString*) orderId
    customAttributeKey: (NSString*) customAttributeKey
    completionHandler: (void (^)(SQDeleteOrderCustomAttributeResponse* output, NSError* error)) handler;


/// DeleteOrderCustomAttributeDefinition
/// Deletes an order-related [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) from a Square seller account.  Only the definition owner can delete a custom attribute definition.
///
/// @param key The key of the custom attribute definition to delete.
/// 
///  code:200 message:"Success"
///
/// @return SQDeleteOrderCustomAttributeDefinitionResponse*
-(NSURLSessionTask*) deleteOrderCustomAttributeDefinitionWithKey: (NSString*) key
    completionHandler: (void (^)(SQDeleteOrderCustomAttributeDefinitionResponse* output, NSError* error)) handler;


/// ListOrderCustomAttributeDefinitions
/// Lists the order-related [custom attribute definitions](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) that belong to a Square seller account.  When all response pages are retrieved, the results include all custom attribute definitions that are visible to the requesting application, including those that are created by other applications and set to `VISIBILITY_READ_ONLY` or `VISIBILITY_READ_WRITE_VALUES`. Note that seller-defined custom attributes (also known as custom fields) are always set to `VISIBILITY_READ_WRITE_VALUES`.
///
/// @param visibilityFilter Requests that all of the custom attributes be returned, or only those that are read-only or read-write. (optional)
/// @param cursor The cursor returned in the paged response from the previous call to this endpoint.  Provide this cursor to retrieve the next page of results for your original request.  For more information, see [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination). (optional)
/// @param limit The maximum number of results to return in a single paged response. This limit is advisory.  The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100.  The default value is 20. For more information, see [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination). (optional)
/// 
///  code:200 message:"Success"
///
/// @return SQListOrderCustomAttributeDefinitionsResponse*
-(NSURLSessionTask*) listOrderCustomAttributeDefinitionsWithVisibilityFilter: (NSString*) visibilityFilter
    cursor: (NSString*) cursor
    limit: (NSNumber*) limit
    completionHandler: (void (^)(SQListOrderCustomAttributeDefinitionsResponse* output, NSError* error)) handler;


/// ListOrderCustomAttributes
/// Lists the [custom attributes](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) associated with an order.  You can use the `with_definitions` query parameter to also retrieve custom attribute definitions in the same call.  When all response pages are retrieved, the results include all custom attributes that are visible to the requesting application, including those that are owned by other applications and set to `VISIBILITY_READ_ONLY` or `VISIBILITY_READ_WRITE_VALUES`.
///
/// @param orderId The ID of the target [order](https://developer.squareup.com/reference/square_2023-10-18/objects/Order).
/// @param visibilityFilter Requests that all of the custom attributes be returned, or only those that are read-only or read-write. (optional)
/// @param cursor The cursor returned in the paged response from the previous call to this endpoint.  Provide this cursor to retrieve the next page of results for your original request.  For more information, see [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination). (optional)
/// @param limit The maximum number of results to return in a single paged response. This limit is advisory.  The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100.  The default value is 20. For more information, see [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination). (optional)
/// @param withDefinitions Indicates whether to return the [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) in the &#x60;definition&#x60; field of each custom attribute. Set this parameter to &#x60;true&#x60; to get the name and description of each custom attribute,  information about the data type, or other definition details. The default value is &#x60;false&#x60;. (optional)
/// 
///  code:200 message:"Success"
///
/// @return SQListOrderCustomAttributesResponse*
-(NSURLSessionTask*) listOrderCustomAttributesWithOrderId: (NSString*) orderId
    visibilityFilter: (NSString*) visibilityFilter
    cursor: (NSString*) cursor
    limit: (NSNumber*) limit
    withDefinitions: (NSNumber*) withDefinitions
    completionHandler: (void (^)(SQListOrderCustomAttributesResponse* output, NSError* error)) handler;


/// RetrieveOrderCustomAttribute
/// Retrieves a [custom attribute](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) associated with an order.  You can use the `with_definition` query parameter to also retrieve the custom attribute definition in the same call.  To retrieve a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_ONLY` or `VISIBILITY_READ_WRITE_VALUES`. Note that seller-defined custom attributes also known as custom fields) are always set to `VISIBILITY_READ_WRITE_VALUES`.
///
/// @param orderId The ID of the target [order](https://developer.squareup.com/reference/square_2023-10-18/objects/Order).
/// @param customAttributeKey The key of the custom attribute to retrieve.  This key must match the key of an existing custom attribute definition.
/// @param version To enable [optimistic concurrency](https://developer.squareup.com/docs/build-basics/common-api-patterns/optimistic-concurrency) control, include this optional field and specify the current version of the custom attribute. (optional)
/// @param withDefinition Indicates whether to return the [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) in the &#x60;definition&#x60; field of each  custom attribute. Set this parameter to &#x60;true&#x60; to get the name and description of each custom attribute,  information about the data type, or other definition details. The default value is &#x60;false&#x60;. (optional)
/// 
///  code:200 message:"Success"
///
/// @return SQRetrieveOrderCustomAttributeResponse*
-(NSURLSessionTask*) retrieveOrderCustomAttributeWithOrderId: (NSString*) orderId
    customAttributeKey: (NSString*) customAttributeKey
    version: (NSNumber*) version
    withDefinition: (NSNumber*) withDefinition
    completionHandler: (void (^)(SQRetrieveOrderCustomAttributeResponse* output, NSError* error)) handler;


/// RetrieveOrderCustomAttributeDefinition
/// Retrieves an order-related [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) from a Square seller account.  To retrieve a custom attribute definition created by another application, the `visibility` setting must be `VISIBILITY_READ_ONLY` or `VISIBILITY_READ_WRITE_VALUES`. Note that seller-defined custom attributes (also known as custom fields) are always set to `VISIBILITY_READ_WRITE_VALUES`.
///
/// @param key The key of the custom attribute definition to retrieve.
/// @param version To enable [optimistic concurrency](https://developer.squareup.com/docs/build-basics/common-api-patterns/optimistic-concurrency) control, include this optional field and specify the current version of the custom attribute. (optional)
/// 
///  code:200 message:"Success"
///
/// @return SQRetrieveOrderCustomAttributeDefinitionResponse*
-(NSURLSessionTask*) retrieveOrderCustomAttributeDefinitionWithKey: (NSString*) key
    version: (NSNumber*) version
    completionHandler: (void (^)(SQRetrieveOrderCustomAttributeDefinitionResponse* output, NSError* error)) handler;


/// UpdateOrderCustomAttributeDefinition
/// Updates an order-related custom attribute definition for a Square seller account.  Only the definition owner can update a custom attribute definition. Note that sellers can view all custom attributes in exported customer data, including those set to `VISIBILITY_HIDDEN`.
///
/// @param key The key of the custom attribute definition to update.
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQUpdateOrderCustomAttributeDefinitionResponse*
-(NSURLSessionTask*) updateOrderCustomAttributeDefinitionWithKey: (NSString*) key
    body: (SQUpdateOrderCustomAttributeDefinitionRequest*) body
    completionHandler: (void (^)(SQUpdateOrderCustomAttributeDefinitionResponse* output, NSError* error)) handler;


/// UpsertOrderCustomAttribute
/// Creates or updates a [custom attribute](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) for an order.  Use this endpoint to set the value of a custom attribute for a specific order. A custom attribute is based on a custom attribute definition in a Square seller account. (To create a custom attribute definition, use the [CreateOrderCustomAttributeDefinition](https://developer.squareup.com/reference/square_2023-10-18/order-custom-attributes-api/create-order-custom-attribute-definition) endpoint.)  To create or update a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_WRITE_VALUES`. Note that seller-defined custom attributes (also known as custom fields) are always set to `VISIBILITY_READ_WRITE_VALUES`.
///
/// @param orderId The ID of the target [order](https://developer.squareup.com/reference/square_2023-10-18/objects/Order).
/// @param customAttributeKey The key of the custom attribute to create or update.  This key must match the key  of an existing custom attribute definition.
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQUpsertOrderCustomAttributeResponse*
-(NSURLSessionTask*) upsertOrderCustomAttributeWithOrderId: (NSString*) orderId
    customAttributeKey: (NSString*) customAttributeKey
    body: (SQUpsertOrderCustomAttributeRequest*) body
    completionHandler: (void (^)(SQUpsertOrderCustomAttributeResponse* output, NSError* error)) handler;



@end
