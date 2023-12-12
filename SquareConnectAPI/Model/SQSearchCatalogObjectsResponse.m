#import "SQSearchCatalogObjectsResponse.h"

@implementation SQSearchCatalogObjectsResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"errors": @"errors", @"cursor": @"cursor", @"objects": @"objects", @"relatedObjects": @"related_objects", @"latestTime": @"latest_time" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"errors", @"cursor", @"objects", @"relatedObjects", @"latestTime"];
  return [optionalProperties containsObject:propertyName];
}

@end
