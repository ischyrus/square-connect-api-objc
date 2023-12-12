#import "SQPayment.h"

@implementation SQPayment

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"createdAt": @"created_at", @"updatedAt": @"updated_at", @"amountMoney": @"amount_money", @"tipMoney": @"tip_money", @"totalMoney": @"total_money", @"appFeeMoney": @"app_fee_money", @"approvedMoney": @"approved_money", @"processingFee": @"processing_fee", @"refundedMoney": @"refunded_money", @"status": @"status", @"delayDuration": @"delay_duration", @"delayAction": @"delay_action", @"delayedUntil": @"delayed_until", @"sourceType": @"source_type", @"cardDetails": @"card_details", @"cashDetails": @"cash_details", @"bankAccountDetails": @"bank_account_details", @"externalDetails": @"external_details", @"walletDetails": @"wallet_details", @"buyNowPayLaterDetails": @"buy_now_pay_later_details", @"squareAccountDetails": @"square_account_details", @"locationId": @"location_id", @"orderId": @"order_id", @"referenceId": @"reference_id", @"customerId": @"customer_id", @"employeeId": @"employee_id", @"teamMemberId": @"team_member_id", @"refundIds": @"refund_ids", @"riskEvaluation": @"risk_evaluation", @"buyerEmailAddress": @"buyer_email_address", @"billingAddress": @"billing_address", @"shippingAddress": @"shipping_address", @"note": @"note", @"statementDescriptionIdentifier": @"statement_description_identifier", @"capabilities": @"capabilities", @"receiptNumber": @"receipt_number", @"receiptUrl": @"receipt_url", @"deviceDetails": @"device_details", @"applicationDetails": @"application_details", @"versionToken": @"version_token" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"createdAt", @"updatedAt", @"amountMoney", @"tipMoney", @"totalMoney", @"appFeeMoney", @"approvedMoney", @"processingFee", @"refundedMoney", @"status", @"delayDuration", @"delayAction", @"delayedUntil", @"sourceType", @"cardDetails", @"cashDetails", @"bankAccountDetails", @"externalDetails", @"walletDetails", @"buyNowPayLaterDetails", @"squareAccountDetails", @"locationId", @"orderId", @"referenceId", @"customerId", @"employeeId", @"teamMemberId", @"refundIds", @"riskEvaluation", @"buyerEmailAddress", @"billingAddress", @"shippingAddress", @"note", @"statementDescriptionIdentifier", @"capabilities", @"receiptNumber", @"receiptUrl", @"deviceDetails", @"applicationDetails", @"versionToken"];
  return [optionalProperties containsObject:propertyName];
}

@end
