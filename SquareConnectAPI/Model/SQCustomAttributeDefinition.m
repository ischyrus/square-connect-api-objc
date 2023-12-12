#import "SQCustomAttributeDefinition.h"

@implementation SQCustomAttributeDefinition

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"key": @"key", @"schema": @"schema", @"name": @"name", @"_description": @"description", @"visibility": @"visibility", @"version": @"version", @"updatedAt": @"updated_at", @"createdAt": @"created_at" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"key", @"schema", @"name", @"_description", @"visibility", @"version", @"updatedAt", @"createdAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
