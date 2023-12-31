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
#import "SQPayment.h"
@protocol SQError;
@class SQError;
@protocol SQPayment;
@class SQPayment;



@protocol SQCancelPaymentResponse
@end

@interface SQCancelPaymentResponse : SQObject

/* Information about errors encountered during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;
/* The successfully canceled `Payment` object. [optional]
 */
@property(nonatomic) SQPayment* payment;

@end
