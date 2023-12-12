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


#import "SQBooking.h"
@protocol SQBooking;
@class SQBooking;



@protocol SQUpdateBookingRequest
@end

@interface SQUpdateBookingRequest : SQObject

/* A unique key to make this request an idempotent operation. [optional]
 */
@property(nonatomic) NSString* idempotencyKey;
/* The booking to be updated. Individual attributes explicitly specified here override the corresponding values of the existing booking. 
 */
@property(nonatomic) SQBooking* booking;

@end
