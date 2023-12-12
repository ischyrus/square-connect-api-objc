#import "SQWebhookSubscription.h"

@implementation SQWebhookSubscription

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"name": @"name", @"enabled": @"enabled", @"eventTypes": @"event_types", @"notificationUrl": @"notification_url", @"apiVersion": @"api_version", @"signatureKey": @"signature_key", @"createdAt": @"created_at", @"updatedAt": @"updated_at" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"name", @"enabled", @"eventTypes", @"notificationUrl", @"apiVersion", @"signatureKey", @"createdAt", @"updatedAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
