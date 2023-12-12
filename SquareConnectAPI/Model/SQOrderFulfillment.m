#import "SQOrderFulfillment.h"

@implementation SQOrderFulfillment

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"uid": @"uid", @"type": @"type", @"state": @"state", @"lineItemApplication": @"line_item_application", @"entries": @"entries", @"metadata": @"metadata", @"pickupDetails": @"pickup_details", @"shipmentDetails": @"shipment_details", @"deliveryDetails": @"delivery_details" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"uid", @"type", @"state", @"lineItemApplication", @"entries", @"metadata", @"pickupDetails", @"shipmentDetails", @"deliveryDetails"];
  return [optionalProperties containsObject:propertyName];
}

@end
