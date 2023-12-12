#import "SQDeviceCode.h"

@implementation SQDeviceCode

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"name": @"name", @"code": @"code", @"deviceId": @"device_id", @"productType": @"product_type", @"locationId": @"location_id", @"status": @"status", @"pairBy": @"pair_by", @"createdAt": @"created_at", @"statusChangedAt": @"status_changed_at", @"pairedAt": @"paired_at" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"name", @"code", @"deviceId", @"locationId", @"status", @"pairBy", @"createdAt", @"statusChangedAt", @"pairedAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
