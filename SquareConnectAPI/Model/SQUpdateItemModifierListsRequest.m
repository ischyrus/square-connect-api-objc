#import "SQUpdateItemModifierListsRequest.h"

@implementation SQUpdateItemModifierListsRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"itemIds": @"item_ids", @"modifierListsToEnable": @"modifier_lists_to_enable", @"modifierListsToDisable": @"modifier_lists_to_disable" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"modifierListsToEnable", @"modifierListsToDisable"];
  return [optionalProperties containsObject:propertyName];
}

@end
