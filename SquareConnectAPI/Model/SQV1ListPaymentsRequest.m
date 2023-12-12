#import "SQV1ListPaymentsRequest.h"

@implementation SQV1ListPaymentsRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"order": @"order", @"beginTime": @"begin_time", @"endTime": @"end_time", @"limit": @"limit", @"batchToken": @"batch_token", @"includePartial": @"include_partial" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"order", @"beginTime", @"endTime", @"limit", @"batchToken", @"includePartial"];
  return [optionalProperties containsObject:propertyName];
}

@end
