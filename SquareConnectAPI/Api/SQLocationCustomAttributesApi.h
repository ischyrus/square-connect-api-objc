#import <Foundation/Foundation.h>
#import "SQBulkDeleteLocationCustomAttributesRequest.h"
#import "SQBulkDeleteLocationCustomAttributesResponse.h"
#import "SQBulkUpsertLocationCustomAttributesRequest.h"
#import "SQBulkUpsertLocationCustomAttributesResponse.h"
#import "SQCreateLocationCustomAttributeDefinitionRequest.h"
#import "SQCreateLocationCustomAttributeDefinitionResponse.h"
#import "SQDeleteLocationCustomAttributeDefinitionResponse.h"
#import "SQDeleteLocationCustomAttributeResponse.h"
#import "SQListLocationCustomAttributeDefinitionsResponse.h"
#import "SQListLocationCustomAttributesResponse.h"
#import "SQRetrieveLocationCustomAttributeDefinitionResponse.h"
#import "SQRetrieveLocationCustomAttributeResponse.h"
#import "SQUpdateLocationCustomAttributeDefinitionRequest.h"
#import "SQUpdateLocationCustomAttributeDefinitionResponse.h"
#import "SQUpsertLocationCustomAttributeRequest.h"
#import "SQUpsertLocationCustomAttributeResponse.h"
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



@interface SQLocationCustomAttributesApi: NSObject <SQApi>

extern NSString* kSQLocationCustomAttributesApiErrorDomain;
extern NSInteger kSQLocationCustomAttributesApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SQApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// BulkDeleteLocationCustomAttributes
/// Deletes [custom attributes](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) for locations as a bulk operation. To delete a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_WRITE_VALUES`.
///
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQBulkDeleteLocationCustomAttributesResponse*
-(NSURLSessionTask*) bulkDeleteLocationCustomAttributesWithBody: (SQBulkDeleteLocationCustomAttributesRequest*) body
    completionHandler: (void (^)(SQBulkDeleteLocationCustomAttributesResponse* output, NSError* error)) handler;


/// BulkUpsertLocationCustomAttributes
/// Creates or updates [custom attributes](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) for locations as a bulk operation. Use this endpoint to set the value of one or more custom attributes for one or more locations. A custom attribute is based on a custom attribute definition in a Square seller account, which is created using the [CreateLocationCustomAttributeDefinition](https://developer.squareup.com/reference/square_2023-10-18/location-custom-attributes-api/create-location-custom-attribute-definition) endpoint. This `BulkUpsertLocationCustomAttributes` endpoint accepts a map of 1 to 25 individual upsert requests and returns a map of individual upsert responses. Each upsert request has a unique ID and provides a location ID and custom attribute. Each upsert response is returned with the ID of the corresponding request. To create or update a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_WRITE_VALUES`.
///
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQBulkUpsertLocationCustomAttributesResponse*
-(NSURLSessionTask*) bulkUpsertLocationCustomAttributesWithBody: (SQBulkUpsertLocationCustomAttributesRequest*) body
    completionHandler: (void (^)(SQBulkUpsertLocationCustomAttributesResponse* output, NSError* error)) handler;


/// CreateLocationCustomAttributeDefinition
/// Creates a location-related [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) for a Square seller account. Use this endpoint to define a custom attribute that can be associated with locations. A custom attribute definition specifies the `key`, `visibility`, `schema`, and other properties for a custom attribute. After the definition is created, you can call [UpsertLocationCustomAttribute](https://developer.squareup.com/reference/square_2023-10-18/location-custom-attributes-api/upsert-location-custom-attribute) or [BulkUpsertLocationCustomAttributes](https://developer.squareup.com/reference/square_2023-10-18/location-custom-attributes-api/bulk-upsert-location-custom-attributes) to set the custom attribute for locations.
///
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQCreateLocationCustomAttributeDefinitionResponse*
-(NSURLSessionTask*) createLocationCustomAttributeDefinitionWithBody: (SQCreateLocationCustomAttributeDefinitionRequest*) body
    completionHandler: (void (^)(SQCreateLocationCustomAttributeDefinitionResponse* output, NSError* error)) handler;


