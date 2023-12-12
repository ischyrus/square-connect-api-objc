#import "SQTeamMember.h"

@implementation SQTeamMember

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"referenceId": @"reference_id", @"isOwner": @"is_owner", @"status": @"status", @"givenName": @"given_name", @"familyName": @"family_name", @"emailAddress": @"email_address", @"phoneNumber": @"phone_number", @"createdAt": @"created_at", @"updatedAt": @"updated_at", @"assignedLocations": @"assigned_locations" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"referenceId", @"isOwner", @"status", @"givenName", @"familyName", @"emailAddress", @"phoneNumber", @"createdAt", @"updatedAt", @"assignedLocations"];
  return [optionalProperties containsObject:propertyName];
}

@end
