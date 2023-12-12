#import "SQTeamMemberBookingProfile.h"

@implementation SQTeamMemberBookingProfile

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"teamMemberId": @"team_member_id", @"_description": @"description", @"displayName": @"display_name", @"isBookable": @"is_bookable", @"profileImageUrl": @"profile_image_url" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"teamMemberId", @"_description", @"displayName", @"isBookable", @"profileImageUrl"];
  return [optionalProperties containsObject:propertyName];
}

@end
