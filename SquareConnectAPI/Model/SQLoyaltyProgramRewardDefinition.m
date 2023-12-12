#import "SQLoyaltyProgramRewardDefinition.h"

@implementation SQLoyaltyProgramRewardDefinition

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"scope": @"scope", @"discountType": @"discount_type", @"percentageDiscount": @"percentage_discount", @"catalogObjectIds": @"catalog_object_ids", @"fixedDiscountMoney": @"fixed_discount_money", @"maxDiscountMoney": @"max_discount_money" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"percentageDiscount", @"catalogObjectIds", @"fixedDiscountMoney", @"maxDiscountMoney"];
  return [optionalProperties containsObject:propertyName];
}

@end
