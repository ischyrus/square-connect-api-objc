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


#import "SQSearchOrdersCustomerFilter.h"
#import "SQSearchOrdersDateTimeFilter.h"
#import "SQSearchOrdersFulfillmentFilter.h"
#import "SQSearchOrdersSourceFilter.h"
#import "SQSearchOrdersStateFilter.h"
@protocol SQSearchOrdersCustomerFilter;
@class SQSearchOrdersCustomerFilter;
@protocol SQSearchOrdersDateTimeFilter;
@class SQSearchOrdersDateTimeFilter;
@protocol SQSearchOrdersFulfillmentFilter;
@class SQSearchOrdersFulfillmentFilter;
@protocol SQSearchOrdersSourceFilter;
@class SQSearchOrdersSourceFilter;
@protocol SQSearchOrdersStateFilter;
@class SQSearchOrdersStateFilter;



@protocol SQSearchOrdersFilter
@end

@interface SQSearchOrdersFilter : SQObject

/* Filter by [OrderState](https://developer.squareup.com/reference/square_2023-10-18/enums/OrderState). [optional]
 */
@property(nonatomic) SQSearchOrdersStateFilter* stateFilter;
/* Filter for results within a time range.  __Important:__ If you filter for orders by time range, you must set `SearchOrdersSort` to sort by the same field. [Learn more about filtering orders by time range.](https://developer.squareup.com/docs/orders-api/manage-orders/search-orders#important-note-about-filtering-orders-by-time-range) [optional]
 */
@property(nonatomic) SQSearchOrdersDateTimeFilter* dateTimeFilter;
/* Filter by the fulfillment type or state. [optional]
 */
@property(nonatomic) SQSearchOrdersFulfillmentFilter* fulfillmentFilter;
/* Filter by the source of the order. [optional]
 */
@property(nonatomic) SQSearchOrdersSourceFilter* sourceFilter;
/* Filter by customers associated with the order. [optional]
 */
@property(nonatomic) SQSearchOrdersCustomerFilter* customerFilter;

@end
