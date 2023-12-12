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





@protocol SQOrderPricingOptions
@end

@interface SQOrderPricingOptions : SQObject

/* The option to determine whether pricing rule-based discounts are automatically applied to an order. [optional]
 */
@property(nonatomic) NSNumber* autoApplyDiscounts;
/* The option to determine whether rule-based taxes are automatically applied to an order when the criteria of the corresponding rules are met. [optional]
 */
@property(nonatomic) NSNumber* autoApplyTaxes;

@end