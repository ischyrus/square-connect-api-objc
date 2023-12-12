#import "SQTerminalRefund.h"

@implementation SQTerminalRefund

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"refundId": @"refund_id", @"paymentId": @"payment_id", @"orderId": @"order_id", @"amountMoney": @"amount_money", @"reason": @"reason", @"deviceId": @"device_id", @"deadlineDuration": @"deadline_duration", @"status": @"status", @"cancelReason": @"cancel_reason", @"createdAt": @"created_at", @"updatedAt": @"updated_at", @"appId": @"app_id", @"locationId": @"location_id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"refundId", @"orderId", @"deadlineDuration", @"status", @"cancelReason", @"createdAt", @"updatedAt", @"appId", @"locationId"];
  return [optionalProperties containsObject:propertyName];
}

@end
