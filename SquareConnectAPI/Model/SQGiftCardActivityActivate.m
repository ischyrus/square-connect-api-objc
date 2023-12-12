#import "SQGiftCardActivityActivate.h"

@implementation SQGiftCardActivityActivate

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"amountMoney": @"amount_money", @"orderId": @"order_id", @"lineItemUid": @"line_item_uid", @"referenceId": @"reference_id", @"buyerPaymentInstrumentIds": @"buyer_payment_instrument_ids" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"amountMoney", @"orderId", @"lineItemUid", @"referenceId", @"buyerPaymentInstrumentIds"];
  return [optionalProperties containsObject:propertyName];
}

@end
