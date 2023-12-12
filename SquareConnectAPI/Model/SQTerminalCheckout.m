#import "SQTerminalCheckout.h"

@implementation SQTerminalCheckout

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"amountMoney": @"amount_money", @"referenceId": @"reference_id", @"note": @"note", @"orderId": @"order_id", @"paymentOptions": @"payment_options", @"deviceOptions": @"device_options", @"deadlineDuration": @"deadline_duration", @"status": @"status", @"cancelReason": @"cancel_reason", @"paymentIds": @"payment_ids", @"createdAt": @"created_at", @"updatedAt": @"updated_at", @"appId": @"app_id", @"locationId": @"location_id", @"paymentType": @"payment_type", @"teamMemberId": @"team_member_id", @"customerId": @"customer_id", @"appFeeMoney": @"app_fee_money", @"statementDescriptionIdentifier": @"statement_description_identifier", @"tipMoney": @"tip_money" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"referenceId", @"note", @"orderId", @"paymentOptions", @"deadlineDuration", @"status", @"cancelReason", @"paymentIds", @"createdAt", @"updatedAt", @"appId", @"locationId", @"paymentType", @"teamMemberId", @"customerId", @"appFeeMoney", @"statementDescriptionIdentifier", @"tipMoney"];
  return [optionalProperties containsObject:propertyName];
}

@end
