#import "SQV1Order.h"

@implementation SQV1Order

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"errors": @"errors", @"_id": @"id", @"buyerEmail": @"buyer_email", @"recipientName": @"recipient_name", @"recipientPhoneNumber": @"recipient_phone_number", @"state": @"state", @"shippingAddress": @"shipping_address", @"subtotalMoney": @"subtotal_money", @"totalShippingMoney": @"total_shipping_money", @"totalTaxMoney": @"total_tax_money", @"totalPriceMoney": @"total_price_money", @"totalDiscountMoney": @"total_discount_money", @"createdAt": @"created_at", @"updatedAt": @"updated_at", @"expiresAt": @"expires_at", @"paymentId": @"payment_id", @"buyerNote": @"buyer_note", @"completedNote": @"completed_note", @"refundedNote": @"refunded_note", @"canceledNote": @"canceled_note", @"tender": @"tender", @"orderHistory": @"order_history", @"promoCode": @"promo_code", @"btcReceiveAddress": @"btc_receive_address", @"btcPriceSatoshi": @"btc_price_satoshi" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"errors", @"_id", @"buyerEmail", @"recipientName", @"recipientPhoneNumber", @"state", @"shippingAddress", @"subtotalMoney", @"totalShippingMoney", @"totalTaxMoney", @"totalPriceMoney", @"totalDiscountMoney", @"createdAt", @"updatedAt", @"expiresAt", @"paymentId", @"buyerNote", @"completedNote", @"refundedNote", @"canceledNote", @"tender", @"orderHistory", @"promoCode", @"btcReceiveAddress", @"btcPriceSatoshi"];
  return [optionalProperties containsObject:propertyName];
}

@end
