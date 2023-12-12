#import "SQDeviceMetadata.h"

@implementation SQDeviceMetadata

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"batteryPercentage": @"battery_percentage", @"chargingState": @"charging_state", @"locationId": @"location_id", @"merchantId": @"merchant_id", @"networkConnectionType": @"network_connection_type", @"paymentRegion": @"payment_region", @"serialNumber": @"serial_number", @"osVersion": @"os_version", @"appVersion": @"app_version", @"wifiNetworkName": @"wifi_network_name", @"wifiNetworkStrength": @"wifi_network_strength", @"ipAddress": @"ip_address" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"batteryPercentage", @"chargingState", @"locationId", @"merchantId", @"networkConnectionType", @"paymentRegion", @"serialNumber", @"osVersion", @"appVersion", @"wifiNetworkName", @"wifiNetworkStrength", @"ipAddress"];
  return [optionalProperties containsObject:propertyName];
}

@end
