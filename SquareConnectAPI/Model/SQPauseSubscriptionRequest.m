#import "SQPauseSubscriptionRequest.h"

@implementation SQPauseSubscriptionRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"pauseEffectiveDate": @"pause_effective_date", @"pauseCycleDuration": @"pause_cycle_duration", @"resumeEffectiveDate": @"resume_effective_date", @"resumeChangeTiming": @"resume_change_timing", @"pauseReason": @"pause_reason" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"pauseEffectiveDate", @"pauseCycleDuration", @"resumeEffectiveDate", @"resumeChangeTiming", @"pauseReason"];
  return [optionalProperties containsObject:propertyName];
}

@end
