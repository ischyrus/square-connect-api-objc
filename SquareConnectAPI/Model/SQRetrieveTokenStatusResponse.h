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



@protocol SQRetrieveTokenStatusResponse
@end

@interface SQRetrieveTokenStatusResponse : SQObject

/* The list of scopes associated with an access token. [optional]
 */
@property(nonatomic) NSArray<NSString*>* scopes;
/* The date and time when the `access_token` expires, in RFC 3339 format. Empty if the token never expires. [optional]
 */
@property(nonatomic) NSString* expiresAt;
/* The Square-issued application ID associated with the access token. This is the same application ID used to obtain the token. [optional]
 */
@property(nonatomic) NSString* clientId;
/* The ID of the authorizing merchant's business. [optional]
 */
@property(nonatomic) NSString* merchantId;
/*  Any errors that occurred during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;

@end