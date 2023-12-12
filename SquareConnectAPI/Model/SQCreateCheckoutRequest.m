#import "SQCreateCheckoutRequest.h"

@implementation SQCreateCheckoutRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"idempotencyKey": @"idempotency_key", @"order": @"order", @"askForShippingAddress": @"ask_for_shipping_address", @"merchantSupportEmail": @"merchant_support_email", @"prePopulateBuyerEmail": @"pre_populate_buyer_email", @"prePopulateShippingAddress": @"pre_populate_shipping_address", @"redirectUrl": @"redirect_url", @"additionalRecipients": @"additional_recipients", @"note": @"note" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"askForShippingAddress", @"merchantSupportEmail", @"prePopulateBuyerEmail", @"prePopulateShippingAddress", @"redirectUrl", @"additionalRecipients", @"note"];
  return [optionalProperties containsObject:propertyName];
}

@end
