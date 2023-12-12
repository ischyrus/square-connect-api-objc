#import "SQCheckout.h"

@implementation SQCheckout

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"checkoutPageUrl": @"checkout_page_url", @"askForShippingAddress": @"ask_for_shipping_address", @"merchantSupportEmail": @"merchant_support_email", @"prePopulateBuyerEmail": @"pre_populate_buyer_email", @"prePopulateShippingAddress": @"pre_populate_shipping_address", @"redirectUrl": @"redirect_url", @"order": @"order", @"createdAt": @"created_at", @"additionalRecipients": @"additional_recipients" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"checkoutPageUrl", @"askForShippingAddress", @"merchantSupportEmail", @"prePopulateBuyerEmail", @"prePopulateShippingAddress", @"redirectUrl", @"order", @"createdAt", @"additionalRecipients"];
  return [optionalProperties containsObject:propertyName];
}

@end
