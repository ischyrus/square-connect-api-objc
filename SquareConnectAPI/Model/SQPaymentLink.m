#import "SQPaymentLink.h"

@implementation SQPaymentLink

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"version": @"version", @"_description": @"description", @"orderId": @"order_id", @"checkoutOptions": @"checkout_options", @"prePopulatedData": @"pre_populated_data", @"url": @"url", @"longUrl": @"long_url", @"createdAt": @"created_at", @"updatedAt": @"updated_at", @"paymentNote": @"payment_note" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"_description", @"orderId", @"checkoutOptions", @"prePopulatedData", @"url", @"longUrl", @"createdAt", @"updatedAt", @"paymentNote"];
  return [optionalProperties containsObject:propertyName];
}

@end
