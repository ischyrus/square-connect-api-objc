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


#import "SQAddress.h"
#import "SQApplicationDetails.h"
#import "SQBankAccountPaymentDetails.h"
#import "SQBuyNowPayLaterDetails.h"
#import "SQCardPaymentDetails.h"
#import "SQCashPaymentDetails.h"
#import "SQDeviceDetails.h"
#import "SQDigitalWalletDetails.h"
#import "SQExternalPaymentDetails.h"
#import "SQMoney.h"
#import "SQProcessingFee.h"
#import "SQRiskEvaluation.h"
#import "SQSquareAccountDetails.h"
@protocol SQAddress;
@class SQAddress;
@protocol SQApplicationDetails;
@class SQApplicationDetails;
@protocol SQBankAccountPaymentDetails;
@class SQBankAccountPaymentDetails;
@protocol SQBuyNowPayLaterDetails;
@class SQBuyNowPayLaterDetails;
@protocol SQCardPaymentDetails;
@class SQCardPaymentDetails;
@protocol SQCashPaymentDetails;
@class SQCashPaymentDetails;
@protocol SQDeviceDetails;
@class SQDeviceDetails;
@protocol SQDigitalWalletDetails;
@class SQDigitalWalletDetails;
@protocol SQExternalPaymentDetails;
@class SQExternalPaymentDetails;
@protocol SQMoney;
@class SQMoney;
@protocol SQProcessingFee;
@class SQProcessingFee;
@protocol SQRiskEvaluation;
@class SQRiskEvaluation;
@protocol SQSquareAccountDetails;
@class SQSquareAccountDetails;



@protocol SQPayment
@end

@interface SQPayment : SQObject

/* A unique ID for the payment. [optional]
 */
@property(nonatomic) NSString* _id;
/* The timestamp of when the payment was created, in RFC 3339 format. [optional]
 */
@property(nonatomic) NSString* createdAt;
/* The timestamp of when the payment was last updated, in RFC 3339 format. [optional]
 */
@property(nonatomic) NSString* updatedAt;
/* The amount processed for this payment, not including `tip_money`.  The amount is specified in the smallest denomination of the applicable currency (for example, US dollar amounts are specified in cents). For more information, see [Working with Monetary Amounts](https://developer.squareup.com/docs/build-basics/working-with-monetary-amounts). [optional]
 */
@property(nonatomic) SQMoney* amountMoney;
/* The amount designated as a tip.   This amount is specified in the smallest denomination of the applicable currency (for example, US dollar amounts are specified in cents). For more information, see [Working with Monetary Amounts](https://developer.squareup.com/docs/build-basics/working-with-monetary-amounts). [optional]
 */
@property(nonatomic) SQMoney* tipMoney;
/* The total amount for the payment, including `amount_money` and `tip_money`. This amount is specified in the smallest denomination of the applicable currency (for example, US dollar amounts are specified in cents). For more information, see [Working with Monetary Amounts](https://developer.squareup.com/docs/build-basics/working-with-monetary-amounts). [optional]
 */
@property(nonatomic) SQMoney* totalMoney;
/* The amount the developer is taking as a fee for facilitating the payment on behalf of the seller. This amount is specified in the smallest denomination of the applicable currency (for example, US dollar amounts are specified in cents). For more information, see [Take Payments and Collect Fees](https://developer.squareup.com/docs/payments-api/take-payments-and-collect-fees).  The amount cannot be more than 90% of the `total_money` value.  To set this field, `PAYMENTS_WRITE_ADDITIONAL_RECIPIENTS` OAuth permission is required. For more information, see [Permissions](https://developer.squareup.com/docs/payments-api/take-payments-and-collect-fees#permissions). [optional]
 */
@property(nonatomic) SQMoney* appFeeMoney;
/* The initial amount of money approved for this payment. [optional]
 */
@property(nonatomic) SQMoney* approvedMoney;
/* The processing fees and fee adjustments assessed by Square for this payment. [optional]
 */
@property(nonatomic) NSArray<SQProcessingFee>* processingFee;
/* The total amount of the payment refunded to date.   This amount is specified in the smallest denomination of the applicable currency (for example, US dollar amounts are specified in cents). [optional]
 */
@property(nonatomic) SQMoney* refundedMoney;
/* Indicates whether the payment is APPROVED, PENDING, COMPLETED, CANCELED, or FAILED. [optional]
 */
@property(nonatomic) NSString* status;
/* The duration of time after the payment's creation when Square automatically applies the `delay_action` to the payment. This automatic `delay_action` applies only to payments that do not reach a terminal state (COMPLETED, CANCELED, or FAILED) before the `delay_duration` time period.  This field is specified as a time duration, in RFC 3339 format.  Notes: This feature is only supported for card payments.  Default:  - Card-present payments: \"PT36H\" (36 hours) from the creation time. - Card-not-present payments: \"P7D\" (7 days) from the creation time. [optional]
 */
@property(nonatomic) NSString* delayDuration;
/* The action to be applied to the payment when the `delay_duration` has elapsed.  Current values include `CANCEL` and `COMPLETE`. [optional]
 */
@property(nonatomic) NSString* delayAction;
/* The read-only timestamp of when the `delay_action` is automatically applied, in RFC 3339 format.  Note that this field is calculated by summing the payment's `delay_duration` and `created_at` fields. The `created_at` field is generated by Square and might not exactly match the time on your local machine. [optional]
 */
