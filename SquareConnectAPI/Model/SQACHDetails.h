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





@protocol SQACHDetails
@end

@interface SQACHDetails : SQObject

/* The routing number for the bank account. [optional]
 */
@property(nonatomic) NSString* routingNumber;
/* The last few digits of the bank account number. [optional]
 */
@property(nonatomic) NSString* accountNumberSuffix;
/* The type of the bank account performing the transfer. The account type can be `CHECKING`, `SAVINGS`, or `UNKNOWN`. [optional]
 */
@property(nonatomic) NSString* accountType;

@end
