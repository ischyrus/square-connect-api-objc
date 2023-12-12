#import "SQAppointmentSegment.h"

@implementation SQAppointmentSegment

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"durationMinutes": @"duration_minutes", @"serviceVariationId": @"service_variation_id", @"teamMemberId": @"team_member_id", @"serviceVariationVersion": @"service_variation_version", @"intermissionMinutes": @"intermission_minutes", @"anyTeamMember": @"any_team_member", @"resourceIds": @"resource_ids" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"durationMinutes", @"serviceVariationId", @"serviceVariationVersion", @"intermissionMinutes", @"anyTeamMember", @"resourceIds"];
  return [optionalProperties containsObject:propertyName];
}

@end
