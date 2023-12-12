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


#import "SQFulfillment.h"
#import "SQMoney.h"
#import "SQOrderLineItem.h"
#import "SQOrderLineItemDiscount.h"
#import "SQOrderLineItemTax.h"
#import "SQOrderMoneyAmounts.h"
#import "SQOrderPricingOptions.h"
#import "SQOrderReturn.h"
#import "SQOrderReward.h"
#import "SQOrderRoundingAdjustment.h"
#import "SQOrderServiceCharge.h"
#import "SQOrderSource.h"
#import "SQRefund.h"
#import "SQTender.h"
@protocol SQFulfillment;
@class SQFulfillment;
@protocol SQMoney;
@class SQMoney;
@protocol SQOrderLineItem;
@class SQOrderLineItem;
@protocol SQOrderLineItemDiscount;
@class SQOrderLineItemDiscount;
@protocol SQOrderLineItemTax;
@class SQOrderLineItemTax;
@protocol SQOrderMoneyAmounts;
@class SQOrderMoneyAmounts;
@protocol SQOrderPricingOptions;
@class SQOrderPricingOptions;
@protocol SQOrderReturn;
@class SQOrderReturn;
@protocol SQOrderReward;
@class SQOrderReward;
@protocol SQOrderRoundingAdjustment;
@class SQOrderRoundingAdjustment;
@protocol SQOrderServiceCharge;
@class SQOrderServiceCharge;
@protocol SQOrderSource;
@class SQOrderSource;
@protocol SQRefund;
@class SQRefund;
@protocol SQTender;
@class SQTender;



@protocol SQOrder
@end

@interface SQOrder : SQObject

/* The order's unique ID. [optional]
 */
@property(nonatomic) NSString* _id;
/* The ID of the seller location that this order is associated with. 
 */
@property(nonatomic) NSString* locationId;
/* A client-specified ID to associate an entity in another system with this order. [optional]
 */
@property(nonatomic) NSString* referenceId;
/* The origination details of the order. [optional]
 */
@property(nonatomic) SQOrderSource* source;
/* The ID of the [customer](https://developer.squareup.com/reference/square_2023-10-18/objects/Customer) associated with the order.  You should specify a `customer_id` on the order (or the payment) to ensure that transactions are reliably linked to customers. Omitting this field might result in the creation of new [instant profiles](https://developer.squareup.com/docs/customers-api/what-it-does#instant-profiles). [optional]
 */
@property(nonatomic) NSString* customerId;
/* The line items included in the order. [optional]
 */
@property(nonatomic) NSArray<SQOrderLineItem>* lineItems;
/* The list of all taxes associated with the order.  Taxes can be scoped to either `ORDER` or `LINE_ITEM`. For taxes with `LINE_ITEM` scope, an `OrderLineItemAppliedTax` must be added to each line item that the tax applies to. For taxes with `ORDER` scope, the server generates an `OrderLineItemAppliedTax` for every line item.  On reads, each tax in the list includes the total amount of that tax applied to the order.  __IMPORTANT__: If `LINE_ITEM` scope is set on any taxes in this field, using the deprecated `line_items.taxes` field results in an error. Use `line_items.applied_taxes` instead. [optional]
 */
@property(nonatomic) NSArray<SQOrderLineItemTax>* taxes;
/* The list of all discounts associated with the order.  Discounts can be scoped to either `ORDER` or `LINE_ITEM`. For discounts scoped to `LINE_ITEM`, an `OrderLineItemAppliedDiscount` must be added to each line item that the discount applies to. For discounts with `ORDER` scope, the server generates an `OrderLineItemAppliedDiscount` for every line item.  __IMPORTANT__: If `LINE_ITEM` scope is set on any discounts in this field, using the deprecated `line_items.discounts` field results in an error. Use `line_items.applied_discounts` instead. [optional]
 */
@property(nonatomic) NSArray<SQOrderLineItemDiscount>* discounts;
/* A list of service charges applied to the order. [optional]
 */
@property(nonatomic) NSArray<SQOrderServiceCharge>* serviceCharges;
/* Details about order fulfillment.  Orders can only be created with at most one fulfillment. However, orders returned by the API might contain multiple fulfillments. [optional]
 */
