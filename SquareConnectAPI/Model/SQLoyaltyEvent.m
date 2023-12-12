#import "SQLoyaltyEvent.h"

@implementation SQLoyaltyEvent

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"type": @"type", @"createdAt": @"created_at", @"accumulatePoints": @"accumulate_points", @"createReward": @"create_reward", @"redeemReward": @"redeem_reward", @"deleteReward": @"delete_reward", @"adjustPoints": @"adjust_points", @"loyaltyAccountId": @"loyalty_account_id", @"locationId": @"location_id", @"source": @"source", @"expirePoints": @"expire_points", @"otherEvent": @"other_event", @"accumulatePromotionPoints": @"accumulate_promotion_points" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accumulatePoints", @"createReward", @"redeemReward", @"deleteReward", @"adjustPoints", @"locationId", @"expirePoints", @"otherEvent", @"accumulatePromotionPoints"];
  return [optionalProperties containsObject:propertyName];
}

@end
