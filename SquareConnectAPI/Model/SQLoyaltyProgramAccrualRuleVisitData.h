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



@protocol SQLoyaltyProgramAccrualRuleVisitData
@end

@interface SQLoyaltyProgramAccrualRuleVisitData : SQObject

/* The minimum purchase required during the visit to quality for points. [optional]
 */
@property(nonatomic) SQMoney* minimumAmountMoney;
/* Indicates how taxes should be treated when calculating the purchase amount to determine whether the visit qualifies for points.  This setting applies only if `minimum_amount_money` is specified. 
 */
@property(nonatomic) NSString* taxMode;

@end
