#import "SQCard.h"

@implementation SQCard

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"cardBrand": @"card_brand", @"last4": @"last_4", @"expMonth": @"exp_month", @"expYear": @"exp_year", @"cardholderName": @"cardholder_name", @"billingAddress": @"billing_address", @"fingerprint": @"fingerprint", @"customerId": @"customer_id", @"merchantId": @"merchant_id", @"referenceId": @"reference_id", @"enabled": @"enabled", @"cardType": @"card_type", @"prepaidType": @"prepaid_type", @"bin": @"bin", @"version": @"version", @"cardCoBrand": @"card_co_brand" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"cardBrand", @"last4", @"expMonth", @"expYear", @"cardholderName", @"billingAddress", @"fingerprint", @"customerId", @"merchantId", @"referenceId", @"enabled", @"cardType", @"prepaidType", @"bin", @"version", @"cardCoBrand"];
  return [optionalProperties containsObject:propertyName];
}

@end
