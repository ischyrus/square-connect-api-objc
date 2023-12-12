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





@protocol SQOrderLineItemPricingBlocklistsBlockedDiscount
@end

@interface SQOrderLineItemPricingBlocklistsBlockedDiscount : SQObject

/* A unique ID of the `BlockedDiscount` within the order. [optional]
 */
@property(nonatomic) NSString* uid;
/* The `uid` of the discount that should be blocked. Use this field to block ad hoc discounts. For catalog discounts, use the `discount_catalog_object_id` field. [optional]
 */
@property(nonatomic) NSString* discountUid;
/* The `catalog_object_id` of the discount that should be blocked. Use this field to block catalog discounts. For ad hoc discounts, use the `discount_uid` field. [optional]
 */
@property(nonatomic) NSString* discountCatalogObjectId;

@end