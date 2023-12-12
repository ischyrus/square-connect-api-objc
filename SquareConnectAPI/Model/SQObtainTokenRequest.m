#import "SQObtainTokenRequest.h"

@implementation SQObtainTokenRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"clientId": @"client_id", @"clientSecret": @"client_secret", @"code": @"code", @"redirectUri": @"redirect_uri", @"grantType": @"grant_type", @"refreshToken": @"refresh_token", @"migrationToken": @"migration_token", @"scopes": @"scopes", @"shortLived": @"short_lived", @"codeVerifier": @"code_verifier" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"clientSecret", @"code", @"redirectUri", @"refreshToken", @"migrationToken", @"scopes", @"shortLived", @"codeVerifier"];
  return [optionalProperties containsObject:propertyName];
}

@end
