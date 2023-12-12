#import "SQCatalogInfoResponseLimits.h"

@implementation SQCatalogInfoResponseLimits

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"batchUpsertMaxObjectsPerBatch": @"batch_upsert_max_objects_per_batch", @"batchUpsertMaxTotalObjects": @"batch_upsert_max_total_objects", @"batchRetrieveMaxObjectIds": @"batch_retrieve_max_object_ids", @"searchMaxPageLimit": @"search_max_page_limit", @"batchDeleteMaxObjectIds": @"batch_delete_max_object_ids", @"updateItemTaxesMaxItemIds": @"update_item_taxes_max_item_ids", @"updateItemTaxesMaxTaxesToEnable": @"update_item_taxes_max_taxes_to_enable", @"updateItemTaxesMaxTaxesToDisable": @"update_item_taxes_max_taxes_to_disable", @"updateItemModifierListsMaxItemIds": @"update_item_modifier_lists_max_item_ids", @"updateItemModifierListsMaxModifierListsToEnable": @"update_item_modifier_lists_max_modifier_lists_to_enable", @"updateItemModifierListsMaxModifierListsToDisable": @"update_item_modifier_lists_max_modifier_lists_to_disable" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"batchUpsertMaxObjectsPerBatch", @"batchUpsertMaxTotalObjects", @"batchRetrieveMaxObjectIds", @"searchMaxPageLimit", @"batchDeleteMaxObjectIds", @"updateItemTaxesMaxItemIds", @"updateItemTaxesMaxTaxesToEnable", @"updateItemTaxesMaxTaxesToDisable", @"updateItemModifierListsMaxItemIds", @"updateItemModifierListsMaxModifierListsToEnable", @"updateItemModifierListsMaxModifierListsToDisable"];
  return [optionalProperties containsObject:propertyName];
}

@end
