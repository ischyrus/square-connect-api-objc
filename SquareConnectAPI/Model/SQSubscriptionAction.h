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


#import "SQPhase.h"
@protocol SQPhase;
@class SQPhase;



@protocol SQSubscriptionAction
@end

@interface SQSubscriptionAction : SQObject

/* The ID of an action scoped to a subscription. [optional]
 */
@property(nonatomic) NSString* _id;
/* The type of the action. [optional]
 */
@property(nonatomic) NSString* type;
/* The `YYYY-MM-DD`-formatted date when the action occurs on the subscription. [optional]
 */
@property(nonatomic) NSString* effectiveDate;
/* The new billing anchor day value, for a `CHANGE_BILLING_ANCHOR_DATE` action. [optional]
 */
@property(nonatomic) NSNumber* monthlyBillingAnchorDate;
/* A list of Phases, to pass phase-specific information used in the swap. [optional]
 */
@property(nonatomic) NSArray<SQPhase>* phases;
/* The target subscription plan variation that a subscription switches to, for a `SWAP_PLAN` action. [optional]
 */
@property(nonatomic) NSString* varNewPlanVariationId;

@end
