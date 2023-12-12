#import "SQDispute.h"

@implementation SQDispute

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"disputeId": @"dispute_id", @"_id": @"id", @"amountMoney": @"amount_money", @"reason": @"reason", @"state": @"state", @"dueAt": @"due_at", @"disputedPayment": @"disputed_payment", @"evidenceIds": @"evidence_ids", @"cardBrand": @"card_brand", @"createdAt": @"created_at", @"updatedAt": @"updated_at", @"brandDisputeId": @"brand_dispute_id", @"reportedDate": @"reported_date", @"reportedAt": @"reported_at", @"version": @"version", @"locationId": @"location_id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"disputeId", @"_id", @"amountMoney", @"reason", @"state", @"dueAt", @"disputedPayment", @"evidenceIds", @"cardBrand", @"createdAt", @"updatedAt", @"brandDisputeId", @"reportedDate", @"reportedAt", @"version", @"locationId"];
  return [optionalProperties containsObject:propertyName];
}

@end
