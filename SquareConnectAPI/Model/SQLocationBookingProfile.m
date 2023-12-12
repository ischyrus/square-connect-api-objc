#import "SQLocationBookingProfile.h"

@implementation SQLocationBookingProfile

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"locationId": @"location_id", @"bookingSiteUrl": @"booking_site_url", @"onlineBookingEnabled": @"online_booking_enabled" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"locationId", @"bookingSiteUrl", @"onlineBookingEnabled"];
  return [optionalProperties containsObject:propertyName];
}

@end
