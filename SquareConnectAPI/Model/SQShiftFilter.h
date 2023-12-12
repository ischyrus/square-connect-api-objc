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


#import "SQShiftWorkday.h"
#import "SQTimeRange.h"
@protocol SQShiftWorkday;
@class SQShiftWorkday;
@protocol SQTimeRange;
@class SQTimeRange;



@protocol SQShiftFilter
@end

@interface SQShiftFilter : SQObject

/* Fetch shifts for the specified location. 
 */
@property(nonatomic) NSArray<NSString*>* locationIds;
/* Fetch shifts for the specified employees. DEPRECATED at version 2020-08-26. Use `team_member_ids` instead. [optional]
 */
@property(nonatomic) NSArray<NSString*>* employeeIds;
/* Fetch a `Shift` instance by `Shift.status`. [optional]
 */
@property(nonatomic) NSString* status;
/* Fetch `Shift` instances that start in the time range - Inclusive. [optional]
 */
@property(nonatomic) SQTimeRange* start;
/* Fetch the `Shift` instances that end in the time range - Inclusive. [optional]
 */
@property(nonatomic) SQTimeRange* end;
/* Fetch the `Shift` instances based on the workday date range. [optional]
 */
@property(nonatomic) SQShiftWorkday* workday;
/* Fetch shifts for the specified team members. Replaced `employee_ids` at version \"2020-08-26\". 
 */
@property(nonatomic) NSArray<NSString*>* teamMemberIds;

@end
