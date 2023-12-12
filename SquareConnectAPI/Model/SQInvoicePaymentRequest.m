#import "SQInvoicePaymentRequest.h"

@implementation SQInvoicePaymentRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"uid": @"uid", @"requestMethod": @"request_method", @"requestType": @"request_type", @"dueDate": @"due_date", @"fixedAmountRequestedMoney": @"fixed_amount_requested_money", @"percentageRequested": @"percentage_requested", @"tippingEnabled": @"tipping_enabled", @"automaticPaymentSource": @"automatic_payment_source", @"cardId": @"card_id", @"reminders": @"reminders", @"computedAmountMoney": @"computed_amount_money", @"totalCompletedAmountMoney": @"total_completed_amount_money", @"roundingAdjustmentIncludedMoney": @"rounding_adjustment_included_money" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"uid", @"requestMethod", @"requestType", @"dueDate", @"fixedAmountRequestedMoney", @"percentageRequested", @"tippingEnabled", @"automaticPaymentSource", @"cardId", @"reminders", @"computedAmountMoney", @"totalCompletedAmountMoney", @"roundingAdjustmentIncludedMoney"];
  return [optionalProperties containsObject:propertyName];
}

@end
