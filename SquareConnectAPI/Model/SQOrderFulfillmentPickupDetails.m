#import "SQOrderFulfillmentPickupDetails.h"

@implementation SQOrderFulfillmentPickupDetails

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"recipient": @"recipient", @"expiresAt": @"expires_at", @"autoCompleteDuration": @"auto_complete_duration", @"scheduleType": @"schedule_type", @"pickupAt": @"pickup_at", @"pickupWindowDuration": @"pickup_window_duration", @"prepTimeDuration": @"prep_time_duration", @"note": @"note", @"placedAt": @"placed_at", @"acceptedAt": @"accepted_at", @"rejectedAt": @"rejected_at", @"readyAt": @"ready_at", @"expiredAt": @"expired_at", @"pickedUpAt": @"picked_up_at", @"canceledAt": @"canceled_at", @"cancelReason": @"cancel_reason", @"isCurbsidePickup": @"is_curbside_pickup", @"curbsidePickupDetails": @"curbside_pickup_details" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"recipient", @"expiresAt", @"autoCompleteDuration", @"scheduleType", @"pickupAt", @"pickupWindowDuration", @"prepTimeDuration", @"note", @"placedAt", @"acceptedAt", @"rejectedAt", @"readyAt", @"expiredAt", @"pickedUpAt", @"canceledAt", @"cancelReason", @"isCurbsidePickup", @"curbsidePickupDetails"];
  return [optionalProperties containsObject:propertyName];
}

@end
