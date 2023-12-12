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
#import "SQTerminalCheckout.h"
@protocol SQError;
@class SQError;
@protocol SQTerminalCheckout;
@class SQTerminalCheckout;



@protocol SQGetTerminalCheckoutResponse
@end

@interface SQGetTerminalCheckoutResponse : SQObject

/* Information about errors encountered during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;
/* The requested `TerminalCheckout`. [optional]
 */
@property(nonatomic) SQTerminalCheckout* checkout;

@end