@property(nonatomic) NSArray<SQFulfillment>* fulfillments;
/* A collection of items from sale orders being returned in this one. Normally part of an itemized return or exchange. There is exactly one `Return` object per sale `Order` being referenced. [optional]
 */
@property(nonatomic) NSArray<SQOrderReturn>* returns;
/* The rollup of the returned money amounts. [optional]
 */
@property(nonatomic) SQOrderMoneyAmounts* returnAmounts;
/* The net money amounts (sale money - return money). [optional]
 */
@property(nonatomic) SQOrderMoneyAmounts* netAmounts;
/* A positive rounding adjustment to the total of the order. This adjustment is commonly used to apply cash rounding when the minimum unit of account is smaller than the lowest physical denomination of the currency. [optional]
 */
@property(nonatomic) SQOrderRoundingAdjustment* roundingAdjustment;
/* The tenders that were used to pay for the order. [optional]
 */
@property(nonatomic) NSArray<SQTender>* tenders;
/* The refunds that are part of this order. [optional]
 */
@property(nonatomic) NSArray<SQRefund>* refunds;
/* Application-defined data attached to this order. Metadata fields are intended to store descriptive references or associations with an entity in another system or store brief information about the object. Square does not process this field; it only stores and returns it in relevant API calls. Do not use metadata to store any sensitive information (such as personally identifiable information or card details).  Keys written by applications must be 60 characters or less and must be in the character set `[a-zA-Z0-9_-]`. Entries can also include metadata generated by Square. These keys are prefixed with a namespace, separated from the key with a ':' character.  Values have a maximum length of 255 characters.  An application can have up to 10 entries per metadata field.  Entries written by applications are private and can only be read or modified by the same application.  For more information, see  [Metadata](https://developer.squareup.com/docs/build-basics/metadata). [optional]
 */
@property(nonatomic) NSDictionary<NSString*, NSString*>* metadata;
/* The timestamp for when the order was created, in RFC 3339 format (for example, \"2016-09-04T23:59:33.123Z\"). [optional]
 */
@property(nonatomic) NSString* createdAt;
/* The timestamp for when the order was last updated, in RFC 3339 format (for example, \"2016-09-04T23:59:33.123Z\"). [optional]
 */
@property(nonatomic) NSString* updatedAt;
/* The timestamp for when the order reached a terminal [state](https://developer.squareup.com/reference/square_2023-10-18/enums/OrderState), in RFC 3339 format (for example \"2016-09-04T23:59:33.123Z\"). [optional]
 */
@property(nonatomic) NSString* closedAt;
/* The current state of the order. [optional]
 */
@property(nonatomic) NSString* state;
/* The version number, which is incremented each time an update is committed to the order. Orders not created through the API do not include a version number and therefore cannot be updated.  [Read more about working with versions](https://developer.squareup.com/docs/orders-api/manage-orders/update-orders). [optional]
 */
@property(nonatomic) NSNumber* version;
/* The total amount of money to collect for the order. [optional]
 */
@property(nonatomic) SQMoney* totalMoney;
/* The total amount of tax money to collect for the order. [optional]
 */
@property(nonatomic) SQMoney* totalTaxMoney;
/* The total amount of discount money to collect for the order. [optional]
 */
@property(nonatomic) SQMoney* totalDiscountMoney;
/* The total amount of tip money to collect for the order. [optional]
 */
@property(nonatomic) SQMoney* totalTipMoney;
/* The total amount of money collected in service charges for the order.  Note: `total_service_charge_money` is the sum of `applied_money` fields for each individual service charge. Therefore, `total_service_charge_money` only includes inclusive tax amounts, not additive tax amounts. [optional]
 */
@property(nonatomic) SQMoney* totalServiceChargeMoney;
/* A short-term identifier for the order (such as a customer first name, table number, or auto-generated order number that resets daily). [optional]
 */
@property(nonatomic) NSString* ticketName;
/* Pricing options for an order. The options affect how the order's price is calculated. They can be used, for example, to apply automatic price adjustments that are based on preconfigured [pricing rules](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogPricingRule). [optional]
 */
@property(nonatomic) SQOrderPricingOptions* pricingOptions;
/* A set-like list of Rewards that have been added to the Order. [optional]
 */
@property(nonatomic) NSArray<SQOrderReward>* rewards;
/* The net amount of money due on the order. [optional]
 */
@property(nonatomic) SQMoney* netAmountDueMoney;

@end