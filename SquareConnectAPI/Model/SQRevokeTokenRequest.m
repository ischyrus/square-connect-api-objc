#import "SQRevokeTokenRequest.h"

@implementation SQRevokeTokenRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"clientId": @"client_id", @"accessToken": @"access_token", @"merchantId": @"merchant_id", @"revokeOnlyAccessToken": @"revoke_only_access_token" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"clientId", @"accessToken", @"merchantId", @"revokeOnlyAccessToken"];
  return [optionalProperties containsObject:propertyName];
}

@end
