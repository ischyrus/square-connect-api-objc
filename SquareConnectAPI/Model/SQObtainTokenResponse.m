#import "SQObtainTokenResponse.h"

@implementation SQObtainTokenResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"accessToken": @"access_token", @"tokenType": @"token_type", @"expiresAt": @"expires_at", @"merchantId": @"merchant_id", @"subscriptionId": @"subscription_id", @"planId": @"plan_id", @"idToken": @"id_token", @"refreshToken": @"refresh_token", @"shortLived": @"short_lived", @"errors": @"errors", @"refreshTokenExpiresAt": @"refresh_token_expires_at" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accessToken", @"tokenType", @"expiresAt", @"merchantId", @"subscriptionId", @"planId", @"idToken", @"refreshToken", @"shortLived", @"errors", @"refreshTokenExpiresAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
