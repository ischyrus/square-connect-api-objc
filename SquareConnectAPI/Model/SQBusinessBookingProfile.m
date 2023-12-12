#import "SQBusinessBookingProfile.h"

@implementation SQBusinessBookingProfile

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"sellerId": @"seller_id", @"createdAt": @"created_at", @"bookingEnabled": @"booking_enabled", @"customerTimezoneChoice": @"customer_timezone_choice", @"bookingPolicy": @"booking_policy", @"allowUserCancel": @"allow_user_cancel", @"businessAppointmentSettings": @"business_appointment_settings", @"supportSellerLevelWrites": @"support_seller_level_writes" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"sellerId", @"createdAt", @"bookingEnabled", @"customerTimezoneChoice", @"bookingPolicy", @"allowUserCancel", @"businessAppointmentSettings", @"supportSellerLevelWrites"];
  return [optionalProperties containsObject:propertyName];
}

@end
