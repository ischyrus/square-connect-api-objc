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





@protocol SQDisputedPayment
@end

@interface SQDisputedPayment : SQObject

/* Square-generated unique ID of the payment being disputed. [optional]
 */
@property(nonatomic) NSString* paymentId;

@end
