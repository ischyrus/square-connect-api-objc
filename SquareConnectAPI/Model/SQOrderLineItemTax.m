#import "SQOrderLineItemTax.h"

@implementation SQOrderLineItemTax

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"uid": @"uid", @"catalogObjectId": @"catalog_object_id", @"catalogVersion": @"catalog_version", @"name": @"name", @"type": @"type", @"percentage": @"percentage", @"metadata": @"metadata", @"appliedMoney": @"applied_money", @"scope": @"scope", @"autoApplied": @"auto_applied" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"uid", @"catalogObjectId", @"catalogVersion", @"name", @"type", @"percentage", @"metadata", @"appliedMoney", @"scope", @"autoApplied"];
  return [optionalProperties containsObject:propertyName];
}

@end
