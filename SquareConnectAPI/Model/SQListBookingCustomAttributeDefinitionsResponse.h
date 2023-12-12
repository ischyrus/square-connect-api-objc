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


#import "SQCustomAttributeDefinition.h"
#import "SQError.h"
@protocol SQCustomAttributeDefinition;
@class SQCustomAttributeDefinition;
@protocol SQError;
@class SQError;



@protocol SQListBookingCustomAttributeDefinitionsResponse
@end

@interface SQListBookingCustomAttributeDefinitionsResponse : SQObject

/* The retrieved custom attribute definitions. If no custom attribute definitions are found, Square returns an empty object (`{}`). [optional]
 */
@property(nonatomic) NSArray<SQCustomAttributeDefinition>* customAttributeDefinitions;
/* The cursor to provide in your next call to this endpoint to retrieve the next page of results for your original request. This field is present only if the request succeeded and additional results are available. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). [optional]
 */
@property(nonatomic) NSString* cursor;
/* Any errors that occurred during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;

@end