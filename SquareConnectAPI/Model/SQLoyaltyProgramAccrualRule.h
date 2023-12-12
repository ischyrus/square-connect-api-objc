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


#import "SQLoyaltyProgramAccrualRuleCategoryData.h"
#import "SQLoyaltyProgramAccrualRuleItemVariationData.h"
#import "SQLoyaltyProgramAccrualRuleSpendData.h"
#import "SQLoyaltyProgramAccrualRuleVisitData.h"
@protocol SQLoyaltyProgramAccrualRuleCategoryData;
@class SQLoyaltyProgramAccrualRuleCategoryData;
@protocol SQLoyaltyProgramAccrualRuleItemVariationData;
@class SQLoyaltyProgramAccrualRuleItemVariationData;
@protocol SQLoyaltyProgramAccrualRuleSpendData;
@class SQLoyaltyProgramAccrualRuleSpendData;
@protocol SQLoyaltyProgramAccrualRuleVisitData;
@class SQLoyaltyProgramAccrualRuleVisitData;



@protocol SQLoyaltyProgramAccrualRule
@end

@interface SQLoyaltyProgramAccrualRule : SQObject

/* The type of the accrual rule that defines how buyers can earn points. 
 */
@property(nonatomic) NSString* accrualType;
/* The number of points that  buyers earn based on the `accrual_type`. [optional]
 */
@property(nonatomic) NSNumber* points;
/* Additional data for rules with the `VISIT` accrual type. [optional]
 */
@property(nonatomic) SQLoyaltyProgramAccrualRuleVisitData* visitData;
/* Additional data for rules with the `SPEND` accrual type. [optional]
 */
@property(nonatomic) SQLoyaltyProgramAccrualRuleSpendData* spendData;
/* Additional data for rules with the `ITEM_VARIATION` accrual type. [optional]
 */
@property(nonatomic) SQLoyaltyProgramAccrualRuleItemVariationData* itemVariationData;
/* Additional data for rules with the `CATEGORY` accrual type. [optional]
 */
@property(nonatomic) SQLoyaltyProgramAccrualRuleCategoryData* categoryData;

@end