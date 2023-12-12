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


#import "SQCustomAttribute.h"
#import "SQError.h"
@protocol SQCustomAttribute;
@class SQCustomAttribute;
@protocol SQError;
@class SQError;



@protocol SQRetrieveCustomerCustomAttributeResponse
@end

@interface SQRetrieveCustomerCustomAttributeResponse : SQObject

/* The retrieved custom attribute. If `with_definition` was set to `true` in the request, the custom attribute definition is returned in the `definition` field. [optional]
 */
@property(nonatomic) SQCustomAttribute* customAttribute;
/* Any errors that occurred during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;

@end
