#import "SQInvoiceRecipient.h"

@implementation SQInvoiceRecipient

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"customerId": @"customer_id", @"givenName": @"given_name", @"familyName": @"family_name", @"emailAddress": @"email_address", @"address": @"address", @"phoneNumber": @"phone_number", @"companyName": @"company_name", @"taxIds": @"tax_ids" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"customerId", @"givenName", @"familyName", @"emailAddress", @"address", @"phoneNumber", @"companyName", @"taxIds"];
  return [optionalProperties containsObject:propertyName];
}

@end
