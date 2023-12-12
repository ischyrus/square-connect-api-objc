#import <Foundation/Foundation.h>
#import "SQBulkDeleteBookingCustomAttributesRequest.h"
#import "SQBulkDeleteBookingCustomAttributesResponse.h"
#import "SQBulkUpsertBookingCustomAttributesRequest.h"
#import "SQBulkUpsertBookingCustomAttributesResponse.h"
#import "SQCreateBookingCustomAttributeDefinitionRequest.h"
#import "SQCreateBookingCustomAttributeDefinitionResponse.h"
#import "SQDeleteBookingCustomAttributeDefinitionResponse.h"
#import "SQDeleteBookingCustomAttributeResponse.h"
#import "SQListBookingCustomAttributeDefinitionsResponse.h"
#import "SQListBookingCustomAttributesResponse.h"
#import "SQRetrieveBookingCustomAttributeDefinitionResponse.h"
#import "SQRetrieveBookingCustomAttributeResponse.h"
#import "SQUpdateBookingCustomAttributeDefinitionRequest.h"
#import "SQUpdateBookingCustomAttributeDefinitionResponse.h"
#import "SQUpsertBookingCustomAttributeRequest.h"
#import "SQUpsertBookingCustomAttributeResponse.h"
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



@interface SQBookingCustomAttributesApi: NSObject <SQApi>

extern NSString* kSQBookingCustomAttributesApiErrorDomain;
extern NSInteger kSQBookingCustomAttributesApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SQApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// BulkDeleteBookingCustomAttributes
/// Bulk deletes bookings custom attributes.  To call this endpoint with buyer-level permissions, set `APPOINTMENTS_WRITE` for the OAuth scope. To call this endpoint with seller-level permissions, set `APPOINTMENTS_ALL_WRITE` and `APPOINTMENTS_WRITE` for the OAuth scope.  For calls to this endpoint with seller-level permissions to succeed, the seller must have subscribed to *Appointments Plus* or *Appointments Premium*.
///
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQBulkDeleteBookingCustomAttributesResponse*
-(NSURLSessionTask*) bulkDeleteBookingCustomAttributesWithBody: (SQBulkDeleteBookingCustomAttributesRequest*) body
    completionHandler: (void (^)(SQBulkDeleteBookingCustomAttributesResponse* output, NSError* error)) handler;


/// BulkUpsertBookingCustomAttributes
/// Bulk upserts bookings custom attributes.  To call this endpoint with buyer-level permissions, set `APPOINTMENTS_WRITE` for the OAuth scope. To call this endpoint with seller-level permissions, set `APPOINTMENTS_ALL_WRITE` and `APPOINTMENTS_WRITE` for the OAuth scope.  For calls to this endpoint with seller-level permissions to succeed, the seller must have subscribed to *Appointments Plus* or *Appointments Premium*.
///
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQBulkUpsertBookingCustomAttributesResponse*
-(NSURLSessionTask*) bulkUpsertBookingCustomAttributesWithBody: (SQBulkUpsertBookingCustomAttributesRequest*) body
    completionHandler: (void (^)(SQBulkUpsertBookingCustomAttributesResponse* output, NSError* error)) handler;


/// CreateBookingCustomAttributeDefinition
/// Creates a bookings custom attribute definition.  To call this endpoint with buyer-level permissions, set `APPOINTMENTS_WRITE` for the OAuth scope. To call this endpoint with seller-level permissions, set `APPOINTMENTS_ALL_WRITE` and `APPOINTMENTS_WRITE` for the OAuth scope.  For calls to this endpoint with seller-level permissions to succeed, the seller must have subscribed to *Appointments Plus* or *Appointments Premium*.
///
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQCreateBookingCustomAttributeDefinitionResponse*
-(NSURLSessionTask*) createBookingCustomAttributeDefinitionWithBody: (SQCreateBookingCustomAttributeDefinitionRequest*) body
    completionHandler: (void (^)(SQCreateBookingCustomAttributeDefinitionResponse* output, NSError* error)) handler;


