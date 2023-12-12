#import "SQLoyaltyEventDeleteReward.h"

@implementation SQLoyaltyEventDeleteReward

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"loyaltyProgramId": @"loyalty_program_id", @"rewardId": @"reward_id", @"points": @"points" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"rewardId", ];
  return [optionalProperties containsObject:propertyName];
}

@end
