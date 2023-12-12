#import "SQShiftWorkday.h"

@implementation SQShiftWorkday

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"dateRange": @"date_range", @"matchShiftsBy": @"match_shifts_by", @"defaultTimezone": @"default_timezone" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"dateRange", @"matchShiftsBy", @"defaultTimezone"];
  return [optionalProperties containsObject:propertyName];
}

@end
