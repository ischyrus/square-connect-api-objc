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


#import "SQFulfillmentPickupDetailsCurbsidePickupDetails.h"
#import "SQFulfillmentRecipient.h"
@protocol SQFulfillmentPickupDetailsCurbsidePickupDetails;
@class SQFulfillmentPickupDetailsCurbsidePickupDetails;
@protocol SQFulfillmentRecipient;
@class SQFulfillmentRecipient;



@protocol SQFulfillmentPickupDetails
@end

@interface SQFulfillmentPickupDetails : SQObject

/* Information about the person to pick up this fulfillment from a physical location. [optional]
 */
@property(nonatomic) SQFulfillmentRecipient* recipient;
/* The [timestamp](https://developer.squareup.com/docs/build-basics/working-with-dates) indicating when this fulfillment expires if it is not accepted. The timestamp must be in RFC 3339 format (for example, \"2016-09-04T23:59:33.123Z\"). The expiration time can only be set up to 7 days in the future. If `expires_at` is not set, this pickup fulfillment is automatically accepted when placed. [optional]
 */
@property(nonatomic) NSString* expiresAt;
/* The duration of time after which an open and accepted pickup fulfillment is automatically moved to the `COMPLETED` state. The duration must be in RFC 3339 format (for example, \"P1W3D\").  If not set, this pickup fulfillment remains accepted until it is canceled or completed. [optional]
 */
@property(nonatomic) NSString* autoCompleteDuration;
/* The schedule type of the pickup fulfillment. Defaults to `SCHEDULED`. [optional]
 */
@property(nonatomic) NSString* scheduleType;
/* The [timestamp](https://developer.squareup.com/docs/build-basics/working-with-dates) that represents the start of the pickup window. Must be in RFC 3339 timestamp format, e.g., \"2016-09-04T23:59:33.123Z\".  For fulfillments with the schedule type `ASAP`, this is automatically set to the current time plus the expected duration to prepare the fulfillment. [optional]
 */
@property(nonatomic) NSString* pickupAt;
/* The window of time in which the order should be picked up after the `pickup_at` timestamp. Must be in RFC 3339 duration format, e.g., \"P1W3D\". Can be used as an informational guideline for merchants. [optional]
 */
@property(nonatomic) NSString* pickupWindowDuration;
/* The duration of time it takes to prepare this fulfillment. The duration must be in RFC 3339 format (for example, \"P1W3D\"). [optional]
 */
@property(nonatomic) NSString* prepTimeDuration;
/* A note to provide additional instructions about the pickup fulfillment displayed in the Square Point of Sale application and set by the API. [optional]
 */
@property(nonatomic) NSString* note;
/* The [timestamp](https://developer.squareup.com/docs/build-basics/working-with-dates) indicating when the fulfillment was placed. The timestamp must be in RFC 3339 format (for example, \"2016-09-04T23:59:33.123Z\"). [optional]
 */
@property(nonatomic) NSString* placedAt;
/* The [timestamp](https://developer.squareup.com/docs/build-basics/working-with-dates) indicating when the fulfillment was accepted. The timestamp must be in RFC 3339 format (for example, \"2016-09-04T23:59:33.123Z\"). [optional]
 */
@property(nonatomic) NSString* acceptedAt;
/* The [timestamp](https://developer.squareup.com/docs/build-basics/working-with-dates) indicating when the fulfillment was rejected. The timestamp must be in RFC 3339 format (for example, \"2016-09-04T23:59:33.123Z\"). [optional]
 */
@property(nonatomic) NSString* rejectedAt;
/* The [timestamp](https://developer.squareup.com/docs/build-basics/working-with-dates) indicating when the fulfillment is marked as ready for pickup. The timestamp must be in RFC 3339 format (for example, \"2016-09-04T23:59:33.123Z\"). [optional]
 */
@property(nonatomic) NSString* readyAt;
/* The [timestamp](https://developer.squareup.com/docs/build-basics/working-with-dates) indicating when the fulfillment expired. The timestamp must be in RFC 3339 format (for example, \"2016-09-04T23:59:33.123Z\"). [optional]
 */
@property(nonatomic) NSString* expiredAt;
/* The [timestamp](https://developer.squareup.com/docs/build-basics/working-with-dates) indicating when the fulfillment was picked up by the recipient. The timestamp must be in RFC 3339 format (for example, \"2016-09-04T23:59:33.123Z\"). [optional]
 */
@property(nonatomic) NSString* pickedUpAt;
/* The [timestamp](https://developer.squareup.com/docs/build-basics/working-with-dates) indicating when the fulfillment was canceled. The timestamp must be in RFC 3339 format (for example, \"2016-09-04T23:59:33.123Z\"). [optional]
 */
@property(nonatomic) NSString* canceledAt;
/* A description of why the pickup was canceled. The maximum length: 100 characters. [optional]
 */
@property(nonatomic) NSString* cancelReason;
/* If set to `true`, indicates that this pickup order is for curbside pickup, not in-store pickup. [optional]
 */
@property(nonatomic) NSNumber* isCurbsidePickup;
/* Specific details for curbside pickup. These details can only be populated if `is_curbside_pickup` is set to `true`. [optional]
 */
@property(nonatomic) SQFulfillmentPickupDetailsCurbsidePickupDetails* curbsidePickupDetails;

@end
