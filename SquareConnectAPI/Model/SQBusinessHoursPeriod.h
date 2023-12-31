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





@protocol SQBusinessHoursPeriod
@end

@interface SQBusinessHoursPeriod : SQObject

/* The day of the week for this time period. [optional]
 */
@property(nonatomic) NSString* dayOfWeek;
/* The start time of a business hours period, specified in local time using partial-time RFC 3339 format. For example, `8:30:00` for a period starting at 8:30 in the morning. Note that the seconds value is always :00, but it is appended for conformance to the RFC. [optional]
 */
@property(nonatomic) NSString* startLocalTime;
/* The end time of a business hours period, specified in local time using partial-time RFC 3339 format. For example, `21:00:00` for a period ending at 9:00 in the evening. Note that the seconds value is always :00, but it is appended for conformance to the RFC. [optional]
 */
@property(nonatomic) NSString* endLocalTime;

@end
