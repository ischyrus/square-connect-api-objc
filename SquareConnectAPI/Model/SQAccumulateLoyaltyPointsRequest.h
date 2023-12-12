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


#import "SQLoyaltyEventAccumulatePoints.h"
@protocol SQLoyaltyEventAccumulatePoints;
@class SQLoyaltyEventAccumulatePoints;



@protocol SQAccumulateLoyaltyPointsRequest
@end

@interface SQAccumulateLoyaltyPointsRequest : SQObject

/* The points to add to the account.  If you are using the Orders API to manage orders, specify the order ID. Otherwise, specify the points to add. 
 */
@property(nonatomic) SQLoyaltyEventAccumulatePoints* accumulatePoints;
/* A unique string that identifies the `AccumulateLoyaltyPoints` request.  Keys can be any valid string but must be unique for every request. 
 */
@property(nonatomic) NSString* idempotencyKey;
/* The [location](https://developer.squareup.com/reference/square_2023-10-18/objects/Location) where the purchase was made. 
 */
@property(nonatomic) NSString* locationId;

@end
