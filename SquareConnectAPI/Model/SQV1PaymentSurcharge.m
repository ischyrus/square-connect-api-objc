#import "SQV1PaymentSurcharge.h"

@implementation SQV1PaymentSurcharge

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"name": @"name", @"appliedMoney": @"applied_money", @"rate": @"rate", @"amountMoney": @"amount_money", @"type": @"type", @"taxable": @"taxable", @"taxes": @"taxes", @"surchargeId": @"surcharge_id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"appliedMoney", @"rate", @"amountMoney", @"type", @"taxable", @"taxes", @"surchargeId"];
  return [optionalProperties containsObject:propertyName];
}

@end
