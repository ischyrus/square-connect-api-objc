#import "SQV1CreateRefundRequest.h"

@implementation SQV1CreateRefundRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"paymentId": @"payment_id", @"type": @"type", @"reason": @"reason", @"refundedMoney": @"refunded_money", @"requestIdempotenceKey": @"request_idempotence_key" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"refundedMoney", @"requestIdempotenceKey"];
  return [optionalProperties containsObject:propertyName];
}

@end
