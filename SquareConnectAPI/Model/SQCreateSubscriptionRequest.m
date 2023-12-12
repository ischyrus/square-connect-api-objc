#import "SQCreateSubscriptionRequest.h"

@implementation SQCreateSubscriptionRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"idempotencyKey": @"idempotency_key", @"locationId": @"location_id", @"planVariationId": @"plan_variation_id", @"customerId": @"customer_id", @"startDate": @"start_date", @"canceledDate": @"canceled_date", @"taxPercentage": @"tax_percentage", @"priceOverrideMoney": @"price_override_money", @"cardId": @"card_id", @"timezone": @"timezone", @"source": @"source", @"monthlyBillingAnchorDate": @"monthly_billing_anchor_date", @"phases": @"phases" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"idempotencyKey", @"planVariationId", @"startDate", @"canceledDate", @"taxPercentage", @"priceOverrideMoney", @"cardId", @"timezone", @"source", @"monthlyBillingAnchorDate", @"phases"];
  return [optionalProperties containsObject:propertyName];
}

@end
