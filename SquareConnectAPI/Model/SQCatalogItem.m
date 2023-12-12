#import "SQCatalogItem.h"

@implementation SQCatalogItem

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"name": @"name", @"_description": @"description", @"abbreviation": @"abbreviation", @"labelColor": @"label_color", @"availableOnline": @"available_online", @"availableForPickup": @"available_for_pickup", @"availableElectronically": @"available_electronically", @"categoryId": @"category_id", @"taxIds": @"tax_ids", @"modifierListInfo": @"modifier_list_info", @"variations": @"variations", @"productType": @"product_type", @"skipModifierScreen": @"skip_modifier_screen", @"itemOptions": @"item_options", @"imageIds": @"image_ids", @"sortName": @"sort_name", @"descriptionHtml": @"description_html", @"descriptionPlaintext": @"description_plaintext", @"isArchived": @"is_archived" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"_description", @"abbreviation", @"labelColor", @"availableOnline", @"availableForPickup", @"availableElectronically", @"categoryId", @"taxIds", @"modifierListInfo", @"variations", @"productType", @"skipModifierScreen", @"itemOptions", @"imageIds", @"sortName", @"descriptionHtml", @"descriptionPlaintext", @"isArchived"];
  return [optionalProperties containsObject:propertyName];
}

@end
