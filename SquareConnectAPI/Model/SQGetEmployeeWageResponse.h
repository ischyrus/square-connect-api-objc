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


#import "SQEmployeeWage.h"
#import "SQError.h"
@protocol SQEmployeeWage;
@class SQEmployeeWage;
@protocol SQError;
@class SQError;



@protocol SQGetEmployeeWageResponse
@end

@interface SQGetEmployeeWageResponse : SQObject

/* The requested `EmployeeWage` object. [optional]
 */
@property(nonatomic) SQEmployeeWage* employeeWage;
/* Any errors that occurred during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;

@end
