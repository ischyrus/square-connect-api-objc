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





@protocol SQListEmployeeWagesRequest
@end

@interface SQListEmployeeWagesRequest : SQObject

/* Filter the returned wages to only those that are associated with the specified employee. [optional]
 */
@property(nonatomic) NSString* employeeId;
/* The maximum number of `EmployeeWage` results to return per page. The number can range between 1 and 200. The default is 200. [optional]
 */
@property(nonatomic) NSNumber* limit;
/* A pointer to the next page of `EmployeeWage` results to fetch. [optional]
 */
@property(nonatomic) NSString* cursor;

@end
