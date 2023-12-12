#import "SQListWebhookSubscriptionsRequest.h"

@implementation SQListWebhookSubscriptionsRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"cursor": @"cursor", @"includeDisabled": @"include_disabled", @"sortOrder": @"sort_order", @"limit": @"limit" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"cursor", @"includeDisabled", @"sortOrder", @"limit"];
  return [optionalProperties containsObject:propertyName];
}

@end
