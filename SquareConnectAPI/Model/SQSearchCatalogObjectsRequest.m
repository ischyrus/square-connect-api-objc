#import "SQSearchCatalogObjectsRequest.h"

@implementation SQSearchCatalogObjectsRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"cursor": @"cursor", @"objectTypes": @"object_types", @"includeDeletedObjects": @"include_deleted_objects", @"includeRelatedObjects": @"include_related_objects", @"beginTime": @"begin_time", @"query": @"query", @"limit": @"limit" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"cursor", @"objectTypes", @"includeDeletedObjects", @"includeRelatedObjects", @"beginTime", @"query", @"limit"];
  return [optionalProperties containsObject:propertyName];
}

@end
