#import "SQBankAccountPaymentDetails.h"

@implementation SQBankAccountPaymentDetails

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"bankName": @"bank_name", @"transferType": @"transfer_type", @"accountOwnershipType": @"account_ownership_type", @"fingerprint": @"fingerprint", @"country": @"country", @"statementDescription": @"statement_description", @"achDetails": @"ach_details", @"errors": @"errors" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"bankName", @"transferType", @"accountOwnershipType", @"fingerprint", @"country", @"statementDescription", @"achDetails", @"errors"];
  return [optionalProperties containsObject:propertyName];
}

@end
