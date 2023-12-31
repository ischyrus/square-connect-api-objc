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
@protocol SQMoney;
@class SQMoney;



@protocol SQGiftCardActivityRedeem
@end

@interface SQGiftCardActivityRedeem : SQObject

/* The amount deducted from the gift card for the redemption. This value is a positive integer.  Applications that use a custom payment processing system must specify this amount in the  [CreateGiftCardActivity](https://developer.squareup.com/reference/square_2023-10-18/gift-card-activities-api/create-gift-card-activity) request. 
 */
@property(nonatomic) SQMoney* amountMoney;
/* The ID of the payment that represents the gift card redemption. Square populates this field  if the payment was processed by Square. [optional]
 */
@property(nonatomic) NSString* paymentId;
/* A client-specified ID that associates the gift card activity with an entity in another system.   Applications that use a custom payment processing system can use this field to track information related to an order or payment. [optional]
 */
@property(nonatomic) NSString* referenceId;
/* The status of the gift card redemption. Gift cards redeemed from Square Point of Sale or the  Square Seller Dashboard use a two-state process: `PENDING`  to `COMPLETED` or `PENDING` to  `CANCELED`. Gift cards redeemed using the Gift Card Activities API  always have a `COMPLETED` status. [optional]
 */
@property(nonatomic) NSString* status;

@end
