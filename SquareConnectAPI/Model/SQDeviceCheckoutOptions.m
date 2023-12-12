#import "SQDeviceCheckoutOptions.h"

@implementation SQDeviceCheckoutOptions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"deviceId": @"device_id", @"skipReceiptScreen": @"skip_receipt_screen", @"collectSignature": @"collect_signature", @"tipSettings": @"tip_settings", @"showItemizedCart": @"show_itemized_cart" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"skipReceiptScreen", @"collectSignature", @"tipSettings", @"showItemizedCart"];
  return [optionalProperties containsObject:propertyName];
}

@end
