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


#import "SQWebhookSubscription.h"
@protocol SQWebhookSubscription;
@class SQWebhookSubscription;



@protocol SQCreateWebhookSubscriptionRequest
@end

@interface SQCreateWebhookSubscriptionRequest : SQObject

/* A unique string that identifies the [CreateWebhookSubscription](https://developer.squareup.com/reference/square_2023-10-18/webhook-subscriptions-api/create-webhook-subscription) request. [optional]
 */
@property(nonatomic) NSString* idempotencyKey;
/* The [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription) to create. 
 */
@property(nonatomic) SQWebhookSubscription* subscription;

@end
