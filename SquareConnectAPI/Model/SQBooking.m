#import "SQBooking.h"

@implementation SQBooking

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"version": @"version", @"status": @"status", @"createdAt": @"created_at", @"updatedAt": @"updated_at", @"startAt": @"start_at", @"locationId": @"location_id", @"customerId": @"customer_id", @"customerNote": @"customer_note", @"sellerNote": @"seller_note", @"appointmentSegments": @"appointment_segments", @"transitionTimeMinutes": @"transition_time_minutes", @"allDay": @"all_day", @"locationType": @"location_type", @"creatorDetails": @"creator_details", @"source": @"source" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"version", @"status", @"createdAt", @"updatedAt", @"startAt", @"locationId", @"customerId", @"customerNote", @"sellerNote", @"appointmentSegments", @"transitionTimeMinutes", @"allDay", @"locationType", @"creatorDetails", @"source"];
  return [optionalProperties containsObject:propertyName];
}

@end
