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





@protocol SQBookingCustomAttributeDeleteRequest
@end

@interface SQBookingCustomAttributeDeleteRequest : SQObject

/* The ID of the target [booking](https://developer.squareup.com/reference/square_2023-10-18/objects/Booking). 
 */
@property(nonatomic) NSString* bookingId;
/* The key of the custom attribute to delete. This key must match the `key` of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must use the qualified key. 
 */
@property(nonatomic) NSString* key;

@end
