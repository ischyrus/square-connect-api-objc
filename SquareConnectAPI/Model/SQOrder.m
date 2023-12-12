#import "SQOrder.h"

@implementation SQOrder

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"locationId": @"location_id", @"referenceId": @"reference_id", @"source": @"source", @"customerId": @"customer_id", @"lineItems": @"line_items", @"taxes": @"taxes", @"discounts": @"discounts", @"serviceCharges": @"service_charges", @"fulfillments": @"fulfillments", @"returns": @"returns", @"returnAmounts": @"return_amounts", @"netAmounts": @"net_amounts", @"roundingAdjustment": @"rounding_adjustment", @"tenders": @"tenders", @"refunds": @"refunds", @"metadata": @"metadata", @"createdAt": @"created_at", @"updatedAt": @"updated_at", @"closedAt": @"closed_at", @"state": @"state", @"version": @"version", @"totalMoney": @"total_money", @"totalTaxMoney": @"total_tax_money", @"totalDiscountMoney": @"total_discount_money", @"totalTipMoney": @"total_tip_money", @"totalServiceChargeMoney": @"total_service_charge_money", @"ticketName": @"ticket_name", @"pricingOptions": @"pricing_options", @"rewards": @"rewards", @"netAmountDueMoney": @"net_amount_due_money" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"referenceId", @"source", @"customerId", @"lineItems", @"taxes", @"discounts", @"serviceCharges", @"fulfillments", @"returns", @"returnAmounts", @"netAmounts", @"roundingAdjustment", @"tenders", @"refunds", @"metadata", @"createdAt", @"updatedAt", @"closedAt", @"state", @"version", @"totalMoney", @"totalTaxMoney", @"totalDiscountMoney", @"totalTipMoney", @"totalServiceChargeMoney", @"ticketName", @"pricingOptions", @"rewards", @"netAmountDueMoney"];
  return [optionalProperties containsObject:propertyName];
}

@end
