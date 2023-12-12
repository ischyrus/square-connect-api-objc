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


#import "SQError.h"
#import "SQLoyaltyEvent.h"
@protocol SQError;
@class SQError;
@protocol SQLoyaltyEvent;
@class SQLoyaltyEvent;



@protocol SQSearchLoyaltyEventsResponse
@end

@interface SQSearchLoyaltyEventsResponse : SQObject

/* Any errors that occurred during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;
/* The loyalty events that satisfy the search criteria. [optional]
 */
@property(nonatomic) NSArray<SQLoyaltyEvent>* events;
/* The pagination cursor to be used in a subsequent  request. If empty, this is the final response.  For more information,  see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). [optional]
 */
@property(nonatomic) NSString* cursor;

@end
