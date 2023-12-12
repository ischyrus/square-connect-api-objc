#import "SQDeviceComponentDetailsWiFiDetails.h"

@implementation SQDeviceComponentDetailsWiFiDetails

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"active": @"active", @"ssid": @"ssid", @"ipAddressV4": @"ip_address_v4", @"secureConnection": @"secure_connection", @"signalStrength": @"signal_strength" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"active", @"ssid", @"ipAddressV4", @"secureConnection", @"signalStrength"];
  return [optionalProperties containsObject:propertyName];
}

@end
