#import "SQOrderFulfillmentShipmentDetails.h"

@implementation SQOrderFulfillmentShipmentDetails

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"recipient": @"recipient", @"carrier": @"carrier", @"shippingNote": @"shipping_note", @"shippingType": @"shipping_type", @"trackingNumber": @"tracking_number", @"trackingUrl": @"tracking_url", @"placedAt": @"placed_at", @"inProgressAt": @"in_progress_at", @"packagedAt": @"packaged_at", @"expectedShippedAt": @"expected_shipped_at", @"shippedAt": @"shipped_at", @"canceledAt": @"canceled_at", @"cancelReason": @"cancel_reason", @"failedAt": @"failed_at", @"failureReason": @"failure_reason" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"recipient", @"carrier", @"shippingNote", @"shippingType", @"trackingNumber", @"trackingUrl", @"placedAt", @"inProgressAt", @"packagedAt", @"expectedShippedAt", @"shippedAt", @"canceledAt", @"cancelReason", @"failedAt", @"failureReason"];
  return [optionalProperties containsObject:propertyName];
}

@end
