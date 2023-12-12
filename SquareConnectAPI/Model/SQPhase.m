#import "SQPhase.h"

@implementation SQPhase

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"uid": @"uid", @"ordinal": @"ordinal", @"orderTemplateId": @"order_template_id", @"planPhaseUid": @"plan_phase_uid" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"uid", @"ordinal", @"orderTemplateId", @"planPhaseUid"];
  return [optionalProperties containsObject:propertyName];
}

@end
