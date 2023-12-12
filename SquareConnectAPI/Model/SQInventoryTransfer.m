#import "SQInventoryTransfer.h"

@implementation SQInventoryTransfer

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"referenceId": @"reference_id", @"state": @"state", @"fromLocationId": @"from_location_id", @"toLocationId": @"to_location_id", @"catalogObjectId": @"catalog_object_id", @"catalogObjectType": @"catalog_object_type", @"quantity": @"quantity", @"occurredAt": @"occurred_at", @"createdAt": @"created_at", @"source": @"source", @"employeeId": @"employee_id", @"teamMemberId": @"team_member_id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"referenceId", @"state", @"fromLocationId", @"toLocationId", @"catalogObjectId", @"catalogObjectType", @"quantity", @"occurredAt", @"createdAt", @"source", @"employeeId", @"teamMemberId"];
  return [optionalProperties containsObject:propertyName];
}

@end
