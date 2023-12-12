#import "SQOrderFulfillmentDeliveryDetails.h"

@implementation SQOrderFulfillmentDeliveryDetails

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"recipient": @"recipient", @"scheduleType": @"schedule_type", @"placedAt": @"placed_at", @"deliverAt": @"deliver_at", @"prepTimeDuration": @"prep_time_duration", @"deliveryWindowDuration": @"delivery_window_duration", @"note": @"note", @"completedAt": @"completed_at", @"inProgressAt": @"in_progress_at", @"rejectedAt": @"rejected_at", @"readyAt": @"ready_at", @"deliveredAt": @"delivered_at", @"canceledAt": @"canceled_at", @"cancelReason": @"cancel_reason", @"courierPickupAt": @"courier_pickup_at", @"courierPickupWindowDuration": @"courier_pickup_window_duration", @"isNoContactDelivery": @"is_no_contact_delivery", @"dropoffNotes": @"dropoff_notes", @"courierProviderName": @"courier_provider_name", @"courierSupportPhoneNumber": @"courier_support_phone_number", @"squareDeliveryId": @"square_delivery_id", @"externalDeliveryId": @"external_delivery_id", @"managedDelivery": @"managed_delivery" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"recipient", @"scheduleType", @"placedAt", @"deliverAt", @"prepTimeDuration", @"deliveryWindowDuration", @"note", @"completedAt", @"inProgressAt", @"rejectedAt", @"readyAt", @"deliveredAt", @"canceledAt", @"cancelReason", @"courierPickupAt", @"courierPickupWindowDuration", @"isNoContactDelivery", @"dropoffNotes", @"courierProviderName", @"courierSupportPhoneNumber", @"squareDeliveryId", @"externalDeliveryId", @"managedDelivery"];
  return [optionalProperties containsObject:propertyName];
}

@end
