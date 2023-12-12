#import "SQV1PaymentTax.h"

@implementation SQV1PaymentTax

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"errors": @"errors", @"name": @"name", @"appliedMoney": @"applied_money", @"rate": @"rate", @"inclusionType": @"inclusion_type", @"feeId": @"fee_id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"errors", @"name", @"appliedMoney", @"rate", @"inclusionType", @"feeId"];
  return [optionalProperties containsObject:propertyName];
}

@end
