#import "SQBreak.h"

@implementation SQBreak

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"startAt": @"start_at", @"endAt": @"end_at", @"breakTypeId": @"break_type_id", @"name": @"name", @"expectedDuration": @"expected_duration", @"isPaid": @"is_paid" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"endAt", ];
  return [optionalProperties containsObject:propertyName];
}

@end
