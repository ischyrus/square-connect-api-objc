#import "SQOrderMoneyAmounts.h"

@implementation SQOrderMoneyAmounts

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"totalMoney": @"total_money", @"taxMoney": @"tax_money", @"discountMoney": @"discount_money", @"tipMoney": @"tip_money", @"serviceChargeMoney": @"service_charge_money" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"totalMoney", @"taxMoney", @"discountMoney", @"tipMoney", @"serviceChargeMoney"];
  return [optionalProperties containsObject:propertyName];
}

@end
