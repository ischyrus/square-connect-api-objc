#import "SQV1PaymentItemization.h"

@implementation SQV1PaymentItemization

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"name": @"name", @"quantity": @"quantity", @"itemizationType": @"itemization_type", @"itemDetail": @"item_detail", @"notes": @"notes", @"itemVariationName": @"item_variation_name", @"totalMoney": @"total_money", @"singleQuantityMoney": @"single_quantity_money", @"grossSalesMoney": @"gross_sales_money", @"discountMoney": @"discount_money", @"netSalesMoney": @"net_sales_money", @"taxes": @"taxes", @"discounts": @"discounts", @"modifiers": @"modifiers" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"quantity", @"itemizationType", @"itemDetail", @"notes", @"itemVariationName", @"totalMoney", @"singleQuantityMoney", @"grossSalesMoney", @"discountMoney", @"netSalesMoney", @"taxes", @"discounts", @"modifiers"];
  return [optionalProperties containsObject:propertyName];
}

@end
