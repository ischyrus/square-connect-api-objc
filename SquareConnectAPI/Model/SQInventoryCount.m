#import "SQInventoryCount.h"

@implementation SQInventoryCount

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"catalogObjectId": @"catalog_object_id", @"catalogObjectType": @"catalog_object_type", @"state": @"state", @"locationId": @"location_id", @"quantity": @"quantity", @"calculatedAt": @"calculated_at", @"isEstimated": @"is_estimated" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"catalogObjectId", @"catalogObjectType", @"state", @"locationId", @"quantity", @"calculatedAt", @"isEstimated"];
  return [optionalProperties containsObject:propertyName];
}

@end
