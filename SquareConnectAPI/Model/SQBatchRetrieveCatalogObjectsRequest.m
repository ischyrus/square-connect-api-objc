#import "SQBatchRetrieveCatalogObjectsRequest.h"

@implementation SQBatchRetrieveCatalogObjectsRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"objectIds": @"object_ids", @"includeRelatedObjects": @"include_related_objects", @"catalogVersion": @"catalog_version", @"includeDeletedObjects": @"include_deleted_objects" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"includeRelatedObjects", @"catalogVersion", @"includeDeletedObjects"];
  return [optionalProperties containsObject:propertyName];
}

@end
