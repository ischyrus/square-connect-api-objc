#import "SQLocation.h"

@implementation SQLocation

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"name": @"name", @"address": @"address", @"timezone": @"timezone", @"capabilities": @"capabilities", @"status": @"status", @"createdAt": @"created_at", @"merchantId": @"merchant_id", @"country": @"country", @"languageCode": @"language_code", @"currency": @"currency", @"phoneNumber": @"phone_number", @"businessName": @"business_name", @"type": @"type", @"websiteUrl": @"website_url", @"businessHours": @"business_hours", @"businessEmail": @"business_email", @"_description": @"description", @"twitterUsername": @"twitter_username", @"instagramUsername": @"instagram_username", @"facebookUrl": @"facebook_url", @"coordinates": @"coordinates", @"logoUrl": @"logo_url", @"posBackgroundUrl": @"pos_background_url", @"mcc": @"mcc", @"fullFormatLogoUrl": @"full_format_logo_url", @"taxIds": @"tax_ids" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"name", @"address", @"timezone", @"capabilities", @"status", @"createdAt", @"merchantId", @"country", @"languageCode", @"currency", @"phoneNumber", @"businessName", @"type", @"websiteUrl", @"businessHours", @"businessEmail", @"_description", @"twitterUsername", @"instagramUsername", @"facebookUrl", @"coordinates", @"logoUrl", @"posBackgroundUrl", @"mcc", @"fullFormatLogoUrl", @"taxIds"];
  return [optionalProperties containsObject:propertyName];
}

@end
