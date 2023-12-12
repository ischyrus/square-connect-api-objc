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


#import "SQBookingCustomAttributeDeleteResponse.h"
#import "SQError.h"
@protocol SQBookingCustomAttributeDeleteResponse;
@class SQBookingCustomAttributeDeleteResponse;
@protocol SQError;
@class SQError;



@protocol SQBulkDeleteBookingCustomAttributesResponse
@end

@interface SQBulkDeleteBookingCustomAttributesResponse : SQObject

/* A map of responses that correspond to individual delete requests. Each response has the same ID as the corresponding request and contains `booking_id` and  `errors` field. [optional]
 */
@property(nonatomic) NSDictionary<SQBookingCustomAttributeDeleteResponse>* values;
/* Any errors that occurred during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;

@end
