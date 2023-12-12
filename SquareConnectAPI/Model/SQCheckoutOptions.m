#import "SQCheckoutOptions.h"

@implementation SQCheckoutOptions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"allowTipping": @"allow_tipping", @"customFields": @"custom_fields", @"subscriptionPlanId": @"subscription_plan_id", @"redirectUrl": @"redirect_url", @"merchantSupportEmail": @"merchant_support_email", @"askForShippingAddress": @"ask_for_shipping_address", @"acceptedPaymentMethods": @"accepted_payment_methods", @"appFeeMoney": @"app_fee_money", @"shippingFee": @"shipping_fee", @"enableCoupon": @"enable_coupon", @"enableLoyalty": @"enable_loyalty" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"allowTipping", @"customFields", @"subscriptionPlanId", @"redirectUrl", @"merchantSupportEmail", @"askForShippingAddress", @"acceptedPaymentMethods", @"appFeeMoney", @"shippingFee", @"enableCoupon", @"enableLoyalty"];
  return [optionalProperties containsObject:propertyName];
}

@end
