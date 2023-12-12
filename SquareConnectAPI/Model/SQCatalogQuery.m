#import "SQCatalogQuery.h"

@implementation SQCatalogQuery

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"sortedAttributeQuery": @"sorted_attribute_query", @"exactQuery": @"exact_query", @"setQuery": @"set_query", @"prefixQuery": @"prefix_query", @"rangeQuery": @"range_query", @"textQuery": @"text_query", @"itemsForTaxQuery": @"items_for_tax_query", @"itemsForModifierListQuery": @"items_for_modifier_list_query", @"itemsForItemOptionsQuery": @"items_for_item_options_query", @"itemVariationsForItemOptionValuesQuery": @"item_variations_for_item_option_values_query" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"sortedAttributeQuery", @"exactQuery", @"setQuery", @"prefixQuery", @"rangeQuery", @"textQuery", @"itemsForTaxQuery", @"itemsForModifierListQuery", @"itemsForItemOptionsQuery", @"itemVariationsForItemOptionValuesQuery"];
  return [optionalProperties containsObject:propertyName];
}

@end
