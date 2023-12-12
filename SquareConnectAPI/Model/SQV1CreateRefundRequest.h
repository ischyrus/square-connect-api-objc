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


#import "SQV1Money.h"
@protocol SQV1Money;
@class SQV1Money;



@protocol SQV1CreateRefundRequest
@end

@interface SQV1CreateRefundRequest : SQObject

/* The ID of the payment to refund. If you are creating a `PARTIAL` refund for a split tender payment, instead provide the id of the particular tender you want to refund. 
 */
@property(nonatomic) NSString* paymentId;
/* The type of refund (FULL or PARTIAL). 
 */
@property(nonatomic) NSString* type;
/* The reason for the refund. 
 */
@property(nonatomic) NSString* reason;
/* The amount of money to refund. Required only for PARTIAL refunds. [optional]
 */
@property(nonatomic) SQV1Money* refundedMoney;
/* An optional key to ensure idempotence if you issue the same PARTIAL refund request more than once. [optional]
 */
@property(nonatomic) NSString* requestIdempotenceKey;

@end
