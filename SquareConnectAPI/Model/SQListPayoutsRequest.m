#import "SQListPayoutsRequest.h"

@implementation SQListPayoutsRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"locationId": @"location_id", @"status": @"status", @"beginTime": @"begin_time", @"endTime": @"end_time", @"sortOrder": @"sort_order", @"cursor": @"cursor", @"limit": @"limit" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"locationId", @"status", @"beginTime", @"endTime", @"sortOrder", @"cursor", @"limit"];
  return [optionalProperties containsObject:propertyName];
}

@end
