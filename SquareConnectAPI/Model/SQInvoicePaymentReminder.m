#import "SQInvoicePaymentReminder.h"

@implementation SQInvoicePaymentReminder

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"uid": @"uid", @"relativeScheduledDays": @"relative_scheduled_days", @"message": @"message", @"status": @"status", @"sentAt": @"sent_at" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"uid", @"relativeScheduledDays", @"message", @"status", @"sentAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
