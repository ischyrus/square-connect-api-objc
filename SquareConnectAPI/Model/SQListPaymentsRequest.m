#import "SQListPaymentsRequest.h"

@implementation SQListPaymentsRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"beginTime": @"begin_time", @"endTime": @"end_time", @"sortOrder": @"sort_order", @"cursor": @"cursor", @"locationId": @"location_id", @"total": @"total", @"last4": @"last_4", @"cardBrand": @"card_brand", @"limit": @"limit" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"beginTime", @"endTime", @"sortOrder", @"cursor", @"locationId", @"total", @"last4", @"cardBrand", @"limit"];
  return [optionalProperties containsObject:propertyName];
}

@end
