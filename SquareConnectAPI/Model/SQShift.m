#import "SQShift.h"

@implementation SQShift

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"employeeId": @"employee_id", @"locationId": @"location_id", @"timezone": @"timezone", @"startAt": @"start_at", @"endAt": @"end_at", @"wage": @"wage", @"breaks": @"breaks", @"status": @"status", @"version": @"version", @"createdAt": @"created_at", @"updatedAt": @"updated_at", @"teamMemberId": @"team_member_id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"employeeId", @"locationId", @"timezone", @"endAt", @"wage", @"breaks", @"status", @"version", @"createdAt", @"updatedAt", @"teamMemberId"];
  return [optionalProperties containsObject:propertyName];
}

@end
