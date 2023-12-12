#import "SQBatchRetrieveInventoryCountsRequest.h"

@implementation SQBatchRetrieveInventoryCountsRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"catalogObjectIds": @"catalog_object_ids", @"locationIds": @"location_ids", @"updatedAfter": @"updated_after", @"cursor": @"cursor", @"states": @"states", @"limit": @"limit" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"catalogObjectIds", @"locationIds", @"updatedAfter", @"cursor", @"states", @"limit"];
  return [optionalProperties containsObject:propertyName];
}

@end
