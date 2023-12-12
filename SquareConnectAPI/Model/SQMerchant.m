#import "SQMerchant.h"

@implementation SQMerchant

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"businessName": @"business_name", @"country": @"country", @"languageCode": @"language_code", @"currency": @"currency", @"status": @"status", @"mainLocationId": @"main_location_id", @"createdAt": @"created_at" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"businessName", @"languageCode", @"currency", @"status", @"mainLocationId", @"createdAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
