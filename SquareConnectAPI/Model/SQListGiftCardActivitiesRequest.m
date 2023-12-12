#import "SQListGiftCardActivitiesRequest.h"

@implementation SQListGiftCardActivitiesRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"giftCardId": @"gift_card_id", @"type": @"type", @"locationId": @"location_id", @"beginTime": @"begin_time", @"endTime": @"end_time", @"limit": @"limit", @"cursor": @"cursor", @"sortOrder": @"sort_order" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"giftCardId", @"type", @"locationId", @"beginTime", @"endTime", @"limit", @"cursor", @"sortOrder"];
  return [optionalProperties containsObject:propertyName];
}

@end
