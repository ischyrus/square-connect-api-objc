#import "SQAddress.h"

@implementation SQAddress

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"addressLine1": @"address_line_1", @"addressLine2": @"address_line_2", @"addressLine3": @"address_line_3", @"locality": @"locality", @"sublocality": @"sublocality", @"sublocality2": @"sublocality_2", @"sublocality3": @"sublocality_3", @"administrativeDistrictLevel1": @"administrative_district_level_1", @"administrativeDistrictLevel2": @"administrative_district_level_2", @"administrativeDistrictLevel3": @"administrative_district_level_3", @"postalCode": @"postal_code", @"country": @"country", @"firstName": @"first_name", @"lastName": @"last_name" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"addressLine1", @"addressLine2", @"addressLine3", @"locality", @"sublocality", @"sublocality2", @"sublocality3", @"administrativeDistrictLevel1", @"administrativeDistrictLevel2", @"administrativeDistrictLevel3", @"postalCode", @"country", @"firstName", @"lastName"];
  return [optionalProperties containsObject:propertyName];
}

@end
