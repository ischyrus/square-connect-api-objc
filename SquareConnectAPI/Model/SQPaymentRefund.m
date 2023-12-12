#import "SQPaymentRefund.h"

@implementation SQPaymentRefund

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"status": @"status", @"locationId": @"location_id", @"unlinked": @"unlinked", @"destinationType": @"destination_type", @"destinationDetails": @"destination_details", @"amountMoney": @"amount_money", @"appFeeMoney": @"app_fee_money", @"processingFee": @"processing_fee", @"paymentId": @"payment_id", @"orderId": @"order_id", @"reason": @"reason", @"createdAt": @"created_at", @"updatedAt": @"updated_at", @"teamMemberId": @"team_member_id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"status", @"locationId", @"unlinked", @"destinationType", @"destinationDetails", @"appFeeMoney", @"processingFee", @"paymentId", @"orderId", @"reason", @"createdAt", @"updatedAt", @"teamMemberId"];
  return [optionalProperties containsObject:propertyName];
}

@end
