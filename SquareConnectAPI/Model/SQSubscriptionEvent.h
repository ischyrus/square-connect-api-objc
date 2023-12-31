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


#import "SQInfo.h"
#import "SQPhase.h"
@protocol SQInfo;
@class SQInfo;
@protocol SQPhase;
@class SQPhase;



@protocol SQSubscriptionEvent
@end

@interface SQSubscriptionEvent : SQObject

/* The ID of the subscription event. 
 */
@property(nonatomic) NSString* _id;
/* Type of the subscription event. 
 */
@property(nonatomic) NSString* subscriptionEventType;
/* The `YYYY-MM-DD`-formatted date (for example, 2013-01-15) when the subscription event occurred. 
 */
@property(nonatomic) NSString* effectiveDate;
/* The day-of-the-month the billing anchor date was changed to, if applicable. [optional]
 */
@property(nonatomic) NSNumber* monthlyBillingAnchorDate;
/* Additional information about the subscription event. [optional]
 */
@property(nonatomic) SQInfo* info;
/* A list of Phases, to pass phase-specific information used in the swap. [optional]
 */
@property(nonatomic) NSArray<SQPhase>* phases;
/* The ID of the subscription plan variation associated with the subscription. 
 */
@property(nonatomic) NSString* planVariationId;

@end
