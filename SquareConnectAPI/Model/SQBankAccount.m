#import "SQBankAccount.h"

@implementation SQBankAccount

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"accountNumberSuffix": @"account_number_suffix", @"country": @"country", @"currency": @"currency", @"accountType": @"account_type", @"holderName": @"holder_name", @"primaryBankIdentificationNumber": @"primary_bank_identification_number", @"secondaryBankIdentificationNumber": @"secondary_bank_identification_number", @"debitMandateReferenceId": @"debit_mandate_reference_id", @"referenceId": @"reference_id", @"locationId": @"location_id", @"status": @"status", @"creditable": @"creditable", @"debitable": @"debitable", @"fingerprint": @"fingerprint", @"version": @"version", @"bankName": @"bank_name" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"secondaryBankIdentificationNumber", @"debitMandateReferenceId", @"referenceId", @"locationId", @"fingerprint", @"version", @"bankName"];
  return [optionalProperties containsObject:propertyName];
}

@end
