#import "SQTipSettings.h"

@implementation SQTipSettings

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"allowTipping": @"allow_tipping", @"separateTipScreen": @"separate_tip_screen", @"customTipField": @"custom_tip_field", @"tipPercentages": @"tip_percentages", @"smartTipping": @"smart_tipping" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"allowTipping", @"separateTipScreen", @"customTipField", @"tipPercentages", @"smartTipping"];
  return [optionalProperties containsObject:propertyName];
}

@end
