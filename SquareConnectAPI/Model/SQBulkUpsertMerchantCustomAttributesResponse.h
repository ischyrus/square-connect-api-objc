#import <Foundation/Foundation.h>
#import "SQObject.h"

/**
* Square Connect API
* Client library for accessing the Square Connect APIs
*
* OpenAPI spec version: 2.0
* Contact: developers@squareup.com
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/


#import "SQError.h"
#import "SQMerchantCustomAttributeUpsertResponse.h"
@protocol SQError;
@class SQError;
@protocol SQMerchantCustomAttributeUpsertResponse;
@class SQMerchantCustomAttributeUpsertResponse;



@protocol SQBulkUpsertMerchantCustomAttributesResponse
@end

@interface SQBulkUpsertMerchantCustomAttributesResponse : SQObject

/* A map of responses that correspond to individual upsert requests. Each response has the same ID as the corresponding request and contains either a `merchant_id` and `custom_attribute` or an `errors` field. [optional]
 */
@property(nonatomic) NSDictionary<SQMerchantCustomAttributeUpsertResponse>* values;
/* Any errors that occurred during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;

@end
