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





@protocol SQLoyaltyEventExpirePoints
@end

@interface SQLoyaltyEventExpirePoints : SQObject

/* The Square-assigned ID of the [loyalty program](https://developer.squareup.com/reference/square_2023-10-18/objects/LoyaltyProgram). 
 */
@property(nonatomic) NSString* loyaltyProgramId;
/* The number of points expired. 
 */
@property(nonatomic) NSNumber* points;

@end
