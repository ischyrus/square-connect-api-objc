#import "SQCatalogDiscount.h"

@implementation SQCatalogDiscount

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"name": @"name", @"discountType": @"discount_type", @"percentage": @"percentage", @"amountMoney": @"amount_money", @"pinRequired": @"pin_required", @"labelColor": @"label_color", @"modifyTaxBasis": @"modify_tax_basis", @"maximumAmountMoney": @"maximum_amount_money" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"discountType", @"percentage", @"amountMoney", @"pinRequired", @"labelColor", @"modifyTaxBasis", @"maximumAmountMoney"];
  return [optionalProperties containsObject:propertyName];
}

@end
