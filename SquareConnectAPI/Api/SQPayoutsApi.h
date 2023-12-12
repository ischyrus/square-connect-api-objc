#import <Foundation/Foundation.h>
#import "SQGetPayoutResponse.h"
#import "SQListPayoutEntriesResponse.h"
#import "SQListPayoutsResponse.h"
#import "SQApi.h"

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



@interface SQPayoutsApi: NSObject <SQApi>

extern NSString* kSQPayoutsApiErrorDomain;
extern NSInteger kSQPayoutsApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SQApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// GetPayout
/// Retrieves details of a specific payout identified by a payout ID. To call this endpoint, set `PAYOUTS_READ` for the OAuth scope.
///
/// @param payoutId The ID of the payout to retrieve the information for.
/// 
///  code:200 message:"Success"
///
/// @return SQGetPayoutResponse*
-(NSURLSessionTask*) getPayoutWithPayoutId: (NSString*) payoutId
    completionHandler: (void (^)(SQGetPayoutResponse* output, NSError* error)) handler;


/// ListPayoutEntries
/// Retrieves a list of all payout entries for a specific payout. To call this endpoint, set `PAYOUTS_READ` for the OAuth scope.
///
/// @param payoutId The ID of the payout to retrieve the information for.
/// @param sortOrder The order in which payout entries are listed. (optional)
/// @param cursor A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). If request parameters change between requests, subsequent results may contain duplicates or missing records. (optional)
/// @param limit The maximum number of results to be returned in a single page. It is possible to receive fewer results than the specified limit on a given page. The default value of 100 is also the maximum allowed value. If the provided value is greater than 100, it is ignored and the default value is used instead. Default: &#x60;100&#x60; (optional)
/// 
///  code:200 message:"Success"
///
/// @return SQListPayoutEntriesResponse*
-(NSURLSessionTask*) listPayoutEntriesWithPayoutId: (NSString*) payoutId
    sortOrder: (NSString*) sortOrder
    cursor: (NSString*) cursor
    limit: (NSNumber*) limit
    completionHandler: (void (^)(SQListPayoutEntriesResponse* output, NSError* error)) handler;


/// ListPayouts
/// Retrieves a list of all payouts for the default location. You can filter payouts by location ID, status, time range, and order them in ascending or descending order. To call this endpoint, set `PAYOUTS_READ` for the OAuth scope.
///
/// @param locationId The ID of the location for which to list the payouts. By default, payouts are returned for the default (main) location associated with the seller. (optional)
/// @param status If provided, only payouts with the given status are returned. (optional)
/// @param beginTime The timestamp for the beginning of the payout creation time, in RFC 3339 format. Inclusive. Default: The current time minus one year. (optional)
/// @param endTime The timestamp for the end of the payout creation time, in RFC 3339 format. Default: The current time. (optional)
/// @param sortOrder The order in which payouts are listed. (optional)
/// @param cursor A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). If request parameters change between requests, subsequent results may contain duplicates or missing records. (optional)
/// @param limit The maximum number of results to be returned in a single page. It is possible to receive fewer results than the specified limit on a given page. The default value of 100 is also the maximum allowed value. If the provided value is greater than 100, it is ignored and the default value is used instead. Default: &#x60;100&#x60; (optional)
/// 
///  code:200 message:"Success"
///
/// @return SQListPayoutsResponse*
-(NSURLSessionTask*) listPayoutsWithLocationId: (NSString*) locationId
    status: (NSString*) status
    beginTime: (NSString*) beginTime
    endTime: (NSString*) endTime
    sortOrder: (NSString*) sortOrder
    cursor: (NSString*) cursor
    limit: (NSNumber*) limit
    completionHandler: (void (^)(SQListPayoutsResponse* output, NSError* error)) handler;



@end