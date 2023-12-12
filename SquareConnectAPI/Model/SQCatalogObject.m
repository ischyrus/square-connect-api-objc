#import "SQCatalogObject.h"

@implementation SQCatalogObject

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"type": @"type", @"_id": @"id", @"updatedAt": @"updated_at", @"version": @"version", @"isDeleted": @"is_deleted", @"customAttributeValues": @"custom_attribute_values", @"catalogV1Ids": @"catalog_v1_ids", @"presentAtAllLocations": @"present_at_all_locations", @"presentAtLocationIds": @"present_at_location_ids", @"absentAtLocationIds": @"absent_at_location_ids", @"itemData": @"item_data", @"categoryData": @"category_data", @"itemVariationData": @"item_variation_data", @"taxData": @"tax_data", @"discountData": @"discount_data", @"modifierListData": @"modifier_list_data", @"modifierData": @"modifier_data", @"timePeriodData": @"time_period_data", @"productSetData": @"product_set_data", @"pricingRuleData": @"pricing_rule_data", @"imageData": @"image_data", @"measurementUnitData": @"measurement_unit_data", @"subscriptionPlanData": @"subscription_plan_data", @"itemOptionData": @"item_option_data", @"itemOptionValueData": @"item_option_value_data", @"customAttributeDefinitionData": @"custom_attribute_definition_data", @"quickAmountsSettingsData": @"quick_amounts_settings_data", @"subscriptionPlanVariationData": @"subscription_plan_variation_data" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"updatedAt", @"version", @"isDeleted", @"customAttributeValues", @"catalogV1Ids", @"presentAtAllLocations", @"presentAtLocationIds", @"absentAtLocationIds", @"itemData", @"categoryData", @"itemVariationData", @"taxData", @"discountData", @"modifierListData", @"modifierData", @"timePeriodData", @"productSetData", @"pricingRuleData", @"imageData", @"measurementUnitData", @"subscriptionPlanData", @"itemOptionData", @"itemOptionValueData", @"customAttributeDefinitionData", @"quickAmountsSettingsData", @"subscriptionPlanVariationData"];
  return [optionalProperties containsObject:propertyName];
}

@end
