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
#import "SQError.h"
@protocol SQBooking;
@class SQBooking;
@protocol SQError;
@class SQError;



@protocol SQCreateBookingResponse
@end

@interface SQCreateBookingResponse : SQObject

/* The booking that was created. [optional]
 */
@property(nonatomic) SQBooking* booking;
/* Errors that occurred during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;

@end
