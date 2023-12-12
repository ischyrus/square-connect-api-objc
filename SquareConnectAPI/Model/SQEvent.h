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


#import "SQEventData.h"
@protocol SQEventData;
@class SQEventData;



@protocol SQEvent
@end

@interface SQEvent : SQObject

/* The ID of the target merchant associated with the event. [optional]
 */
@property(nonatomic) NSString* merchantId;
/* The ID of the location associated with the event. [optional]
 */
@property(nonatomic) NSString* locationId;
/* The type of event this represents. [optional]
 */
@property(nonatomic) NSString* type;
/* A unique ID for the event. [optional]
 */
@property(nonatomic) NSString* eventId;
/* Timestamp of when the event was created, in RFC 3339 format. [optional]
 */
@property(nonatomic) NSString* createdAt;
/* Data associated with the event. [optional]
 */
@property(nonatomic) SQEventData* data;

@end
