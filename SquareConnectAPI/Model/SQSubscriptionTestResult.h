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





@protocol SQSubscriptionTestResult
@end

@interface SQSubscriptionTestResult : SQObject

/* A Square-generated unique ID for the subscription test result. [optional]
 */
@property(nonatomic) NSString* _id;
/* The status code returned by the subscription notification URL. [optional]
 */
@property(nonatomic) NSNumber* statusCode;
/* An object containing the payload of the test event. For example, a `payment.created` event. [optional]
 */
@property(nonatomic) NSString* payload;
/* The timestamp of when the subscription was created, in RFC 3339 format.  For example, \"2016-09-04T23:59:33.123Z\". [optional]
 */
@property(nonatomic) NSString* createdAt;
/* The timestamp of when the subscription was updated, in RFC 3339 format. For example, \"2016-09-04T23:59:33.123Z\". Because a subscription test result is unique, this field is the same as the `created_at` field. [optional]
 */
@property(nonatomic) NSString* updatedAt;

@end