#import "SQCatalogItemModifierListInfo.h"

@implementation SQCatalogItemModifierListInfo

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"modifierListId": @"modifier_list_id", @"modifierOverrides": @"modifier_overrides", @"minSelectedModifiers": @"min_selected_modifiers", @"maxSelectedModifiers": @"max_selected_modifiers", @"enabled": @"enabled" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"modifierOverrides", @"minSelectedModifiers", @"maxSelectedModifiers", @"enabled"];
  return [optionalProperties containsObject:propertyName];
}

@end