/// DeleteLocationCustomAttribute
/// Deletes a [custom attribute](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) associated with a location. To delete a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_WRITE_VALUES`.
///
/// @param locationId The ID of the target [location](https://developer.squareup.com/reference/square_2023-10-18/objects/Location).
/// @param key The key of the custom attribute to delete. This key must match the &#x60;key&#x60; of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key.
/// 
///  code:200 message:"Success"
///
/// @return SQDeleteLocationCustomAttributeResponse*
-(NSURLSessionTask*) deleteLocationCustomAttributeWithLocationId: (NSString*) locationId
    key: (NSString*) key
    completionHandler: (void (^)(SQDeleteLocationCustomAttributeResponse* output, NSError* error)) handler;


/// DeleteLocationCustomAttributeDefinition
/// Deletes a location-related [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) from a Square seller account. Deleting a custom attribute definition also deletes the corresponding custom attribute from all locations. Only the definition owner can delete a custom attribute definition.
///
/// @param key The key of the custom attribute definition to delete.
/// 
///  code:200 message:"Success"
///
/// @return SQDeleteLocationCustomAttributeDefinitionResponse*
-(NSURLSessionTask*) deleteLocationCustomAttributeDefinitionWithKey: (NSString*) key
    completionHandler: (void (^)(SQDeleteLocationCustomAttributeDefinitionResponse* output, NSError* error)) handler;


/// ListLocationCustomAttributeDefinitions
/// Lists the location-related [custom attribute definitions](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) that belong to a Square seller account. When all response pages are retrieved, the results include all custom attribute definitions that are visible to the requesting application, including those that are created by other applications and set to `VISIBILITY_READ_ONLY` or `VISIBILITY_READ_WRITE_VALUES`.
///
/// @param visibilityFilter Filters the &#x60;CustomAttributeDefinition&#x60; results by their &#x60;visibility&#x60; values. (optional)
/// @param limit The maximum number of results to return in a single paged response. This limit is advisory. The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100. The default value is 20. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
/// @param cursor The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
/// 
///  code:200 message:"Success"
///
/// @return SQListLocationCustomAttributeDefinitionsResponse*
-(NSURLSessionTask*) listLocationCustomAttributeDefinitionsWithVisibilityFilter: (NSString*) visibilityFilter
    limit: (NSNumber*) limit
    cursor: (NSString*) cursor
    completionHandler: (void (^)(SQListLocationCustomAttributeDefinitionsResponse* output, NSError* error)) handler;


/// ListLocationCustomAttributes
/// Lists the [custom attributes](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) associated with a location. You can use the `with_definitions` query parameter to also retrieve custom attribute definitions in the same call. When all response pages are retrieved, the results include all custom attributes that are visible to the requesting application, including those that are owned by other applications and set to `VISIBILITY_READ_ONLY` or `VISIBILITY_READ_WRITE_VALUES`.
///
/// @param locationId The ID of the target [location](https://developer.squareup.com/reference/square_2023-10-18/objects/Location).
/// @param visibilityFilter Filters the &#x60;CustomAttributeDefinition&#x60; results by their &#x60;visibility&#x60; values. (optional)
/// @param limit The maximum number of results to return in a single paged response. This limit is advisory. The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100. The default value is 20. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
/// @param cursor The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
/// @param withDefinitions Indicates whether to return the [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) in the &#x60;definition&#x60; field of each custom attribute. Set this parameter to &#x60;true&#x60; to get the name and description of each custom attribute, information about the data type, or other definition details. The default value is &#x60;false&#x60;. (optional)
/// 
///  code:200 message:"Success"
///
/// @return SQListLocationCustomAttributesResponse*
-(NSURLSessionTask*) listLocationCustomAttributesWithLocationId: (NSString*) locationId
    visibilityFilter: (NSString*) visibilityFilter
    limit: (NSNumber*) limit
    cursor: (NSString*) cursor
    withDefinitions: (NSNumber*) withDefinitions
    completionHandler: (void (^)(SQListLocationCustomAttributesResponse* output, NSError* error)) handler;


