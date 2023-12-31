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


#import "SQLoyaltyProgramAccrualRule.h"
#import "SQLoyaltyProgramExpirationPolicy.h"
#import "SQLoyaltyProgramRewardTier.h"
#import "SQLoyaltyProgramTerminology.h"
@protocol SQLoyaltyProgramAccrualRule;
@class SQLoyaltyProgramAccrualRule;
@protocol SQLoyaltyProgramExpirationPolicy;
@class SQLoyaltyProgramExpirationPolicy;
@protocol SQLoyaltyProgramRewardTier;
@class SQLoyaltyProgramRewardTier;
@protocol SQLoyaltyProgramTerminology;
@class SQLoyaltyProgramTerminology;



@protocol SQLoyaltyProgram
@end

@interface SQLoyaltyProgram : SQObject

/* The Square-assigned ID of the loyalty program. Updates to  the loyalty program do not modify the identifier. [optional]
 */
@property(nonatomic) NSString* _id;
/* Whether the program is currently active. [optional]
 */
@property(nonatomic) NSString* status;
/* The list of rewards for buyers, sorted by ascending points. [optional]
 */
@property(nonatomic) NSArray<SQLoyaltyProgramRewardTier>* rewardTiers;
/* If present, details for how points expire. [optional]
 */
@property(nonatomic) SQLoyaltyProgramExpirationPolicy* expirationPolicy;
/* A cosmetic name for the “points” currency. [optional]
 */
@property(nonatomic) SQLoyaltyProgramTerminology* terminology;
/* The [locations](https://developer.squareup.com/reference/square_2023-10-18/objects/Location) at which the program is active. 
 */
@property(nonatomic) NSArray<NSString*>* locationIds;
/* The timestamp when the program was created, in RFC 3339 format. [optional]
 */
@property(nonatomic) NSString* createdAt;
/* The timestamp when the reward was last updated, in RFC 3339 format. [optional]
 */
@property(nonatomic) NSString* updatedAt;
/* Defines how buyers can earn loyalty points from the base loyalty program. To check for associated [loyalty promotions](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyPromotion) that enable buyers to earn extra points, call [ListLoyaltyPromotions](https://developer.squareup.com/reference/square_2023-10-18/loyalty-api/list-loyalty-promotions). [optional]
 */
@property(nonatomic) NSArray<SQLoyaltyProgramAccrualRule>* accrualRules;

@end
