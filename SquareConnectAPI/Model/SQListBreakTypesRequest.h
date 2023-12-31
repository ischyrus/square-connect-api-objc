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





@protocol SQListBreakTypesRequest
@end

@interface SQListBreakTypesRequest : SQObject

/* Filter the returned `BreakType` results to only those that are associated with the specified location. [optional]
 */
@property(nonatomic) NSString* locationId;
/* The maximum number of `BreakType` results to return per page. The number can range between 1 and 200. The default is 200. [optional]
 */
@property(nonatomic) NSNumber* limit;
/* A pointer to the next page of `BreakType` results to fetch. [optional]
 */
@property(nonatomic) NSString* cursor;

@end