@property(nonatomic) NSString* delayedUntil;
/* The source type for this payment.  Current values include `CARD`, `BANK_ACCOUNT`, `WALLET`, `BUY_NOW_PAY_LATER`, `SQUARE_ACCOUNT`, `CASH` and `EXTERNAL`. For information about these payment source types, see [Take Payments](https://developer.squareup.com/docs/payments-api/take-payments). [optional]
 */
@property(nonatomic) NSString* sourceType;
/* Details about a card payment. These details are only populated if the source_type is `CARD`. [optional]
 */
@property(nonatomic) SQCardPaymentDetails* cardDetails;
/* Details about a cash payment. These details are only populated if the source_type is `CASH`. [optional]
 */
@property(nonatomic) SQCashPaymentDetails* cashDetails;
/* Details about a bank account payment. These details are only populated if the source_type is `BANK_ACCOUNT`. [optional]
 */
@property(nonatomic) SQBankAccountPaymentDetails* bankAccountDetails;
/* Details about an external payment. The details are only populated  if the `source_type` is `EXTERNAL`. [optional]
 */
@property(nonatomic) SQExternalPaymentDetails* externalDetails;
/* Details about an wallet payment. The details are only populated  if the `source_type` is `WALLET`. [optional]
 */
@property(nonatomic) SQDigitalWalletDetails* walletDetails;
/* Details about a Buy Now Pay Later payment. The details are only populated if the `source_type` is `BUY_NOW_PAY_LATER`. For more information, see  [Afterpay Payments](https://developer.squareup.com/docs/payments-api/take-payments/afterpay-payments). [optional]
 */
@property(nonatomic) SQBuyNowPayLaterDetails* buyNowPayLaterDetails;
/* Details about a Square Account payment. The details are only populated if the `source_type` is `SQUARE_ACCOUNT`. [optional]
 */
@property(nonatomic) SQSquareAccountDetails* squareAccountDetails;
/* The ID of the location associated with the payment. [optional]
 */
@property(nonatomic) NSString* locationId;
/* The ID of the order associated with the payment. [optional]
 */
@property(nonatomic) NSString* orderId;
/* An optional ID that associates the payment with an entity in another system. [optional]
 */
@property(nonatomic) NSString* referenceId;
/* The ID of the customer associated with the payment. If the ID is  not provided in the `CreatePayment` request that was used to create the `Payment`,  Square may use information in the request  (such as the billing and shipping address, email address, and payment source)  to identify a matching customer profile in the Customer Directory.  If found, the profile ID is used. If a profile is not found, the  API attempts to create an  [instant profile](https://developer.squareup.com/docs/customers-api/what-it-does#instant-profiles).  If the API cannot create an  instant profile (either because the seller has disabled it or the  seller's region prevents creating it), this field remains unset. Note that  this process is asynchronous and it may take some time before a  customer ID is added to the payment. [optional]
 */
@property(nonatomic) NSString* customerId;
/* __Deprecated__: Use `Payment.team_member_id` instead.  An optional ID of the employee associated with taking the payment. [optional]
 */
@property(nonatomic) NSString* employeeId;
/* An optional ID of the [TeamMember](https://developer.squareup.com/reference/square_2023-10-18/objects/TeamMember) associated with taking the payment. [optional]
 */
@property(nonatomic) NSString* teamMemberId;
/* A list of `refund_id`s identifying refunds for the payment. [optional]
 */
@property(nonatomic) NSArray<NSString*>* refundIds;
/* Provides information about the risk associated with the payment, as determined by Square. This field is present for payments to sellers that have opted in to receive risk evaluations. [optional]
 */
@property(nonatomic) SQRiskEvaluation* riskEvaluation;
/* The buyer's email address. [optional]
 */
@property(nonatomic) NSString* buyerEmailAddress;
/* The buyer's billing address. [optional]
 */
@property(nonatomic) SQAddress* billingAddress;
/* The buyer's shipping address. [optional]
 */
@property(nonatomic) SQAddress* shippingAddress;
/* An optional note to include when creating a payment. [optional]
 */
@property(nonatomic) NSString* note;
/* Additional payment information that gets added to the customer's card statement as part of the statement description.  Note that the `statement_description_identifier` might get truncated on the statement description to fit the required information including the Square identifier (SQ *) and the name of the seller taking the payment. [optional]
 */
@property(nonatomic) NSString* statementDescriptionIdentifier;
/* Actions that can be performed on this payment: - `EDIT_AMOUNT_UP` - The payment amount can be edited up. - `EDIT_AMOUNT_DOWN` - The payment amount can be edited down. - `EDIT_TIP_AMOUNT_UP` - The tip amount can be edited up. - `EDIT_TIP_AMOUNT_DOWN` - The tip amount can be edited down. - `EDIT_DELAY_ACTION` - The delay_action can be edited. [optional]
 */
@property(nonatomic) NSArray<NSString*>* capabilities;
/* The payment's receipt number. The field is missing if a payment is canceled. [optional]
 */
@property(nonatomic) NSString* receiptNumber;
/* The URL for the payment's receipt. The field is only populated for COMPLETED payments. [optional]
 */
@property(nonatomic) NSString* receiptUrl;
/* Details about the device that took the payment. [optional]
 */
@property(nonatomic) SQDeviceDetails* deviceDetails;
/* Details about the application that took the payment. [optional]
 */
@property(nonatomic) SQApplicationDetails* applicationDetails;
/* Used for optimistic concurrency. This opaque token identifies a specific version of the `Payment` object. [optional]
 */
@property(nonatomic) NSString* versionToken;

@end
