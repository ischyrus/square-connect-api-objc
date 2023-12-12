#import "SQCatalogItemVariation.h"

@implementation SQCatalogItemVariation

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"itemId": @"item_id", @"name": @"name", @"sku": @"sku", @"upc": @"upc", @"ordinal": @"ordinal", @"pricingType": @"pricing_type", @"priceMoney": @"price_money", @"locationOverrides": @"location_overrides", @"trackInventory": @"track_inventory", @"inventoryAlertType": @"inventory_alert_type", @"inventoryAlertThreshold": @"inventory_alert_threshold", @"userData": @"user_data", @"serviceDuration": @"service_duration", @"availableForBooking": @"available_for_booking", @"itemOptionValues": @"item_option_values", @"measurementUnitId": @"measurement_unit_id", @"sellable": @"sellable", @"stockable": @"stockable", @"imageIds": @"image_ids", @"teamMemberIds": @"team_member_ids", @"stockableConversion": @"stockable_conversion" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"itemId", @"name", @"sku", @"upc", @"ordinal", @"pricingType", @"priceMoney", @"locationOverrides", @"trackInventory", @"inventoryAlertType", @"inventoryAlertThreshold", @"userData", @"serviceDuration", @"availableForBooking", @"itemOptionValues", @"measurementUnitId", @"sellable", @"stockable", @"imageIds", @"teamMemberIds", @"stockableConversion"];
  return [optionalProperties containsObject:propertyName];
}

@end
