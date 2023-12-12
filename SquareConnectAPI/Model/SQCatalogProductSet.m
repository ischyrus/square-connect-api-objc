#import "SQCatalogProductSet.h"

@implementation SQCatalogProductSet

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"name": @"name", @"productIdsAny": @"product_ids_any", @"productIdsAll": @"product_ids_all", @"quantityExact": @"quantity_exact", @"quantityMin": @"quantity_min", @"quantityMax": @"quantity_max", @"allProducts": @"all_products" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"productIdsAny", @"productIdsAll", @"quantityExact", @"quantityMin", @"quantityMax", @"allProducts"];
  return [optionalProperties containsObject:propertyName];
}

@end
