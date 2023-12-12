#import "SQOrderReturnLineItem.h"

@implementation SQOrderReturnLineItem

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"uid": @"uid", @"sourceLineItemUid": @"source_line_item_uid", @"name": @"name", @"quantity": @"quantity", @"quantityUnit": @"quantity_unit", @"note": @"note", @"catalogObjectId": @"catalog_object_id", @"catalogVersion": @"catalog_version", @"variationName": @"variation_name", @"itemType": @"item_type", @"returnModifiers": @"return_modifiers", @"appliedTaxes": @"applied_taxes", @"appliedDiscounts": @"applied_discounts", @"basePriceMoney": @"base_price_money", @"variationTotalPriceMoney": @"variation_total_price_money", @"grossReturnMoney": @"gross_return_money", @"totalTaxMoney": @"total_tax_money", @"totalDiscountMoney": @"total_discount_money", @"totalMoney": @"total_money", @"appliedServiceCharges": @"applied_service_charges", @"totalServiceChargeMoney": @"total_service_charge_money" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"uid", @"sourceLineItemUid", @"name", @"quantityUnit", @"note", @"catalogObjectId", @"catalogVersion", @"variationName", @"itemType", @"returnModifiers", @"appliedTaxes", @"appliedDiscounts", @"basePriceMoney", @"variationTotalPriceMoney", @"grossReturnMoney", @"totalTaxMoney", @"totalDiscountMoney", @"totalMoney", @"appliedServiceCharges", @"totalServiceChargeMoney"];
  return [optionalProperties containsObject:propertyName];
}

@end
