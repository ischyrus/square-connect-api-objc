#import "SQLoyaltyProgramAccrualRuleSpendData.h"

@implementation SQLoyaltyProgramAccrualRuleSpendData

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"amountMoney": @"amount_money", @"excludedCategoryIds": @"excluded_category_ids", @"excludedItemVariationIds": @"excluded_item_variation_ids", @"taxMode": @"tax_mode" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"excludedCategoryIds", @"excludedItemVariationIds", ];
  return [optionalProperties containsObject:propertyName];
}

@end
