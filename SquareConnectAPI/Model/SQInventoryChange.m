#import "SQInventoryChange.h"

@implementation SQInventoryChange

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"type": @"type", @"physicalCount": @"physical_count", @"adjustment": @"adjustment", @"transfer": @"transfer", @"measurementUnit": @"measurement_unit", @"measurementUnitId": @"measurement_unit_id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"type", @"physicalCount", @"adjustment", @"transfer", @"measurementUnit", @"measurementUnitId"];
  return [optionalProperties containsObject:propertyName];
}

@end
