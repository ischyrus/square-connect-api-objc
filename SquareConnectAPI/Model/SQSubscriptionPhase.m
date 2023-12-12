#import "SQSubscriptionPhase.h"

@implementation SQSubscriptionPhase

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"uid": @"uid", @"cadence": @"cadence", @"periods": @"periods", @"recurringPriceMoney": @"recurring_price_money", @"ordinal": @"ordinal", @"pricing": @"pricing" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"uid", @"periods", @"recurringPriceMoney", @"ordinal", @"pricing"];
  return [optionalProperties containsObject:propertyName];
}

@end
