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





@protocol SQListBookingsRequest
@end

@interface SQListBookingsRequest : SQObject

/* The maximum number of results per page to return in a paged response. [optional]
 */
@property(nonatomic) NSNumber* limit;
/* The pagination cursor from the preceding response to return the next page of the results. Do not set this when retrieving the first page of the results. [optional]
 */
@property(nonatomic) NSString* cursor;
/* The [customer](https://developer.squareup.com/reference/square_2023-10-18/objects/Customer) for whom to retrieve bookings. If this is not set, bookings for all customers are retrieved. [optional]
 */
@property(nonatomic) NSString* customerId;
/* The team member for whom to retrieve bookings. If this is not set, bookings of all members are retrieved. [optional]
 */
@property(nonatomic) NSString* teamMemberId;
/* The location for which to retrieve bookings. If this is not set, all locations' bookings are retrieved. [optional]
 */
@property(nonatomic) NSString* locationId;
/* The RFC 3339 timestamp specifying the earliest of the start time. If this is not set, the current time is used. [optional]
 */
@property(nonatomic) NSString* startAtMin;
/* The RFC 3339 timestamp specifying the latest of the start time. If this is not set, the time of 31 days after `start_at_min` is used. [optional]
 */
@property(nonatomic) NSString* startAtMax;

@end
