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


#import "SQError.h"
#import "SQSubscription.h"
#import "SQSubscriptionAction.h"
@protocol SQError;
@class SQError;
@protocol SQSubscription;
@class SQSubscription;
@protocol SQSubscriptionAction;
@class SQSubscriptionAction;



@protocol SQChangeBillingAnchorDateResponse
@end

@interface SQChangeBillingAnchorDateResponse : SQObject

/* Errors encountered during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;
/* The specified subscription for updating billing anchor date. [optional]
 */
@property(nonatomic) SQSubscription* subscription;
/* A list of a single billing anchor date change for the subscription. [optional]
 */
@property(nonatomic) NSArray<SQSubscriptionAction>* actions;

@end
