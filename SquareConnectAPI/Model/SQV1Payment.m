#import "SQV1Payment.h"

@implementation SQV1Payment

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"merchantId": @"merchant_id", @"createdAt": @"created_at", @"creatorId": @"creator_id", @"device": @"device", @"paymentUrl": @"payment_url", @"receiptUrl": @"receipt_url", @"inclusiveTaxMoney": @"inclusive_tax_money", @"additiveTaxMoney": @"additive_tax_money", @"taxMoney": @"tax_money", @"tipMoney": @"tip_money", @"discountMoney": @"discount_money", @"totalCollectedMoney": @"total_collected_money", @"processingFeeMoney": @"processing_fee_money", @"netTotalMoney": @"net_total_money", @"refundedMoney": @"refunded_money", @"swedishRoundingMoney": @"swedish_rounding_money", @"grossSalesMoney": @"gross_sales_money", @"netSalesMoney": @"net_sales_money", @"inclusiveTax": @"inclusive_tax", @"additiveTax": @"additive_tax", @"tender": @"tender", @"refunds": @"refunds", @"itemizations": @"itemizations", @"surchargeMoney": @"surcharge_money", @"surcharges": @"surcharges", @"isPartial": @"is_partial" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"merchantId", @"createdAt", @"creatorId", @"device", @"paymentUrl", @"receiptUrl", @"inclusiveTaxMoney", @"additiveTaxMoney", @"taxMoney", @"tipMoney", @"discountMoney", @"totalCollectedMoney", @"processingFeeMoney", @"netTotalMoney", @"refundedMoney", @"swedishRoundingMoney", @"grossSalesMoney", @"netSalesMoney", @"inclusiveTax", @"additiveTax", @"tender", @"refunds", @"itemizations", @"surchargeMoney", @"surcharges", @"isPartial"];
  return [optionalProperties containsObject:propertyName];
}

@end
