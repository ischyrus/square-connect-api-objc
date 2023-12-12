#import "SQOrderLineItem.h"

@implementation SQOrderLineItem

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"uid": @"uid", @"name": @"name", @"quantity": @"quantity", @"quantityUnit": @"quantity_unit", @"note": @"note", @"catalogObjectId": @"catalog_object_id", @"catalogVersion": @"catalog_version", @"variationName": @"variation_name", @"itemType": @"item_type", @"metadata": @"metadata", @"modifiers": @"modifiers", @"appliedTaxes": @"applied_taxes", @"appliedDiscounts": @"applied_discounts", @"appliedServiceCharges": @"applied_service_charges", @"basePriceMoney": @"base_price_money", @"variationTotalPriceMoney": @"variation_total_price_money", @"grossSalesMoney": @"gross_sales_money", @"totalTaxMoney": @"total_tax_money", @"totalDiscountMoney": @"total_discount_money", @"totalMoney": @"total_money", @"pricingBlocklists": @"pricing_blocklists", @"totalServiceChargeMoney": @"total_service_charge_money" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"uid", @"name", @"quantityUnit", @"note", @"catalogObjectId", @"catalogVersion", @"variationName", @"itemType", @"metadata", @"modifiers", @"appliedTaxes", @"appliedDiscounts", @"appliedServiceCharges", @"basePriceMoney", @"variationTotalPriceMoney", @"grossSalesMoney", @"totalTaxMoney", @"totalDiscountMoney", @"totalMoney", @"pricingBlocklists", @"totalServiceChargeMoney"];
  return [optionalProperties containsObject:propertyName];
}

@end
