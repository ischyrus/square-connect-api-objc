#import "SQRefundPaymentRequest.h"

@implementation SQRefundPaymentRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"idempotencyKey": @"idempotency_key", @"amountMoney": @"amount_money", @"appFeeMoney": @"app_fee_money", @"paymentId": @"payment_id", @"destinationId": @"destination_id", @"unlinked": @"unlinked", @"locationId": @"location_id", @"customerId": @"customer_id", @"reason": @"reason", @"paymentVersionToken": @"payment_version_token", @"teamMemberId": @"team_member_id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"appFeeMoney", @"paymentId", @"destinationId", @"unlinked", @"locationId", @"customerId", @"reason", @"paymentVersionToken", @"teamMemberId"];
  return [optionalProperties containsObject:propertyName];
}

@end
