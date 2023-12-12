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


#import "SQPayment.h"
@protocol SQPayment;
@class SQPayment;



@protocol SQUpdatePaymentRequest
@end

@interface SQUpdatePaymentRequest : SQObject

/* The updated `Payment` object. [optional]
 */
@property(nonatomic) SQPayment* payment;
/* A unique string that identifies this `UpdatePayment` request. Keys can be any valid string but must be unique for every `UpdatePayment` request.  For more information, see [Idempotency](https://developer.squareup.com/docs/build-basics/common-api-patterns/idempotency). 
 */
@property(nonatomic) NSString* idempotencyKey;

@end