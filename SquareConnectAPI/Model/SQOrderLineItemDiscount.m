#import "SQOrderLineItemDiscount.h"

@implementation SQOrderLineItemDiscount

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"uid": @"uid", @"catalogObjectId": @"catalog_object_id", @"catalogVersion": @"catalog_version", @"name": @"name", @"type": @"type", @"percentage": @"percentage", @"amountMoney": @"amount_money", @"appliedMoney": @"applied_money", @"metadata": @"metadata", @"scope": @"scope", @"rewardIds": @"reward_ids", @"pricingRuleId": @"pricing_rule_id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"uid", @"catalogObjectId", @"catalogVersion", @"name", @"type", @"percentage", @"amountMoney", @"appliedMoney", @"metadata", @"scope", @"rewardIds", @"pricingRuleId"];
  return [optionalProperties containsObject:propertyName];
}

@end
