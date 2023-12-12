#import "SQCatalogCustomAttributeDefinition.h"

@implementation SQCatalogCustomAttributeDefinition

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"type": @"type", @"name": @"name", @"_description": @"description", @"sourceApplication": @"source_application", @"allowedObjectTypes": @"allowed_object_types", @"sellerVisibility": @"seller_visibility", @"appVisibility": @"app_visibility", @"stringConfig": @"string_config", @"numberConfig": @"number_config", @"selectionConfig": @"selection_config", @"customAttributeUsageCount": @"custom_attribute_usage_count", @"key": @"key" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_description", @"sourceApplication", @"sellerVisibility", @"appVisibility", @"stringConfig", @"numberConfig", @"selectionConfig", @"customAttributeUsageCount", @"key"];
  return [optionalProperties containsObject:propertyName];
}

@end
