#import "SQDisputeEvidence.h"

@implementation SQDisputeEvidence

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"evidenceId": @"evidence_id", @"_id": @"id", @"disputeId": @"dispute_id", @"evidenceFile": @"evidence_file", @"evidenceText": @"evidence_text", @"uploadedAt": @"uploaded_at", @"evidenceType": @"evidence_type" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"evidenceId", @"_id", @"disputeId", @"evidenceFile", @"evidenceText", @"uploadedAt", @"evidenceType"];
  return [optionalProperties containsObject:propertyName];
}

@end