/// DeleteBookingCustomAttribute
/// Deletes a bookings custom attribute.  To call this endpoint with buyer-level permissions, set `APPOINTMENTS_WRITE` for the OAuth scope. To call this endpoint with seller-level permissions, set `APPOINTMENTS_ALL_WRITE` and `APPOINTMENTS_WRITE` for the OAuth scope.  For calls to this endpoint with seller-level permissions to succeed, the seller must have subscribed to *Appointments Plus* or *Appointments Premium*.
///
/// @param bookingId The ID of the target [booking](https://developer.squareup.com/reference/square_2023-10-18/objects/Booking).
/// @param key The key of the custom attribute to delete. This key must match the &#x60;key&#x60; of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key.
/// 
///  code:200 message:"Success"
///
/// @return SQDeleteBookingCustomAttributeResponse*
-(NSURLSessionTask*) deleteBookingCustomAttributeWithBookingId: (NSString*) bookingId
    key: (NSString*) key
    completionHandler: (void (^)(SQDeleteBookingCustomAttributeResponse* output, NSError* error)) handler;


/// DeleteBookingCustomAttributeDefinition
/// Deletes a bookings custom attribute definition.  To call this endpoint with buyer-level permissions, set `APPOINTMENTS_WRITE` for the OAuth scope. To call this endpoint with seller-level permissions, set `APPOINTMENTS_ALL_WRITE` and `APPOINTMENTS_WRITE` for the OAuth scope.  For calls to this endpoint with seller-level permissions to succeed, the seller must have subscribed to *Appointments Plus* or *Appointments Premium*.
///
/// @param key The key of the custom attribute definition to delete.
/// 
///  code:200 message:"Success"
///
/// @return SQDeleteBookingCustomAttributeDefinitionResponse*
-(NSURLSessionTask*) deleteBookingCustomAttributeDefinitionWithKey: (NSString*) key
    completionHandler: (void (^)(SQDeleteBookingCustomAttributeDefinitionResponse* output, NSError* error)) handler;


/// ListBookingCustomAttributeDefinitions
/// Get all bookings custom attribute definitions.  To call this endpoint with buyer-level permissions, set `APPOINTMENTS_READ` for the OAuth scope. To call this endpoint with seller-level permissions, set `APPOINTMENTS_ALL_READ` and `APPOINTMENTS_READ` for the OAuth scope.
///
/// @param limit The maximum number of results to return in a single paged response. This limit is advisory. The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100. The default value is 20. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
/// @param cursor The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
/// 
///  code:200 message:"Success"
///
/// @return SQListBookingCustomAttributeDefinitionsResponse*
-(NSURLSessionTask*) listBookingCustomAttributeDefinitionsWithLimit: (NSNumber*) limit
    cursor: (NSString*) cursor
    completionHandler: (void (^)(SQListBookingCustomAttributeDefinitionsResponse* output, NSError* error)) handler;


/// ListBookingCustomAttributes
/// Lists a booking's custom attributes.  To call this endpoint with buyer-level permissions, set `APPOINTMENTS_READ` for the OAuth scope. To call this endpoint with seller-level permissions, set `APPOINTMENTS_ALL_READ` and `APPOINTMENTS_READ` for the OAuth scope.
///
/// @param bookingId The ID of the target [booking](https://developer.squareup.com/reference/square_2023-10-18/objects/Booking).
/// @param limit The maximum number of results to return in a single paged response. This limit is advisory. The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100. The default value is 20. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
/// @param cursor The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
/// @param withDefinitions Indicates whether to return the [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) in the &#x60;definition&#x60; field of each custom attribute. Set this parameter to &#x60;true&#x60; to get the name and description of each custom attribute, information about the data type, or other definition details. The default value is &#x60;false&#x60;. (optional)
/// 
///  code:200 message:"Success"
///
/// @return SQListBookingCustomAttributesResponse*
-(NSURLSessionTask*) listBookingCustomAttributesWithBookingId: (NSString*) bookingId
    limit: (NSNumber*) limit
    cursor: (NSString*) cursor
    withDefinitions: (NSNumber*) withDefinitions
    completionHandler: (void (^)(SQListBookingCustomAttributesResponse* output, NSError* error)) handler;


