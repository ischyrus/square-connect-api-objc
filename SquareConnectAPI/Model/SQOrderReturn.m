#import "SQOrderReturn.h"

@implementation SQOrderReturn

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"uid": @"uid", @"sourceOrderId": @"source_order_id", @"returnLineItems": @"return_line_items", @"returnServiceCharges": @"return_service_charges", @"returnTaxes": @"return_taxes", @"returnDiscounts": @"return_discounts", @"roundingAdjustment": @"rounding_adjustment", @"returnAmounts": @"return_amounts" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"uid", @"sourceOrderId", @"returnLineItems", @"returnServiceCharges", @"returnTaxes", @"returnDiscounts", @"roundingAdjustment", @"returnAmounts"];
  return [optionalProperties containsObject:propertyName];
}

@end
