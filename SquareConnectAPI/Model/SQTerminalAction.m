#import "SQTerminalAction.h"

@implementation SQTerminalAction

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"deviceId": @"device_id", @"deadlineDuration": @"deadline_duration", @"status": @"status", @"cancelReason": @"cancel_reason", @"createdAt": @"created_at", @"updatedAt": @"updated_at", @"appId": @"app_id", @"locationId": @"location_id", @"type": @"type", @"qrCodeOptions": @"qr_code_options", @"saveCardOptions": @"save_card_options", @"signatureOptions": @"signature_options", @"confirmationOptions": @"confirmation_options", @"receiptOptions": @"receipt_options", @"dataCollectionOptions": @"data_collection_options", @"selectOptions": @"select_options", @"deviceMetadata": @"device_metadata", @"awaitNextAction": @"await_next_action", @"awaitNextActionDuration": @"await_next_action_duration" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"deviceId", @"deadlineDuration", @"status", @"cancelReason", @"createdAt", @"updatedAt", @"appId", @"locationId", @"type", @"qrCodeOptions", @"saveCardOptions", @"signatureOptions", @"confirmationOptions", @"receiptOptions", @"dataCollectionOptions", @"selectOptions", @"deviceMetadata", @"awaitNextAction", @"awaitNextActionDuration"];
  return [optionalProperties containsObject:propertyName];
}

@end