/// RetrieveLocationCustomAttribute
/// Retrieves a [custom attribute](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) associated with a location. You can use the `with_definition` query parameter to also retrieve the custom attribute definition in the same call. To retrieve a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_ONLY` or `VISIBILITY_READ_WRITE_VALUES`.
///
/// @param locationId The ID of the target [location](https://developer.squareup.com/reference/square_2023-10-18/objects/Location).
/// @param key The key of the custom attribute to retrieve. This key must match the &#x60;key&#x60; of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key.
/// @param withDefinition Indicates whether to return the [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) in the &#x60;definition&#x60; field of the custom attribute. Set this parameter to &#x60;true&#x60; to get the name and description of the custom attribute, information about the data type, or other definition details. The default value is &#x60;false&#x60;. (optional)
/// @param version The current version of the custom attribute, which is used for strongly consistent reads to guarantee that you receive the most up-to-date data. When included in the request, Square returns the specified version or a higher version if one exists. If the specified version is higher than the current version, Square returns a &#x60;BAD_REQUEST&#x60; error. (optional)
/// 
///  code:200 message:"Success"
///
/// @return SQRetrieveLocationCustomAttributeResponse*
-(NSURLSessionTask*) retrieveLocationCustomAttributeWithLocationId: (NSString*) locationId
    key: (NSString*) key
    withDefinition: (NSNumber*) withDefinition
    version: (NSNumber*) version
    completionHandler: (void (^)(SQRetrieveLocationCustomAttributeResponse* output, NSError* error)) handler;


/// RetrieveLocationCustomAttributeDefinition
/// Retrieves a location-related [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) from a Square seller account. To retrieve a custom attribute definition created by another application, the `visibility` setting must be `VISIBILITY_READ_ONLY` or `VISIBILITY_READ_WRITE_VALUES`.
///
/// @param key The key of the custom attribute definition to retrieve. If the requesting application is not the definition owner, you must use the qualified key.
/// @param version The current version of the custom attribute definition, which is used for strongly consistent reads to guarantee that you receive the most up-to-date data. When included in the request, Square returns the specified version or a higher version if one exists. If the specified version is higher than the current version, Square returns a &#x60;BAD_REQUEST&#x60; error. (optional)
/// 
///  code:200 message:"Success"
///
/// @return SQRetrieveLocationCustomAttributeDefinitionResponse*
-(NSURLSessionTask*) retrieveLocationCustomAttributeDefinitionWithKey: (NSString*) key
    version: (NSNumber*) version
    completionHandler: (void (^)(SQRetrieveLocationCustomAttributeDefinitionResponse* output, NSError* error)) handler;


/// UpdateLocationCustomAttributeDefinition
/// Updates a location-related [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) for a Square seller account. Use this endpoint to update the following fields: `name`, `description`, `visibility`, or the `schema` for a `Selection` data type. Only the definition owner can update a custom attribute definition.
///
/// @param key The key of the custom attribute definition to update.
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQUpdateLocationCustomAttributeDefinitionResponse*
-(NSURLSessionTask*) updateLocationCustomAttributeDefinitionWithKey: (NSString*) key
    body: (SQUpdateLocationCustomAttributeDefinitionRequest*) body
    completionHandler: (void (^)(SQUpdateLocationCustomAttributeDefinitionResponse* output, NSError* error)) handler;


/// UpsertLocationCustomAttribute
/// Creates or updates a [custom attribute](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) for a location. Use this endpoint to set the value of a custom attribute for a specified location. A custom attribute is based on a custom attribute definition in a Square seller account, which is created using the [CreateLocationCustomAttributeDefinition](https://developer.squareup.com/reference/square_2023-10-18/location-custom-attributes-api/create-location-custom-attribute-definition) endpoint. To create or update a custom attribute owned by another application, the `visibility` setting must be `VISIBILITY_READ_WRITE_VALUES`.
///
/// @param locationId The ID of the target [location](https://developer.squareup.com/reference/square_2023-10-18/objects/Location).
/// @param key The key of the custom attribute to create or update. This key must match the &#x60;key&#x60; of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key.
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQUpsertLocationCustomAttributeResponse*
-(NSURLSessionTask*) upsertLocationCustomAttributeWithLocationId: (NSString*) locationId
    key: (NSString*) key
    body: (SQUpsertLocationCustomAttributeRequest*) body
    completionHandler: (void (^)(SQUpsertLocationCustomAttributeResponse* output, NSError* error)) handler;



@end