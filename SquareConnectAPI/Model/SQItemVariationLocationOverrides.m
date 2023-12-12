#import "SQItemVariationLocationOverrides.h"

@implementation SQItemVariationLocationOverrides

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"locationId": @"location_id", @"priceMoney": @"price_money", @"pricingType": @"pricing_type", @"trackInventory": @"track_inventory", @"inventoryAlertType": @"inventory_alert_type", @"inventoryAlertThreshold": @"inventory_alert_threshold", @"soldOut": @"sold_out", @"soldOutValidUntil": @"sold_out_valid_until" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"locationId", @"priceMoney", @"pricingType", @"trackInventory", @"inventoryAlertType", @"inventoryAlertThreshold", @"soldOut", @"soldOutValidUntil"];
  return [optionalProperties containsObject:propertyName];
}

@end
