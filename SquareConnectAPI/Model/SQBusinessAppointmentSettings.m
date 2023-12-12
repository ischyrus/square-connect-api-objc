#import "SQBusinessAppointmentSettings.h"

@implementation SQBusinessAppointmentSettings

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"locationTypes": @"location_types", @"alignmentTime": @"alignment_time", @"minBookingLeadTimeSeconds": @"min_booking_lead_time_seconds", @"maxBookingLeadTimeSeconds": @"max_booking_lead_time_seconds", @"anyTeamMemberBookingEnabled": @"any_team_member_booking_enabled", @"multipleServiceBookingEnabled": @"multiple_service_booking_enabled", @"maxAppointmentsPerDayLimitType": @"max_appointments_per_day_limit_type", @"maxAppointmentsPerDayLimit": @"max_appointments_per_day_limit", @"cancellationWindowSeconds": @"cancellation_window_seconds", @"cancellationFeeMoney": @"cancellation_fee_money", @"cancellationPolicy": @"cancellation_policy", @"cancellationPolicyText": @"cancellation_policy_text", @"skipBookingFlowStaffSelection": @"skip_booking_flow_staff_selection" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"locationTypes", @"alignmentTime", @"minBookingLeadTimeSeconds", @"maxBookingLeadTimeSeconds", @"anyTeamMemberBookingEnabled", @"multipleServiceBookingEnabled", @"maxAppointmentsPerDayLimitType", @"maxAppointmentsPerDayLimit", @"cancellationWindowSeconds", @"cancellationFeeMoney", @"cancellationPolicy", @"cancellationPolicyText", @"skipBookingFlowStaffSelection"];
  return [optionalProperties containsObject:propertyName];
}

@end
