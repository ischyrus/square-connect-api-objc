#import "SQGiftCard.h"

@implementation SQGiftCard

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"type": @"type", @"ganSource": @"gan_source", @"state": @"state", @"balanceMoney": @"balance_money", @"gan": @"gan", @"createdAt": @"created_at", @"customerIds": @"customer_ids" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"ganSource", @"state", @"balanceMoney", @"gan", @"createdAt", @"customerIds"];
  return [optionalProperties containsObject:propertyName];
}

@end
