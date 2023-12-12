#import "SQSubscription.h"

@implementation SQSubscription

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"locationId": @"location_id", @"planVariationId": @"plan_variation_id", @"customerId": @"customer_id", @"startDate": @"start_date", @"canceledDate": @"canceled_date", @"chargedThroughDate": @"charged_through_date", @"status": @"status", @"taxPercentage": @"tax_percentage", @"invoiceIds": @"invoice_ids", @"priceOverrideMoney": @"price_override_money", @"version": @"version", @"createdAt": @"created_at", @"cardId": @"card_id", @"timezone": @"timezone", @"source": @"source", @"actions": @"actions", @"monthlyBillingAnchorDate": @"monthly_billing_anchor_date", @"phases": @"phases" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"locationId", @"planVariationId", @"customerId", @"startDate", @"canceledDate", @"chargedThroughDate", @"status", @"taxPercentage", @"invoiceIds", @"priceOverrideMoney", @"version", @"createdAt", @"cardId", @"timezone", @"source", @"actions", @"monthlyBillingAnchorDate", @"phases"];
  return [optionalProperties containsObject:propertyName];
}

@end
