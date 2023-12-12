#import "SQLoyaltyProgramAccrualRule.h"

@implementation SQLoyaltyProgramAccrualRule

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"accrualType": @"accrual_type", @"points": @"points", @"visitData": @"visit_data", @"spendData": @"spend_data", @"itemVariationData": @"item_variation_data", @"categoryData": @"category_data" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"points", @"visitData", @"spendData", @"itemVariationData", @"categoryData"];
  return [optionalProperties containsObject:propertyName];
}

@end
