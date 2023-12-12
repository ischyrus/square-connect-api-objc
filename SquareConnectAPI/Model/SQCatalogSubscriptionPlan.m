#import "SQCatalogSubscriptionPlan.h"

@implementation SQCatalogSubscriptionPlan

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"name": @"name", @"phases": @"phases", @"subscriptionPlanVariations": @"subscription_plan_variations", @"eligibleItemIds": @"eligible_item_ids", @"eligibleCategoryIds": @"eligible_category_ids", @"allItems": @"all_items" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"phases", @"subscriptionPlanVariations", @"eligibleItemIds", @"eligibleCategoryIds", @"allItems"];
  return [optionalProperties containsObject:propertyName];
}

@end
