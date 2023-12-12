#import "SQCreateCustomerRequest.h"

@implementation SQCreateCustomerRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"idempotencyKey": @"idempotency_key", @"givenName": @"given_name", @"familyName": @"family_name", @"companyName": @"company_name", @"nickname": @"nickname", @"emailAddress": @"email_address", @"address": @"address", @"phoneNumber": @"phone_number", @"referenceId": @"reference_id", @"note": @"note", @"birthday": @"birthday", @"taxIds": @"tax_ids" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"idempotencyKey", @"givenName", @"familyName", @"companyName", @"nickname", @"emailAddress", @"address", @"phoneNumber", @"referenceId", @"note", @"birthday", @"taxIds"];
  return [optionalProperties containsObject:propertyName];
}

@end
