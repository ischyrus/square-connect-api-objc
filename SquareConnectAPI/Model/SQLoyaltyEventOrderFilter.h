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





@protocol SQLoyaltyEventOrderFilter
@end

@interface SQLoyaltyEventOrderFilter : SQObject

/* The ID of the [order](https://developer.squareup.com/reference/square_2023-10-18/objects/Order) associated with the event. 
 */
@property(nonatomic) NSString* orderId;

@end
