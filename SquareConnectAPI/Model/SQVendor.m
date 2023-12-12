#import "SQVendor.h"

@implementation SQVendor

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"createdAt": @"created_at", @"updatedAt": @"updated_at", @"name": @"name", @"address": @"address", @"contacts": @"contacts", @"accountNumber": @"account_number", @"note": @"note", @"version": @"version", @"status": @"status" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"createdAt", @"updatedAt", @"name", @"address", @"contacts", @"accountNumber", @"note", @"version", @"status"];
  return [optionalProperties containsObject:propertyName];
}

@end
