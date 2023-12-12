#import "SQCashDrawerShift.h"

@implementation SQCashDrawerShift

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"state": @"state", @"openedAt": @"opened_at", @"endedAt": @"ended_at", @"closedAt": @"closed_at", @"_description": @"description", @"openedCashMoney": @"opened_cash_money", @"cashPaymentMoney": @"cash_payment_money", @"cashRefundsMoney": @"cash_refunds_money", @"cashPaidInMoney": @"cash_paid_in_money", @"cashPaidOutMoney": @"cash_paid_out_money", @"expectedCashMoney": @"expected_cash_money", @"closedCashMoney": @"closed_cash_money", @"device": @"device", @"createdAt": @"created_at", @"updatedAt": @"updated_at", @"locationId": @"location_id", @"teamMemberIds": @"team_member_ids", @"openingTeamMemberId": @"opening_team_member_id", @"endingTeamMemberId": @"ending_team_member_id", @"closingTeamMemberId": @"closing_team_member_id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"state", @"openedAt", @"endedAt", @"closedAt", @"_description", @"openedCashMoney", @"cashPaymentMoney", @"cashRefundsMoney", @"cashPaidInMoney", @"cashPaidOutMoney", @"expectedCashMoney", @"closedCashMoney", @"device", @"createdAt", @"updatedAt", @"locationId", @"teamMemberIds", @"openingTeamMemberId", @"endingTeamMemberId", @"closingTeamMemberId"];
  return [optionalProperties containsObject:propertyName];
}

@end
