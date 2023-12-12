#import "SQEvent.h"

@implementation SQEvent

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"merchantId": @"merchant_id", @"locationId": @"location_id", @"type": @"type", @"eventId": @"event_id", @"createdAt": @"created_at", @"data": @"data" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"merchantId", @"locationId", @"type", @"eventId", @"createdAt", @"data"];
  return [optionalProperties containsObject:propertyName];
}

@end
