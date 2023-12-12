#import <Foundation/Foundation.h>
#import "SQCreateCustomerGroupRequest.h"
#import "SQCreateCustomerGroupResponse.h"
#import "SQDeleteCustomerGroupResponse.h"
#import "SQListCustomerGroupsResponse.h"
#import "SQRetrieveCustomerGroupResponse.h"
#import "SQUpdateCustomerGroupRequest.h"
#import "SQUpdateCustomerGroupResponse.h"
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



@interface SQCustomerGroupsApi: NSObject <SQApi>

extern NSString* kSQCustomerGroupsApiErrorDomain;
extern NSInteger kSQCustomerGroupsApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SQApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// CreateCustomerGroup
/// Creates a new customer group for a business.  The request must include the `name` value of the group.
///
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQCreateCustomerGroupResponse*
-(NSURLSessionTask*) createCustomerGroupWithBody: (SQCreateCustomerGroupRequest*) body
    completionHandler: (void (^)(SQCreateCustomerGroupResponse* output, NSError* error)) handler;


/// DeleteCustomerGroup
/// Deletes a customer group as identified by the `group_id` value.
///
/// @param groupId The ID of the customer group to delete.
/// 
///  code:200 message:"Success"
///
/// @return SQDeleteCustomerGroupResponse*
-(NSURLSessionTask*) deleteCustomerGroupWithGroupId: (NSString*) groupId
    completionHandler: (void (^)(SQDeleteCustomerGroupResponse* output, NSError* error)) handler;


/// ListCustomerGroups
/// Retrieves the list of customer groups of a business.
///
/// @param cursor A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for your original query.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
/// @param limit The maximum number of results to return in a single page. This limit is advisory. The response might contain more or fewer results. If the limit is less than 1 or greater than 50, Square returns a &#x60;400 VALUE_TOO_LOW&#x60; or &#x60;400 VALUE_TOO_HIGH&#x60; error. The default value is 50.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
/// 
///  code:200 message:"Success"
///
/// @return SQListCustomerGroupsResponse*
-(NSURLSessionTask*) listCustomerGroupsWithCursor: (NSString*) cursor
    limit: (NSNumber*) limit
    completionHandler: (void (^)(SQListCustomerGroupsResponse* output, NSError* error)) handler;


/// RetrieveCustomerGroup
/// Retrieves a specific customer group as identified by the `group_id` value.
///
/// @param groupId The ID of the customer group to retrieve.
/// 
///  code:200 message:"Success"
///
/// @return SQRetrieveCustomerGroupResponse*
-(NSURLSessionTask*) retrieveCustomerGroupWithGroupId: (NSString*) groupId
    completionHandler: (void (^)(SQRetrieveCustomerGroupResponse* output, NSError* error)) handler;


/// UpdateCustomerGroup
/// Updates a customer group as identified by the `group_id` value.
///
/// @param groupId The ID of the customer group to update.
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQUpdateCustomerGroupResponse*
-(NSURLSessionTask*) updateCustomerGroupWithGroupId: (NSString*) groupId
    body: (SQUpdateCustomerGroupRequest*) body
    completionHandler: (void (^)(SQUpdateCustomerGroupResponse* output, NSError* error)) handler;



@end
