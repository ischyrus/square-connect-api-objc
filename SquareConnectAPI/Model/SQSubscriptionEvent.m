#import "SQSubscriptionEvent.h"

@implementation SQSubscriptionEvent

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"subscriptionEventType": @"subscription_event_type", @"effectiveDate": @"effective_date", @"monthlyBillingAnchorDate": @"monthly_billing_anchor_date", @"info": @"info", @"phases": @"phases", @"planVariationId": @"plan_variation_id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"monthlyBillingAnchorDate", @"info", @"phases", ];
  return [optionalProperties containsObject:propertyName];
}

@end
