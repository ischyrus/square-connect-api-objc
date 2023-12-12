#import "SQDeviceAttributes.h"

@implementation SQDeviceAttributes

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"type": @"type", @"manufacturer": @"manufacturer", @"model": @"model", @"name": @"name", @"manufacturersId": @"manufacturers_id", @"updatedAt": @"updated_at", @"version": @"version", @"merchantToken": @"merchant_token" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"model", @"name", @"manufacturersId", @"updatedAt", @"version", @"merchantToken"];
  return [optionalProperties containsObject:propertyName];
}

@end
