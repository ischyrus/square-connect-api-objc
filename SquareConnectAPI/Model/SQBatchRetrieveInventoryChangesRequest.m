#import "SQBatchRetrieveInventoryChangesRequest.h"

@implementation SQBatchRetrieveInventoryChangesRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"catalogObjectIds": @"catalog_object_ids", @"locationIds": @"location_ids", @"types": @"types", @"states": @"states", @"updatedAfter": @"updated_after", @"updatedBefore": @"updated_before", @"cursor": @"cursor", @"limit": @"limit" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"catalogObjectIds", @"locationIds", @"types", @"states", @"updatedAfter", @"updatedBefore", @"cursor", @"limit"];
  return [optionalProperties containsObject:propertyName];
}

@end
