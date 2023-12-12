#import "SQGiftCardActivity.h"

@implementation SQGiftCardActivity

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"type": @"type", @"locationId": @"location_id", @"createdAt": @"created_at", @"giftCardId": @"gift_card_id", @"giftCardGan": @"gift_card_gan", @"giftCardBalanceMoney": @"gift_card_balance_money", @"loadActivityDetails": @"load_activity_details", @"activateActivityDetails": @"activate_activity_details", @"redeemActivityDetails": @"redeem_activity_details", @"clearBalanceActivityDetails": @"clear_balance_activity_details", @"deactivateActivityDetails": @"deactivate_activity_details", @"adjustIncrementActivityDetails": @"adjust_increment_activity_details", @"adjustDecrementActivityDetails": @"adjust_decrement_activity_details", @"refundActivityDetails": @"refund_activity_details", @"unlinkedActivityRefundActivityDetails": @"unlinked_activity_refund_activity_details", @"importActivityDetails": @"import_activity_details", @"blockActivityDetails": @"block_activity_details", @"unblockActivityDetails": @"unblock_activity_details", @"importReversalActivityDetails": @"import_reversal_activity_details", @"transferBalanceToActivityDetails": @"transfer_balance_to_activity_details", @"transferBalanceFromActivityDetails": @"transfer_balance_from_activity_details" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"createdAt", @"giftCardId", @"giftCardGan", @"giftCardBalanceMoney", @"loadActivityDetails", @"activateActivityDetails", @"redeemActivityDetails", @"clearBalanceActivityDetails", @"deactivateActivityDetails", @"adjustIncrementActivityDetails", @"adjustDecrementActivityDetails", @"refundActivityDetails", @"unlinkedActivityRefundActivityDetails", @"importActivityDetails", @"blockActivityDetails", @"unblockActivityDetails", @"importReversalActivityDetails", @"transferBalanceToActivityDetails", @"transferBalanceFromActivityDetails"];
  return [optionalProperties containsObject:propertyName];
}

@end
