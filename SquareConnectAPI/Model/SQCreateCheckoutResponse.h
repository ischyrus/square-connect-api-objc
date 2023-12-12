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


#import "SQCheckout.h"
#import "SQError.h"
@protocol SQCheckout;
@class SQCheckout;
@protocol SQError;
@class SQError;



@protocol SQCreateCheckoutResponse
@end

@interface SQCreateCheckoutResponse : SQObject

/* The newly created `checkout` object associated with the provided idempotency key. [optional]
 */
@property(nonatomic) SQCheckout* checkout;
/* Any errors that occurred during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;

@end
