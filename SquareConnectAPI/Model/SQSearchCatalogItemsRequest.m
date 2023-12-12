#import "SQSearchCatalogItemsRequest.h"

@implementation SQSearchCatalogItemsRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"textFilter": @"text_filter", @"categoryIds": @"category_ids", @"stockLevels": @"stock_levels", @"enabledLocationIds": @"enabled_location_ids", @"cursor": @"cursor", @"limit": @"limit", @"sortOrder": @"sort_order", @"productTypes": @"product_types", @"customAttributeFilters": @"custom_attribute_filters", @"archivedState": @"archived_state" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"textFilter", @"categoryIds", @"stockLevels", @"enabledLocationIds", @"cursor", @"limit", @"sortOrder", @"productTypes", @"customAttributeFilters", @"archivedState"];
  return [optionalProperties containsObject:propertyName];
}

@end
