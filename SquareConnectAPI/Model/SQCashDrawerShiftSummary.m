#import "SQCashDrawerShiftSummary.h"

@implementation SQCashDrawerShiftSummary

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"state": @"state", @"openedAt": @"opened_at", @"endedAt": @"ended_at", @"closedAt": @"closed_at", @"_description": @"description", @"openedCashMoney": @"opened_cash_money", @"expectedCashMoney": @"expected_cash_money", @"closedCashMoney": @"closed_cash_money", @"createdAt": @"created_at", @"updatedAt": @"updated_at", @"locationId": @"location_id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"state", @"openedAt", @"endedAt", @"closedAt", @"_description", @"openedCashMoney", @"expectedCashMoney", @"closedCashMoney", @"createdAt", @"updatedAt", @"locationId"];
  return [optionalProperties containsObject:propertyName];
}

@end
