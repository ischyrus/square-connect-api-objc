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





@protocol SQListPayoutsRequest
@end

@interface SQListPayoutsRequest : SQObject

/* The ID of the location for which to list the payouts. By default, payouts are returned for the default (main) location associated with the seller. [optional]
 */
@property(nonatomic) NSString* locationId;
/* If provided, only payouts with the given status are returned. [optional]
 */
@property(nonatomic) NSString* status;
/* The timestamp for the beginning of the payout creation time, in RFC 3339 format. Inclusive. Default: The current time minus one year. [optional]
 */
@property(nonatomic) NSString* beginTime;
/* The timestamp for the end of the payout creation time, in RFC 3339 format. Default: The current time. [optional]
 */
@property(nonatomic) NSString* endTime;
/* The order in which payouts are listed. [optional]
 */
@property(nonatomic) NSString* sortOrder;
/* A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). If request parameters change between requests, subsequent results may contain duplicates or missing records. [optional]
 */
@property(nonatomic) NSString* cursor;
/* The maximum number of results to be returned in a single page. It is possible to receive fewer results than the specified limit on a given page. The default value of 100 is also the maximum allowed value. If the provided value is greater than 100, it is ignored and the default value is used instead. Default: `100` [optional]
 */
@property(nonatomic) NSNumber* limit;

@end
