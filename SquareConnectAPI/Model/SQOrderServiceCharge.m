#import "SQOrderServiceCharge.h"

@implementation SQOrderServiceCharge

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"uid": @"uid", @"name": @"name", @"catalogObjectId": @"catalog_object_id", @"catalogVersion": @"catalog_version", @"percentage": @"percentage", @"amountMoney": @"amount_money", @"appliedMoney": @"applied_money", @"totalMoney": @"total_money", @"totalTaxMoney": @"total_tax_money", @"calculationPhase": @"calculation_phase", @"taxable": @"taxable", @"appliedTaxes": @"applied_taxes", @"metadata": @"metadata", @"type": @"type", @"treatmentType": @"treatment_type", @"scope": @"scope" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"uid", @"name", @"catalogObjectId", @"catalogVersion", @"percentage", @"amountMoney", @"appliedMoney", @"totalMoney", @"totalTaxMoney", @"calculationPhase", @"taxable", @"appliedTaxes", @"metadata", @"type", @"treatmentType", @"scope"];
  return [optionalProperties containsObject:propertyName];
}

@end
