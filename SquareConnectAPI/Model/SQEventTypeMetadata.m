#import "SQEventTypeMetadata.h"

@implementation SQEventTypeMetadata

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"eventType": @"event_type", @"apiVersionIntroduced": @"api_version_introduced", @"releaseStatus": @"release_status" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"eventType", @"apiVersionIntroduced", @"releaseStatus"];
  return [optionalProperties containsObject:propertyName];
}

@end
