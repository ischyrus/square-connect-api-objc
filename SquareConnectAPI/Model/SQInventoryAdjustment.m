#import "SQInventoryAdjustment.h"

@implementation SQInventoryAdjustment

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"referenceId": @"reference_id", @"fromState": @"from_state", @"toState": @"to_state", @"locationId": @"location_id", @"catalogObjectId": @"catalog_object_id", @"catalogObjectType": @"catalog_object_type", @"quantity": @"quantity", @"totalPriceMoney": @"total_price_money", @"occurredAt": @"occurred_at", @"createdAt": @"created_at", @"source": @"source", @"employeeId": @"employee_id", @"teamMemberId": @"team_member_id", @"transactionId": @"transaction_id", @"refundId": @"refund_id", @"purchaseOrderId": @"purchase_order_id", @"goodsReceiptId": @"goods_receipt_id", @"adjustmentGroup": @"adjustment_group" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"referenceId", @"fromState", @"toState", @"locationId", @"catalogObjectId", @"catalogObjectType", @"quantity", @"totalPriceMoney", @"occurredAt", @"createdAt", @"source", @"employeeId", @"teamMemberId", @"transactionId", @"refundId", @"purchaseOrderId", @"goodsReceiptId", @"adjustmentGroup"];
  return [optionalProperties containsObject:propertyName];
}

@end
