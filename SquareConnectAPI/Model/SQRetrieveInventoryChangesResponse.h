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


#import "SQError.h"
#import "SQInventoryChange.h"
@protocol SQError;
@class SQError;
@protocol SQInventoryChange;
@class SQInventoryChange;



@protocol SQRetrieveInventoryChangesResponse
@end

@interface SQRetrieveInventoryChangesResponse : SQObject

/* Any errors that occurred during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;
/* The set of inventory changes for the requested object and locations. [optional]
 */
@property(nonatomic) NSArray<SQInventoryChange>* changes;
/* The pagination cursor to be used in a subsequent request. If unset, this is the final response.  See the [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination) guide for more information. [optional]
 */
@property(nonatomic) NSString* cursor;

@end
