#import "SQSearchOrdersFilter.h"

@implementation SQSearchOrdersFilter

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"stateFilter": @"state_filter", @"dateTimeFilter": @"date_time_filter", @"fulfillmentFilter": @"fulfillment_filter", @"sourceFilter": @"source_filter", @"customerFilter": @"customer_filter" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"stateFilter", @"dateTimeFilter", @"fulfillmentFilter", @"sourceFilter", @"customerFilter"];
  return [optionalProperties containsObject:propertyName];
}

@end
