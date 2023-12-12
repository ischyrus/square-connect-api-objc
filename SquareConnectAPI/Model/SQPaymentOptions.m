#import "SQPaymentOptions.h"

@implementation SQPaymentOptions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"autocomplete": @"autocomplete", @"delayDuration": @"delay_duration", @"acceptPartialAuthorization": @"accept_partial_authorization", @"delayAction": @"delay_action" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"autocomplete", @"delayDuration", @"acceptPartialAuthorization", @"delayAction"];
  return [optionalProperties containsObject:propertyName];
}

@end
