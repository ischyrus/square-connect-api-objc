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


#import "SQDestinationDetails.h"
#import "SQMoney.h"
#import "SQProcessingFee.h"
@protocol SQDestinationDetails;
@class SQDestinationDetails;
@protocol SQMoney;
@class SQMoney;
@protocol SQProcessingFee;
@class SQProcessingFee;



@protocol SQPaymentRefund
@end

@interface SQPaymentRefund : SQObject

/* The unique ID for this refund, generated by Square. 
 */
@property(nonatomic) NSString* _id;
/* The refund's status: - `PENDING` - Awaiting approval. - `COMPLETED` - Successfully completed. - `REJECTED` - The refund was rejected. - `FAILED` - An error occurred. [optional]
 */
@property(nonatomic) NSString* status;
/* The location ID associated with the payment this refund is attached to. [optional]
 */
@property(nonatomic) NSString* locationId;
/* Flag indicating whether or not the refund is linked to an existing payment in Square. [optional]
 */
@property(nonatomic) NSNumber* unlinked;
/* The destination type for this refund.  Current values include `CARD`, `BANK_ACCOUNT`, `WALLET`, `BUY_NOW_PAY_LATER`, `CASH`, and `EXTERNAL`. [optional]
 */
@property(nonatomic) NSString* destinationType;
/* Contains information about the refund destination. This field is populated only if `destination_id` is defined in the `RefundPayment` request. [optional]
 */
@property(nonatomic) SQDestinationDetails* destinationDetails;
/* The amount of money refunded. This amount is specified in the smallest denomination of the applicable currency (for example, US dollar amounts are specified in cents). 
 */
@property(nonatomic) SQMoney* amountMoney;
/* The amount of money the application developer contributed to help cover the refunded amount. This amount is specified in the smallest denomination of the applicable currency (for example, US dollar amounts are specified in cents). For more information, see [Working with Monetary Amounts](https://developer.squareup.com/docs/build-basics/working-with-monetary-amounts). [optional]
 */
@property(nonatomic) SQMoney* appFeeMoney;
/* Processing fees and fee adjustments assessed by Square for this refund. [optional]
 */
@property(nonatomic) NSArray<SQProcessingFee>* processingFee;
/* The ID of the payment associated with this refund. [optional]
 */
@property(nonatomic) NSString* paymentId;
/* The ID of the order associated with the refund. [optional]
 */
@property(nonatomic) NSString* orderId;
/* The reason for the refund. [optional]
 */
@property(nonatomic) NSString* reason;
/* The timestamp of when the refund was created, in RFC 3339 format. [optional]
 */
@property(nonatomic) NSString* createdAt;
/* The timestamp of when the refund was last updated, in RFC 3339 format. [optional]
 */
@property(nonatomic) NSString* updatedAt;
/* An optional ID of the team member associated with taking the payment. [optional]
 */
@property(nonatomic) NSString* teamMemberId;

@end
