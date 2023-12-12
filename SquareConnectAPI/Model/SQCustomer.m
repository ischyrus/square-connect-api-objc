#import "SQCustomer.h"

@implementation SQCustomer

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"createdAt": @"created_at", @"updatedAt": @"updated_at", @"cards": @"cards", @"givenName": @"given_name", @"familyName": @"family_name", @"nickname": @"nickname", @"companyName": @"company_name", @"emailAddress": @"email_address", @"address": @"address", @"phoneNumber": @"phone_number", @"birthday": @"birthday", @"referenceId": @"reference_id", @"note": @"note", @"preferences": @"preferences", @"creationSource": @"creation_source", @"groupIds": @"group_ids", @"segmentIds": @"segment_ids", @"version": @"version", @"taxIds": @"tax_ids" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"createdAt", @"updatedAt", @"cards", @"givenName", @"familyName", @"nickname", @"companyName", @"emailAddress", @"address", @"phoneNumber", @"birthday", @"referenceId", @"note", @"preferences", @"creationSource", @"groupIds", @"segmentIds", @"version", @"taxIds"];
  return [optionalProperties containsObject:propertyName];
}

@end
