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
@protocol SQError;
@class SQError;



@protocol SQLocationCustomAttributeDeleteResponse
@end

@interface SQLocationCustomAttributeDeleteResponse : SQObject

/* The ID of the location associated with the custom attribute. [optional]
 */
@property(nonatomic) NSString* locationId;
/* Errors that occurred while processing the individual LocationCustomAttributeDeleteRequest request [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;

@end
