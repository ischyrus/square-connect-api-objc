#import "SQV1Refund.h"

@implementation SQV1Refund

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"type": @"type", @"reason": @"reason", @"refundedMoney": @"refunded_money", @"refundedProcessingFeeMoney": @"refunded_processing_fee_money", @"refundedTaxMoney": @"refunded_tax_money", @"refundedAdditiveTaxMoney": @"refunded_additive_tax_money", @"refundedAdditiveTax": @"refunded_additive_tax", @"refundedInclusiveTaxMoney": @"refunded_inclusive_tax_money", @"refundedInclusiveTax": @"refunded_inclusive_tax", @"refundedTipMoney": @"refunded_tip_money", @"refundedDiscountMoney": @"refunded_discount_money", @"refundedSurchargeMoney": @"refunded_surcharge_money", @"refundedSurcharges": @"refunded_surcharges", @"createdAt": @"created_at", @"processedAt": @"processed_at", @"paymentId": @"payment_id", @"merchantId": @"merchant_id", @"isExchange": @"is_exchange" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"type", @"reason", @"refundedMoney", @"refundedProcessingFeeMoney", @"refundedTaxMoney", @"refundedAdditiveTaxMoney", @"refundedAdditiveTax", @"refundedInclusiveTaxMoney", @"refundedInclusiveTax", @"refundedTipMoney", @"refundedDiscountMoney", @"refundedSurchargeMoney", @"refundedSurcharges", @"createdAt", @"processedAt", @"paymentId", @"merchantId", @"isExchange"];
  return [optionalProperties containsObject:propertyName];
}

@end
