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





@protocol SQListEmployeesRequest
@end

@interface SQListEmployeesRequest : SQObject

/*  [optional]
 */
@property(nonatomic) NSString* locationId;
/* Specifies the EmployeeStatus to filter the employee by. [optional]
 */
@property(nonatomic) NSString* status;
/* The number of employees to be returned on each page. [optional]
 */
@property(nonatomic) NSNumber* limit;
/* The token required to retrieve the specified page of results. [optional]
 */
@property(nonatomic) NSString* cursor;

@end
