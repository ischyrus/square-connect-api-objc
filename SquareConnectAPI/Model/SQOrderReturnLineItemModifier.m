#import "SQOrderReturnLineItemModifier.h"

@implementation SQOrderReturnLineItemModifier

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"uid": @"uid", @"sourceModifierUid": @"source_modifier_uid", @"catalogObjectId": @"catalog_object_id", @"catalogVersion": @"catalog_version", @"name": @"name", @"basePriceMoney": @"base_price_money", @"totalPriceMoney": @"total_price_money", @"quantity": @"quantity" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"uid", @"sourceModifierUid", @"catalogObjectId", @"catalogVersion", @"name", @"basePriceMoney", @"totalPriceMoney", @"quantity"];
  return [optionalProperties containsObject:propertyName];
}

@end
