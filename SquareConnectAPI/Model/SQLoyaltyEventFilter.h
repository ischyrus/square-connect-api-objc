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


#import "SQLoyaltyEventDateTimeFilter.h"
#import "SQLoyaltyEventLocationFilter.h"
#import "SQLoyaltyEventLoyaltyAccountFilter.h"
#import "SQLoyaltyEventOrderFilter.h"
#import "SQLoyaltyEventTypeFilter.h"
@protocol SQLoyaltyEventDateTimeFilter;
@class SQLoyaltyEventDateTimeFilter;
@protocol SQLoyaltyEventLocationFilter;
@class SQLoyaltyEventLocationFilter;
@protocol SQLoyaltyEventLoyaltyAccountFilter;
@class SQLoyaltyEventLoyaltyAccountFilter;
@protocol SQLoyaltyEventOrderFilter;
@class SQLoyaltyEventOrderFilter;
@protocol SQLoyaltyEventTypeFilter;
@class SQLoyaltyEventTypeFilter;



@protocol SQLoyaltyEventFilter
@end

@interface SQLoyaltyEventFilter : SQObject

/* Filter events by loyalty account. [optional]
 */
@property(nonatomic) SQLoyaltyEventLoyaltyAccountFilter* loyaltyAccountFilter;
/* Filter events by event type. [optional]
 */
@property(nonatomic) SQLoyaltyEventTypeFilter* typeFilter;
/* Filter events by date time range.  For each range, the start time is inclusive and the end time  is exclusive. [optional]
 */
@property(nonatomic) SQLoyaltyEventDateTimeFilter* dateTimeFilter;
/* Filter events by location. [optional]
 */
@property(nonatomic) SQLoyaltyEventLocationFilter* locationFilter;
/* Filter events by the order associated with the event. [optional]
 */
@property(nonatomic) SQLoyaltyEventOrderFilter* orderFilter;

@end
