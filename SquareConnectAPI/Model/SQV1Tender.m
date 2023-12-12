#import "SQV1Tender.h"

@implementation SQV1Tender

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"type": @"type", @"name": @"name", @"employeeId": @"employee_id", @"receiptUrl": @"receipt_url", @"cardBrand": @"card_brand", @"panSuffix": @"pan_suffix", @"entryMethod": @"entry_method", @"paymentNote": @"payment_note", @"totalMoney": @"total_money", @"tenderedMoney": @"tendered_money", @"tenderedAt": @"tendered_at", @"settledAt": @"settled_at", @"changeBackMoney": @"change_back_money", @"refundedMoney": @"refunded_money", @"isExchange": @"is_exchange" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"type", @"name", @"employeeId", @"receiptUrl", @"cardBrand", @"panSuffix", @"entryMethod", @"paymentNote", @"totalMoney", @"tenderedMoney", @"tenderedAt", @"settledAt", @"changeBackMoney", @"refundedMoney", @"isExchange"];
  return [optionalProperties containsObject:propertyName];
}

@end
