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



@protocol SQRegisterDomainResponse
@end

@interface SQRegisterDomainResponse : SQObject

/* Any errors that occurred during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;
/* The status of the domain registration.  See [RegisterDomainResponseStatus](https://developer.squareup.com/reference/square_2023-10-18/enums/RegisterDomainResponseStatus) for possible values. [optional]
 */
@property(nonatomic) NSString* status;

@end