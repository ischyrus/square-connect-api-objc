#import "SQChargeRequest.h"

@implementation SQChargeRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"idempotencyKey": @"idempotency_key", @"amountMoney": @"amount_money", @"cardNonce": @"card_nonce", @"customerCardId": @"customer_card_id", @"delayCapture": @"delay_capture", @"referenceId": @"reference_id", @"note": @"note", @"customerId": @"customer_id", @"billingAddress": @"billing_address", @"shippingAddress": @"shipping_address", @"buyerEmailAddress": @"buyer_email_address", @"orderId": @"order_id", @"additionalRecipients": @"additional_recipients", @"verificationToken": @"verification_token" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"cardNonce", @"customerCardId", @"delayCapture", @"referenceId", @"note", @"customerId", @"billingAddress", @"shippingAddress", @"buyerEmailAddress", @"orderId", @"additionalRecipients", @"verificationToken"];
  return [optionalProperties containsObject:propertyName];
}

@end
