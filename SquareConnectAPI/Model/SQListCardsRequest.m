#import "SQListCardsRequest.h"

@implementation SQListCardsRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"cursor": @"cursor", @"customerId": @"customer_id", @"includeDisabled": @"include_disabled", @"referenceId": @"reference_id", @"sortOrder": @"sort_order" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"cursor", @"customerId", @"includeDisabled", @"referenceId", @"sortOrder"];
  return [optionalProperties containsObject:propertyName];
}

@end
