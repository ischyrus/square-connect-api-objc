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


#import "SQAppointmentSegment.h"
@protocol SQAppointmentSegment;
@class SQAppointmentSegment;



@protocol SQAvailability
@end

@interface SQAvailability : SQObject

/* The RFC 3339 timestamp specifying the beginning time of the slot available for booking. [optional]
 */
@property(nonatomic) NSString* startAt;
/* The ID of the location available for booking. [optional]
 */
@property(nonatomic) NSString* locationId;
/* The list of appointment segments available for booking [optional]
 */
@property(nonatomic) NSArray<SQAppointmentSegment>* appointmentSegments;

@end
