#import "SQInvoiceAcceptedPaymentMethods.h"

@implementation SQInvoiceAcceptedPaymentMethods

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"card": @"card", @"squareGiftCard": @"square_gift_card", @"bankAccount": @"bank_account", @"buyNowPayLater": @"buy_now_pay_later", @"cashAppPay": @"cash_app_pay" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"card", @"squareGiftCard", @"bankAccount", @"buyNowPayLater", @"cashAppPay"];
  return [optionalProperties containsObject:propertyName];
}

@end
