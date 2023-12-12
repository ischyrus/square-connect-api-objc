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


#import "SQCustomerCustomAttributeUpsertRequest.h"
@protocol SQCustomerCustomAttributeUpsertRequest;
@class SQCustomerCustomAttributeUpsertRequest;



@protocol SQBulkUpsertCustomerCustomAttributesRequest
@end

@interface SQBulkUpsertCustomerCustomAttributesRequest : SQObject

/* A map containing 1 to 25 individual upsert requests. For each request, provide an arbitrary ID that is unique for this `BulkUpsertCustomerCustomAttributes` request and the information needed to create or update a custom attribute. 
 */
@property(nonatomic) NSDictionary<SQCustomerCustomAttributeUpsertRequest>* values;

@end