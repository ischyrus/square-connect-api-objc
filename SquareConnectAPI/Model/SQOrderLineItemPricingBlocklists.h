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


#import "SQOrderLineItemPricingBlocklistsBlockedDiscount.h"
#import "SQOrderLineItemPricingBlocklistsBlockedTax.h"
@protocol SQOrderLineItemPricingBlocklistsBlockedDiscount;
@class SQOrderLineItemPricingBlocklistsBlockedDiscount;
@protocol SQOrderLineItemPricingBlocklistsBlockedTax;
@class SQOrderLineItemPricingBlocklistsBlockedTax;



@protocol SQOrderLineItemPricingBlocklists
@end

@interface SQOrderLineItemPricingBlocklists : SQObject

/* A list of discounts blocked from applying to the line item. Discounts can be blocked by the `discount_uid` (for ad hoc discounts) or the `discount_catalog_object_id` (for catalog discounts). [optional]
 */
@property(nonatomic) NSArray<SQOrderLineItemPricingBlocklistsBlockedDiscount>* blockedDiscounts;
/* A list of taxes blocked from applying to the line item. Taxes can be blocked by the `tax_uid` (for ad hoc taxes) or the `tax_catalog_object_id` (for catalog taxes). [optional]
 */
@property(nonatomic) NSArray<SQOrderLineItemPricingBlocklistsBlockedTax>* blockedTaxes;

@end