#import "SQCatalogPricingRule.h"

@implementation SQCatalogPricingRule

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"name": @"name", @"timePeriodIds": @"time_period_ids", @"discountId": @"discount_id", @"matchProductsId": @"match_products_id", @"applyProductsId": @"apply_products_id", @"excludeProductsId": @"exclude_products_id", @"validFromDate": @"valid_from_date", @"validFromLocalTime": @"valid_from_local_time", @"validUntilDate": @"valid_until_date", @"validUntilLocalTime": @"valid_until_local_time", @"excludeStrategy": @"exclude_strategy", @"minimumOrderSubtotalMoney": @"minimum_order_subtotal_money", @"customerGroupIdsAny": @"customer_group_ids_any" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"timePeriodIds", @"discountId", @"matchProductsId", @"applyProductsId", @"excludeProductsId", @"validFromDate", @"validFromLocalTime", @"validUntilDate", @"validUntilLocalTime", @"excludeStrategy", @"minimumOrderSubtotalMoney", @"customerGroupIdsAny"];
  return [optionalProperties containsObject:propertyName];
}

@end
