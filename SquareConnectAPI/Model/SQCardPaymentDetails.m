#import "SQCardPaymentDetails.h"

@implementation SQCardPaymentDetails

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"status": @"status", @"card": @"card", @"entryMethod": @"entry_method", @"cvvStatus": @"cvv_status", @"avsStatus": @"avs_status", @"authResultCode": @"auth_result_code", @"applicationIdentifier": @"application_identifier", @"applicationName": @"application_name", @"applicationCryptogram": @"application_cryptogram", @"verificationMethod": @"verification_method", @"verificationResults": @"verification_results", @"statementDescription": @"statement_description", @"deviceDetails": @"device_details", @"cardPaymentTimeline": @"card_payment_timeline", @"refundRequiresCardPresence": @"refund_requires_card_presence", @"errors": @"errors" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"status", @"card", @"entryMethod", @"cvvStatus", @"avsStatus", @"authResultCode", @"applicationIdentifier", @"applicationName", @"applicationCryptogram", @"verificationMethod", @"verificationResults", @"statementDescription", @"deviceDetails", @"cardPaymentTimeline", @"refundRequiresCardPresence", @"errors"];
  return [optionalProperties containsObject:propertyName];
}

@end
