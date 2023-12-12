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





@protocol SQInvoiceAcceptedPaymentMethods
@end

@interface SQInvoiceAcceptedPaymentMethods : SQObject

/* Indicates whether credit card or debit card payments are accepted. The default value is `false`. [optional]
 */
@property(nonatomic) NSNumber* card;
/* Indicates whether Square gift card payments are accepted. The default value is `false`. [optional]
 */
@property(nonatomic) NSNumber* squareGiftCard;
/* Indicates whether ACH bank transfer payments are accepted. The default value is `false`. [optional]
 */
@property(nonatomic) NSNumber* bankAccount;
/* Indicates whether Afterpay (also known as Clearpay) payments are accepted. The default value is `false`.  This option is allowed only for invoices that have a single payment request of the `BALANCE` type. This payment method is supported if the seller account accepts Afterpay payments and the seller location is in a country where Afterpay invoice payments are supported. As a best practice, consider enabling an additional payment method when allowing `buy_now_pay_later` payments. For more information, including detailed requirements and processing limits, see [Buy Now Pay Later payments with Afterpay](https://developer.squareup.com/docs/invoices-api/overview#buy-now-pay-later). [optional]
 */
@property(nonatomic) NSNumber* buyNowPayLater;
/* Indicates whether Cash App payments are accepted. The default value is `false`.  This payment method is supported only for seller [locations](https://developer.squareup.com/reference/square_2023-10-18/objects/Location) in the United States. [optional]
 */
@property(nonatomic) NSNumber* cashAppPay;

@end