#import "SQOrderLineItemPricingBlocklistsBlockedTax.h"

@implementation SQOrderLineItemPricingBlocklistsBlockedTax

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"uid": @"uid", @"taxUid": @"tax_uid", @"taxCatalogObjectId": @"tax_catalog_object_id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"uid", @"taxUid", @"taxCatalogObjectId"];
  return [optionalProperties containsObject:propertyName];
}

@end
