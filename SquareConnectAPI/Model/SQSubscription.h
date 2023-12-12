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


#import "SQMoney.h"
#import "SQPhase.h"
#import "SQSubscriptionAction.h"
#import "SQSubscriptionSource.h"
@protocol SQMoney;
@class SQMoney;
@protocol SQPhase;
@class SQPhase;
@protocol SQSubscriptionAction;
@class SQSubscriptionAction;
@protocol SQSubscriptionSource;
@class SQSubscriptionSource;



@protocol SQSubscription
@end

@interface SQSubscription : SQObject

/* The Square-assigned ID of the subscription. [optional]
 */
@property(nonatomic) NSString* _id;
/* The ID of the location associated with the subscription. [optional]
 */
@property(nonatomic) NSString* locationId;
/* The ID of the subscribed-to [subscription plan variation](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogSubscriptionPlanVariation). [optional]
 */
@property(nonatomic) NSString* planVariationId;
/* The ID of the subscribing [customer](https://developer.squareup.com/reference/square_2023-10-18/objects/Customer) profile. [optional]
 */
@property(nonatomic) NSString* customerId;
/* The `YYYY-MM-DD`-formatted date (for example, 2013-01-15) to start the subscription. [optional]
 */
@property(nonatomic) NSString* startDate;
/* The `YYYY-MM-DD`-formatted date (for example, 2013-01-15) to cancel the subscription,  when the subscription status changes to `CANCELED` and the subscription billing stops.  If this field is not set, the subscription ends according its subscription plan.  This field cannot be updated, other than being cleared. [optional]
 */
@property(nonatomic) NSString* canceledDate;
/* The `YYYY-MM-DD`-formatted date up to when the subscriber is invoiced for the subscription.  After the invoice is sent for a given billing period, this date will be the last day of the billing period. For example, suppose for the month of May a subscriber gets an invoice (or charged the card) on May 1. For the monthly billing scenario, this date is then set to May 31. [optional]
 */
@property(nonatomic) NSString* chargedThroughDate;
/* The current status of the subscription. [optional]
 */
@property(nonatomic) NSString* status;
/* The tax amount applied when billing the subscription. The percentage is expressed in decimal form, using a `'.'` as the decimal separator and without a `'%'` sign. For example, a value of `7.5` corresponds to 7.5%. [optional]
 */
@property(nonatomic) NSString* taxPercentage;
/* The IDs of the [invoices](https://developer.squareup.com/reference/square_2023-10-18/objects/Invoice) created for the subscription, listed in order when the invoices were created (newest invoices appear first). [optional]
 */
@property(nonatomic) NSArray<NSString*>* invoiceIds;
/* A custom price to apply for the subscription. If specified, it overrides the price configured by the subscription plan. [optional]
 */
@property(nonatomic) SQMoney* priceOverrideMoney;
/* The version of the object. When updating an object, the version supplied must match the version in the database, otherwise the write will be rejected as conflicting. [optional]
 */
@property(nonatomic) NSNumber* version;
/* The timestamp when the subscription was created, in RFC 3339 format. [optional]
 */
@property(nonatomic) NSString* createdAt;
/* The ID of the [subscriber's](https://developer.squareup.com/reference/square_2023-10-18/objects/Customer) [card](https://developer.squareup.com/reference/square_2023-10-18/objects/Card) used to charge for the subscription. [optional]
 */
@property(nonatomic) NSString* cardId;
/* Timezone that will be used in date calculations for the subscription. Defaults to the timezone of the location based on `location_id`. Format: the IANA Timezone Database identifier for the location timezone (for example, `America/Los_Angeles`). [optional]
 */
@property(nonatomic) NSString* timezone;
/* The origination details of the subscription. [optional]
 */
@property(nonatomic) SQSubscriptionSource* source;
/* The list of scheduled actions on this subscription. It is set only in the response from   [RetrieveSubscription](https://developer.squareup.com/reference/square_2023-10-18/subscriptions-api/retrieve-subscription) with the query parameter of `include=actions` or from  [SearchSubscriptions](https://developer.squareup.com/reference/square_2023-10-18/subscriptions-api/search-subscriptions) with the input parameter  of `include:[\"actions\"]`. [optional]
 */
@property(nonatomic) NSArray<SQSubscriptionAction>* actions;
/* The day of the month on which the subscription will issue invoices and publish orders. [optional]
 */
@property(nonatomic) NSNumber* monthlyBillingAnchorDate;
/* array of phases for this subscription [optional]
 */
@property(nonatomic) NSArray<SQPhase>* phases;

@end