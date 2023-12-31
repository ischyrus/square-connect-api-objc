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


#import "SQTimeRange.h"
@protocol SQTimeRange;
@class SQTimeRange;



@protocol SQSearchOrdersDateTimeFilter
@end

@interface SQSearchOrdersDateTimeFilter : SQObject

/* The time range for filtering on the `created_at` timestamp. If you use this value, you must set the `sort_field` in the `OrdersSearchSort` object to `CREATED_AT`. [optional]
 */
@property(nonatomic) SQTimeRange* createdAt;
/* The time range for filtering on the `updated_at` timestamp. If you use this value, you must set the `sort_field` in the `OrdersSearchSort` object to `UPDATED_AT`. [optional]
 */
@property(nonatomic) SQTimeRange* updatedAt;
/* The time range for filtering on the `closed_at` timestamp. If you use this value, you must set the `sort_field` in the `OrdersSearchSort` object to `CLOSED_AT`. [optional]
 */
@property(nonatomic) SQTimeRange* closedAt;

@end
