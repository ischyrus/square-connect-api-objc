#import "SQPayout.h"

@implementation SQPayout

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"status": @"status", @"locationId": @"location_id", @"createdAt": @"created_at", @"updatedAt": @"updated_at", @"amountMoney": @"amount_money", @"destination": @"destination", @"version": @"version", @"type": @"type", @"payoutFee": @"payout_fee", @"arrivalDate": @"arrival_date", @"endToEndId": @"end_to_end_id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"status", @"createdAt", @"updatedAt", @"amountMoney", @"destination", @"version", @"type", @"payoutFee", @"arrivalDate", @"endToEndId"];
  return [optionalProperties containsObject:propertyName];
}

@end
