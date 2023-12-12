#import "SQCustomerFilter.h"

@implementation SQCustomerFilter

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"creationSource": @"creation_source", @"createdAt": @"created_at", @"updatedAt": @"updated_at", @"emailAddress": @"email_address", @"phoneNumber": @"phone_number", @"referenceId": @"reference_id", @"groupIds": @"group_ids", @"customAttribute": @"custom_attribute", @"segmentIds": @"segment_ids" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"creationSource", @"createdAt", @"updatedAt", @"emailAddress", @"phoneNumber", @"referenceId", @"groupIds", @"customAttribute", @"segmentIds"];
  return [optionalProperties containsObject:propertyName];
}

@end
