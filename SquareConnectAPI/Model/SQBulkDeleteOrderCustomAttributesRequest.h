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


#import "SQDeleteCustomAttribute.h"
@protocol SQDeleteCustomAttribute;
@class SQDeleteCustomAttribute;



@protocol SQBulkDeleteOrderCustomAttributesRequest
@end

@interface SQBulkDeleteOrderCustomAttributesRequest : SQObject

/* A map of requests that correspond to individual delete operations for custom attributes. 
 */
@property(nonatomic) NSDictionary<SQDeleteCustomAttribute>* values;

@end