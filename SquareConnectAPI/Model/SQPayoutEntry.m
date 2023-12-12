#import "SQPayoutEntry.h"

@implementation SQPayoutEntry

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"payoutId": @"payout_id", @"effectiveAt": @"effective_at", @"type": @"type", @"grossAmountMoney": @"gross_amount_money", @"feeAmountMoney": @"fee_amount_money", @"netAmountMoney": @"net_amount_money", @"typeAppFeeRevenueDetails": @"type_app_fee_revenue_details", @"typeAppFeeRefundDetails": @"type_app_fee_refund_details", @"typeAutomaticSavingsDetails": @"type_automatic_savings_details", @"typeAutomaticSavingsReversedDetails": @"type_automatic_savings_reversed_details", @"typeChargeDetails": @"type_charge_details", @"typeDepositFeeDetails": @"type_deposit_fee_details", @"typeDisputeDetails": @"type_dispute_details", @"typeFeeDetails": @"type_fee_details", @"typeFreeProcessingDetails": @"type_free_processing_details", @"typeHoldAdjustmentDetails": @"type_hold_adjustment_details", @"typeOpenDisputeDetails": @"type_open_dispute_details", @"typeOtherDetails": @"type_other_details", @"typeOtherAdjustmentDetails": @"type_other_adjustment_details", @"typeRefundDetails": @"type_refund_details", @"typeReleaseAdjustmentDetails": @"type_release_adjustment_details", @"typeReserveHoldDetails": @"type_reserve_hold_details", @"typeReserveReleaseDetails": @"type_reserve_release_details", @"typeSquareCapitalPaymentDetails": @"type_square_capital_payment_details", @"typeSquareCapitalReversedPaymentDetails": @"type_square_capital_reversed_payment_details", @"typeTaxOnFeeDetails": @"type_tax_on_fee_details", @"typeThirdPartyFeeDetails": @"type_third_party_fee_details", @"typeThirdPartyFeeRefundDetails": @"type_third_party_fee_refund_details" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"effectiveAt", @"type", @"grossAmountMoney", @"feeAmountMoney", @"netAmountMoney", @"typeAppFeeRevenueDetails", @"typeAppFeeRefundDetails", @"typeAutomaticSavingsDetails", @"typeAutomaticSavingsReversedDetails", @"typeChargeDetails", @"typeDepositFeeDetails", @"typeDisputeDetails", @"typeFeeDetails", @"typeFreeProcessingDetails", @"typeHoldAdjustmentDetails", @"typeOpenDisputeDetails", @"typeOtherDetails", @"typeOtherAdjustmentDetails", @"typeRefundDetails", @"typeReleaseAdjustmentDetails", @"typeReserveHoldDetails", @"typeReserveReleaseDetails", @"typeSquareCapitalPaymentDetails", @"typeSquareCapitalReversedPaymentDetails", @"typeTaxOnFeeDetails", @"typeThirdPartyFeeDetails", @"typeThirdPartyFeeRefundDetails"];
  return [optionalProperties containsObject:propertyName];
}

@end
