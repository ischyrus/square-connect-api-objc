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



@protocol SQTenderCashDetails
@end

@interface SQTenderCashDetails : SQObject

/* The total amount of cash provided by the buyer, before change is given. [optional]
 */
@property(nonatomic) SQMoney* buyerTenderedMoney;
/* The amount of change returned to the buyer. [optional]
 */
@property(nonatomic) SQMoney* changeBackMoney;

@end