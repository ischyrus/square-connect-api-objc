#import "SQCatalogSubscriptionPlanVariation.h"

@implementation SQCatalogSubscriptionPlanVariation

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"name": @"name", @"phases": @"phases", @"subscriptionPlanId": @"subscription_plan_id", @"monthlyBillingAnchorDate": @"monthly_billing_anchor_date", @"canProrate": @"can_prorate", @"successorPlanVariationId": @"successor_plan_variation_id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"subscriptionPlanId", @"monthlyBillingAnchorDate", @"canProrate", @"successorPlanVariationId"];
  return [optionalProperties containsObject:propertyName];
}

@end
