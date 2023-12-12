#import "SQCreatePaymentRequest.h"

@implementation SQCreatePaymentRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"sourceId": @"source_id", @"idempotencyKey": @"idempotency_key", @"amountMoney": @"amount_money", @"tipMoney": @"tip_money", @"appFeeMoney": @"app_fee_money", @"delayDuration": @"delay_duration", @"delayAction": @"delay_action", @"autocomplete": @"autocomplete", @"orderId": @"order_id", @"customerId": @"customer_id", @"locationId": @"location_id", @"teamMemberId": @"team_member_id", @"referenceId": @"reference_id", @"verificationToken": @"verification_token", @"acceptPartialAuthorization": @"accept_partial_authorization", @"buyerEmailAddress": @"buyer_email_address", @"billingAddress": @"billing_address", @"shippingAddress": @"shipping_address", @"note": @"note", @"statementDescriptionIdentifier": @"statement_description_identifier", @"cashDetails": @"cash_details", @"externalDetails": @"external_details", @"customerDetails": @"customer_details" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"amountMoney", @"tipMoney", @"appFeeMoney", @"delayDuration", @"delayAction", @"autocomplete", @"orderId", @"customerId", @"locationId", @"teamMemberId", @"referenceId", @"verificationToken", @"acceptPartialAuthorization", @"buyerEmailAddress", @"billingAddress", @"shippingAddress", @"note", @"statementDescriptionIdentifier", @"cashDetails", @"externalDetails", @"customerDetails"];
  return [optionalProperties containsObject:propertyName];
}

@end
