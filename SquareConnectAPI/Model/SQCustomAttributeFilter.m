#import "SQCustomAttributeFilter.h"

@implementation SQCustomAttributeFilter

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"customAttributeDefinitionId": @"custom_attribute_definition_id", @"key": @"key", @"stringFilter": @"string_filter", @"numberFilter": @"number_filter", @"selectionUidsFilter": @"selection_uids_filter", @"boolFilter": @"bool_filter" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"customAttributeDefinitionId", @"key", @"stringFilter", @"numberFilter", @"selectionUidsFilter", @"boolFilter"];
  return [optionalProperties containsObject:propertyName];
}

@end
