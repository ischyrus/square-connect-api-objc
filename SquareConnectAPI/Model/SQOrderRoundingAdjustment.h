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


#import "SQMoney.h"
@protocol SQMoney;
@class SQMoney;



@protocol SQOrderRoundingAdjustment
@end

@interface SQOrderRoundingAdjustment : SQObject

/* A unique ID that identifies the rounding adjustment only within this order. [optional]
 */
@property(nonatomic) NSString* uid;
/* The name of the rounding adjustment from the original sale order. [optional]
 */
@property(nonatomic) NSString* name;
/* The actual rounding adjustment amount. [optional]
 */
@property(nonatomic) SQMoney* amountMoney;

@end