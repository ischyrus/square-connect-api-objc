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


#import "SQSearchOrdersQuery.h"
@protocol SQSearchOrdersQuery;
@class SQSearchOrdersQuery;



@protocol SQSearchOrdersRequest
@end

@interface SQSearchOrdersRequest : SQObject

/* The location IDs for the orders to query. All locations must belong to the same merchant.  Min: 1 location ID.  Max: 10 location IDs. [optional]
 */
@property(nonatomic) NSArray<NSString*>* locationIds;
/* A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for your original query. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). [optional]
 */
@property(nonatomic) NSString* cursor;
/* Query conditions used to filter or sort the results. Note that when retrieving additional pages using a cursor, you must use the original query. [optional]
 */
@property(nonatomic) SQSearchOrdersQuery* query;
/* The maximum number of results to be returned in a single page. It is possible to receive fewer results than the specified limit on a given page.  Default: `500` [optional]
 */
@property(nonatomic) NSNumber* limit;
/* A Boolean that controls the format of the search results. If `true`, `SearchOrders` returns [OrderEntry](https://developer.squareup.com/reference/square_2023-10-18/objects/OrderEntry) objects. If `false`, `SearchOrders` returns complete order objects.  Default: `false`. [optional]
 */
@property(nonatomic) NSNumber* returnEntries;

@end
