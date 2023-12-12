#import "SQV1PaymentItemDetail.h"

@implementation SQV1PaymentItemDetail

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"categoryName": @"category_name", @"sku": @"sku", @"itemId": @"item_id", @"itemVariationId": @"item_variation_id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"categoryName", @"sku", @"itemId", @"itemVariationId"];
  return [optionalProperties containsObject:propertyName];
}

@end
