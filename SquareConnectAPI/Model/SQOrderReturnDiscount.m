#import "SQOrderReturnDiscount.h"

@implementation SQOrderReturnDiscount

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"uid": @"uid", @"sourceDiscountUid": @"source_discount_uid", @"catalogObjectId": @"catalog_object_id", @"catalogVersion": @"catalog_version", @"name": @"name", @"type": @"type", @"percentage": @"percentage", @"amountMoney": @"amount_money", @"appliedMoney": @"applied_money", @"scope": @"scope" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"uid", @"sourceDiscountUid", @"catalogObjectId", @"catalogVersion", @"name", @"type", @"percentage", @"amountMoney", @"appliedMoney", @"scope"];
  return [optionalProperties containsObject:propertyName];
}

@end
