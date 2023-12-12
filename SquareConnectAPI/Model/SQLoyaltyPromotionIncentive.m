#import "SQLoyaltyPromotionIncentive.h"

@implementation SQLoyaltyPromotionIncentive

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"type": @"type", @"pointsMultiplierData": @"points_multiplier_data", @"pointsAdditionData": @"points_addition_data" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"pointsMultiplierData", @"pointsAdditionData"];
  return [optionalProperties containsObject:propertyName];
}

@end
