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


#import "SQInvoicePaymentReminder.h"
#import "SQMoney.h"
@protocol SQInvoicePaymentReminder;
@class SQInvoicePaymentReminder;
@protocol SQMoney;
@class SQMoney;



@protocol SQInvoicePaymentRequest
@end

@interface SQInvoicePaymentRequest : SQObject

/* The Square-generated ID of the payment request in an [invoice](https://developer.squareup.com/reference/square_2023-10-18/objects/Invoice). [optional]
 */
@property(nonatomic) NSString* uid;
/* Indicates how Square processes the payment request. DEPRECATED at version 2021-01-21. Replaced by the `Invoice.delivery_method` and `InvoicePaymentRequest.automatic_payment_source` fields.  One of the following is required when creating an invoice: - (Recommended) The `delivery_method` field of the invoice. To configure an automatic payment, the `automatic_payment_source` field of the payment request is also required. - This `request_method` field. Note that `invoice` objects returned in responses do not include `request_method`. [optional]
 */
@property(nonatomic) NSString* requestMethod;
/* Identifies the payment request type. This type defines how the payment request amount is determined.  This field is required to create a payment request. [optional]
 */
@property(nonatomic) NSString* requestType;
/* The due date (in the invoice's time zone) for the payment request, in `YYYY-MM-DD` format. This field is required to create a payment request. If an `automatic_payment_source` is defined for the request, Square charges the payment source on this date.  After this date, the invoice becomes overdue. For example, a payment `due_date` of 2021-03-09 with a `timezone` of America/Los\\_Angeles becomes overdue at midnight on March 9 in America/Los\\_Angeles (which equals a UTC timestamp of 2021-03-10T08:00:00Z). [optional]
 */
@property(nonatomic) NSString* dueDate;
/* If the payment request specifies `DEPOSIT` or `INSTALLMENT` as the `request_type`,  this indicates the request amount. You cannot specify this when `request_type` is `BALANCE` or when the  payment request includes the `percentage_requested` field. [optional]
 */
@property(nonatomic) SQMoney* fixedAmountRequestedMoney;
/* Specifies the amount for the payment request in percentage:  - When the payment `request_type` is `DEPOSIT`, it is the percentage of the order's total amount. - When the payment `request_type` is `INSTALLMENT`, it is the percentage of the order's total less  the deposit, if requested. The sum of the `percentage_requested` in all installment  payment requests must be equal to 100.  You cannot specify this when the payment `request_type` is `BALANCE` or when the  payment request specifies the `fixed_amount_requested_money` field. [optional]
 */
@property(nonatomic) NSString* percentageRequested;
/* If set to true, the Square-hosted invoice page (the `public_url` field of the invoice)  provides a place for the customer to pay a tip.   This field is allowed only on the final payment request   and the payment `request_type` must be `BALANCE` or `INSTALLMENT`. [optional]
 */
@property(nonatomic) NSNumber* tippingEnabled;
/* The payment method for an automatic payment.  The default value is `NONE`. [optional]
 */
@property(nonatomic) NSString* automaticPaymentSource;
/* The ID of the credit or debit card on file to charge for the payment request. To get the cards on file for a customer, call [ListCards](https://developer.squareup.com/reference/square_2023-10-18/cards-api/list-cards) and include the `customer_id` of the invoice recipient. [optional]
 */
@property(nonatomic) NSString* cardId;
/* A list of one or more reminders to send for the payment request. [optional]
 */
@property(nonatomic) NSArray<SQInvoicePaymentReminder>* reminders;
/* The amount of the payment request, computed using the order amount and information from the various payment request fields (`request_type`, `fixed_amount_requested_money`, and `percentage_requested`). [optional]
 */
@property(nonatomic) SQMoney* computedAmountMoney;
/* The amount of money already paid for the specific payment request.  This amount might include a rounding adjustment if the most recent invoice payment  was in cash in a currency that rounds cash payments (such as, `CAD` or `AUD`). [optional]
 */
@property(nonatomic) SQMoney* totalCompletedAmountMoney;
/* If the most recent payment was a cash payment  in a currency that rounds cash payments (such as, `CAD` or `AUD`) and the payment  is rounded from `computed_amount_money` in the payment request, then this  field specifies the rounding adjustment applied. This amount  might be negative. [optional]
 */
@property(nonatomic) SQMoney* roundingAdjustmentIncludedMoney;

@end
