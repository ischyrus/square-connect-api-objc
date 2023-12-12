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
#import "SQLocationCustomAttributeDeleteResponse.h"
@protocol SQError;
@class SQError;
@protocol SQLocationCustomAttributeDeleteResponse;
@class SQLocationCustomAttributeDeleteResponse;



@protocol SQBulkDeleteLocationCustomAttributesResponse
@end

@interface SQBulkDeleteLocationCustomAttributesResponse : SQObject

/* A map of responses that correspond to individual delete requests. Each response has the same key as the corresponding request. 
 */
@property(nonatomic) NSDictionary<SQLocationCustomAttributeDeleteResponse>* values;
/* Any errors that occurred during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;

@end
