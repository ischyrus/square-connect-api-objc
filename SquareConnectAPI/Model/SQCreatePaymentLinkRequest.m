#import "SQCreatePaymentLinkRequest.h"

@implementation SQCreatePaymentLinkRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"idempotencyKey": @"idempotency_key", @"_description": @"description", @"quickPay": @"quick_pay", @"order": @"order", @"checkoutOptions": @"checkout_options", @"prePopulatedData": @"pre_populated_data", @"paymentNote": @"payment_note" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"idempotencyKey", @"_description", @"quickPay", @"order", @"checkoutOptions", @"prePopulatedData", @"paymentNote"];
  return [optionalProperties containsObject:propertyName];
}

@end
