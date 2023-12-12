#import "SQRefund.h"

@implementation SQRefund

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"locationId": @"location_id", @"transactionId": @"transaction_id", @"tenderId": @"tender_id", @"createdAt": @"created_at", @"reason": @"reason", @"amountMoney": @"amount_money", @"status": @"status", @"processingFeeMoney": @"processing_fee_money", @"additionalRecipients": @"additional_recipients" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"transactionId", @"createdAt", @"processingFeeMoney", @"additionalRecipients"];
  return [optionalProperties containsObject:propertyName];
}

@end
