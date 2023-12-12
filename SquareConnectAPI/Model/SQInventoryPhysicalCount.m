#import "SQInventoryPhysicalCount.h"

@implementation SQInventoryPhysicalCount

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"referenceId": @"reference_id", @"catalogObjectId": @"catalog_object_id", @"catalogObjectType": @"catalog_object_type", @"state": @"state", @"locationId": @"location_id", @"quantity": @"quantity", @"source": @"source", @"employeeId": @"employee_id", @"teamMemberId": @"team_member_id", @"occurredAt": @"occurred_at", @"createdAt": @"created_at" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"referenceId", @"catalogObjectId", @"catalogObjectType", @"state", @"locationId", @"quantity", @"source", @"employeeId", @"teamMemberId", @"occurredAt", @"createdAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