/// RetrieveBookingCustomAttribute
/// Retrieves a bookings custom attribute.  To call this endpoint with buyer-level permissions, set `APPOINTMENTS_READ` for the OAuth scope. To call this endpoint with seller-level permissions, set `APPOINTMENTS_ALL_READ` and `APPOINTMENTS_READ` for the OAuth scope.
///
/// @param bookingId The ID of the target [booking](https://developer.squareup.com/reference/square_2023-10-18/objects/Booking).
/// @param key The key of the custom attribute to retrieve. This key must match the &#x60;key&#x60; of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key.
/// @param withDefinition Indicates whether to return the [custom attribute definition](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttributeDefinition) in the &#x60;definition&#x60; field of the custom attribute. Set this parameter to &#x60;true&#x60; to get the name and description of the custom attribute, information about the data type, or other definition details. The default value is &#x60;false&#x60;. (optional)
/// @param version The current version of the custom attribute, which is used for strongly consistent reads to guarantee that you receive the most up-to-date data. When included in the request, Square returns the specified version or a higher version if one exists. If the specified version is higher than the current version, Square returns a &#x60;BAD_REQUEST&#x60; error. (optional)
/// 
///  code:200 message:"Success"
///
/// @return SQRetrieveBookingCustomAttributeResponse*
-(NSURLSessionTask*) retrieveBookingCustomAttributeWithBookingId: (NSString*) bookingId
    key: (NSString*) key
    withDefinition: (NSNumber*) withDefinition
    version: (NSNumber*) version
    completionHandler: (void (^)(SQRetrieveBookingCustomAttributeResponse* output, NSError* error)) handler;


/// RetrieveBookingCustomAttributeDefinition
/// Retrieves a bookings custom attribute definition.  To call this endpoint with buyer-level permissions, set `APPOINTMENTS_READ` for the OAuth scope. To call this endpoint with seller-level permissions, set `APPOINTMENTS_ALL_READ` and `APPOINTMENTS_READ` for the OAuth scope.
///
/// @param key The key of the custom attribute definition to retrieve. If the requesting application is not the definition owner, you must use the qualified key.
/// @param version The current version of the custom attribute definition, which is used for strongly consistent reads to guarantee that you receive the most up-to-date data. When included in the request, Square returns the specified version or a higher version if one exists. If the specified version is higher than the current version, Square returns a &#x60;BAD_REQUEST&#x60; error. (optional)
/// 
///  code:200 message:"Success"
///
/// @return SQRetrieveBookingCustomAttributeDefinitionResponse*
-(NSURLSessionTask*) retrieveBookingCustomAttributeDefinitionWithKey: (NSString*) key
    version: (NSNumber*) version
    completionHandler: (void (^)(SQRetrieveBookingCustomAttributeDefinitionResponse* output, NSError* error)) handler;


/// UpdateBookingCustomAttributeDefinition
/// Updates a bookings custom attribute definition.  To call this endpoint with buyer-level permissions, set `APPOINTMENTS_WRITE` for the OAuth scope. To call this endpoint with seller-level permissions, set `APPOINTMENTS_ALL_WRITE` and `APPOINTMENTS_WRITE` for the OAuth scope.  For calls to this endpoint with seller-level permissions to succeed, the seller must have subscribed to *Appointments Plus* or *Appointments Premium*.
///
/// @param key The key of the custom attribute definition to update.
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQUpdateBookingCustomAttributeDefinitionResponse*
-(NSURLSessionTask*) updateBookingCustomAttributeDefinitionWithKey: (NSString*) key
    body: (SQUpdateBookingCustomAttributeDefinitionRequest*) body
    completionHandler: (void (^)(SQUpdateBookingCustomAttributeDefinitionResponse* output, NSError* error)) handler;


/// UpsertBookingCustomAttribute
/// Upserts a bookings custom attribute.  To call this endpoint with buyer-level permissions, set `APPOINTMENTS_WRITE` for the OAuth scope. To call this endpoint with seller-level permissions, set `APPOINTMENTS_ALL_WRITE` and `APPOINTMENTS_WRITE` for the OAuth scope.  For calls to this endpoint with seller-level permissions to succeed, the seller must have subscribed to *Appointments Plus* or *Appointments Premium*.
///
/// @param bookingId The ID of the target [booking](https://developer.squareup.com/reference/square_2023-10-18/objects/Booking).
/// @param key The key of the custom attribute to create or update. This key must match the &#x60;key&#x60; of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key.
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQUpsertBookingCustomAttributeResponse*
-(NSURLSessionTask*) upsertBookingCustomAttributeWithBookingId: (NSString*) bookingId
    key: (NSString*) key
    body: (SQUpsertBookingCustomAttributeRequest*) body
    completionHandler: (void (^)(SQUpsertBookingCustomAttributeResponse* output, NSError* error)) handler;



@end
