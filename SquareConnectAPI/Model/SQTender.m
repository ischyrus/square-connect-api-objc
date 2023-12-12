#import "SQTender.h"

@implementation SQTender

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"locationId": @"location_id", @"transactionId": @"transaction_id", @"createdAt": @"created_at", @"note": @"note", @"amountMoney": @"amount_money", @"tipMoney": @"tip_money", @"processingFeeMoney": @"processing_fee_money", @"customerId": @"customer_id", @"type": @"type", @"cardDetails": @"card_details", @"cashDetails": @"cash_details", @"bankAccountDetails": @"bank_account_details", @"buyNowPayLaterDetails": @"buy_now_pay_later_details", @"squareAccountDetails": @"square_account_details", @"additionalRecipients": @"additional_recipients", @"paymentId": @"payment_id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"locationId", @"transactionId", @"createdAt", @"note", @"amountMoney", @"tipMoney", @"processingFeeMoney", @"customerId", @"cardDetails", @"cashDetails", @"bankAccountDetails", @"buyNowPayLaterDetails", @"squareAccountDetails", @"additionalRecipients", @"paymentId"];
  return [optionalProperties containsObject:propertyName];
}

@end
