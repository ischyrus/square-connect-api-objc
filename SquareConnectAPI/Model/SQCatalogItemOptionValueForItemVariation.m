#import "SQCatalogItemOptionValueForItemVariation.h"

@implementation SQCatalogItemOptionValueForItemVariation

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"itemOptionId": @"item_option_id", @"itemOptionValueId": @"item_option_value_id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"itemOptionId", @"itemOptionValueId"];
  return [optionalProperties containsObject:propertyName];
}

@end
