#import "SQV1UpdateOrderRequest.h"

@implementation SQV1UpdateOrderRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"action": @"action", @"shippedTrackingNumber": @"shipped_tracking_number", @"completedNote": @"completed_note", @"refundedNote": @"refunded_note", @"canceledNote": @"canceled_note" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"shippedTrackingNumber", @"completedNote", @"refundedNote", @"canceledNote"];
  return [optionalProperties containsObject:propertyName];
}

@end
