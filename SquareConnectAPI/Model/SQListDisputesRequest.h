#import <Foundation/Foundation.h>
#import "SQObject.h"

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





@protocol SQListDisputesRequest
@end

@interface SQListDisputesRequest : SQObject

/* A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). [optional]
 */
@property(nonatomic) NSString* cursor;
/* The dispute states used to filter the result. If not specified, the endpoint returns all disputes. [optional]
 */
@property(nonatomic) NSArray<NSString*>* states;
/* The ID of the location for which to return a list of disputes. If not specified, the endpoint returns disputes associated with all locations. [optional]
 */
@property(nonatomic) NSString* locationId;

@end
