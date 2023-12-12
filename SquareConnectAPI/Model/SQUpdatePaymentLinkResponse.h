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
#import "SQPaymentLink.h"
@protocol SQError;
@class SQError;
@protocol SQPaymentLink;
@class SQPaymentLink;



@protocol SQUpdatePaymentLinkResponse
@end

@interface SQUpdatePaymentLinkResponse : SQObject

/* Any errors that occurred when updating the payment link. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;
/* The updated payment link. [optional]
 */
@property(nonatomic) SQPaymentLink* paymentLink;

@end
