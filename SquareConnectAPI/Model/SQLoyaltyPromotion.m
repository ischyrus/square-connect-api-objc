#import "SQLoyaltyPromotion.h"

@implementation SQLoyaltyPromotion

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"name": @"name", @"incentive": @"incentive", @"availableTime": @"available_time", @"triggerLimit": @"trigger_limit", @"status": @"status", @"createdAt": @"created_at", @"canceledAt": @"canceled_at", @"updatedAt": @"updated_at", @"loyaltyProgramId": @"loyalty_program_id", @"minimumSpendAmountMoney": @"minimum_spend_amount_money", @"qualifyingItemVariationIds": @"qualifying_item_variation_ids", @"qualifyingCategoryIds": @"qualifying_category_ids" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"triggerLimit", @"status", @"createdAt", @"canceledAt", @"updatedAt", @"loyaltyProgramId", @"minimumSpendAmountMoney", ];
  return [optionalProperties containsObject:propertyName];
}

@end
