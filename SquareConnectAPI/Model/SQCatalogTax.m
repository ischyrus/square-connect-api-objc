#import "SQCatalogTax.h"

@implementation SQCatalogTax

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"name": @"name", @"calculationPhase": @"calculation_phase", @"inclusionType": @"inclusion_type", @"percentage": @"percentage", @"appliesToCustomAmounts": @"applies_to_custom_amounts", @"enabled": @"enabled", @"appliesToProductSetId": @"applies_to_product_set_id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"calculationPhase", @"inclusionType", @"percentage", @"appliesToCustomAmounts", @"enabled", @"appliesToProductSetId"];
  return [optionalProperties containsObject:propertyName];
}

@end
