#import <Foundation/Foundation.h>
#import "SQGetPaymentRefundResponse.h"
#import "SQListPaymentRefundsResponse.h"
#import "SQRefundPaymentRequest.h"
#import "SQRefundPaymentResponse.h"
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



@interface SQRefundsApi: NSObject <SQApi>

extern NSString* kSQRefundsApiErrorDomain;
extern NSInteger kSQRefundsApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SQApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// GetPaymentRefund
/// Retrieves a specific refund using the `refund_id`.
///
/// @param refundId The unique ID for the desired &#x60;PaymentRefund&#x60;.
/// 
///  code:200 message:"Success"
///
/// @return SQGetPaymentRefundResponse*
-(NSURLSessionTask*) getPaymentRefundWithRefundId: (NSString*) refundId
    completionHandler: (void (^)(SQGetPaymentRefundResponse* output, NSError* error)) handler;


/// ListPaymentRefunds
/// Retrieves a list of refunds for the account making the request.  Results are eventually consistent, and new refunds or changes to refunds might take several seconds to appear.  The maximum results per page is 100.
///
/// @param beginTime Indicates the start of the time range to retrieve each &#x60;PaymentRefund&#x60; for, in RFC 3339  format.  The range is determined using the &#x60;created_at&#x60; field for each &#x60;PaymentRefund&#x60;.   Default: The current time minus one year. (optional)
/// @param endTime Indicates the end of the time range to retrieve each &#x60;PaymentRefund&#x60; for, in RFC 3339  format.  The range is determined using the &#x60;created_at&#x60; field for each &#x60;PaymentRefund&#x60;.  Default: The current time. (optional)
/// @param sortOrder The order in which results are listed by &#x60;PaymentRefund.created_at&#x60;: - &#x60;ASC&#x60; - Oldest to newest. - &#x60;DESC&#x60; - Newest to oldest (default). (optional)
/// @param cursor A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
/// @param locationId Limit results to the location supplied. By default, results are returned for all locations associated with the seller. (optional)
/// @param status If provided, only refunds with the given status are returned. For a list of refund status values, see [PaymentRefund](https://developer.squareup.com/reference/square_2023-10-18/objects/PaymentRefund).  Default: If omitted, refunds are returned regardless of their status. (optional)
/// @param sourceType If provided, only returns refunds whose payments have the indicated source type. Current values include &#x60;CARD&#x60;, &#x60;BANK_ACCOUNT&#x60;, &#x60;WALLET&#x60;, &#x60;CASH&#x60;, and &#x60;EXTERNAL&#x60;. For information about these payment source types, see [Take Payments](https://developer.squareup.com/docs/payments-api/take-payments).  Default: If omitted, refunds are returned regardless of the source type. (optional)
/// @param limit The maximum number of results to be returned in a single page.  It is possible to receive fewer results than the specified limit on a given page.  If the supplied value is greater than 100, no more than 100 results are returned.  Default: 100 (optional)
/// 
///  code:200 message:"Success"
///
/// @return SQListPaymentRefundsResponse*
-(NSURLSessionTask*) listPaymentRefundsWithBeginTime: (NSString*) beginTime
    endTime: (NSString*) endTime
    sortOrder: (NSString*) sortOrder
    cursor: (NSString*) cursor
    locationId: (NSString*) locationId
    status: (NSString*) status
    sourceType: (NSString*) sourceType
    limit: (NSNumber*) limit
    completionHandler: (void (^)(SQListPaymentRefundsResponse* output, NSError* error)) handler;


/// RefundPayment
/// Refunds a payment. You can refund the entire payment amount or a portion of it. You can use this endpoint to refund a card payment or record a  refund of a cash or external payment. For more information, see [Refund Payment](https://developer.squareup.com/docs/payments-api/refund-payments).
///
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQRefundPaymentResponse*
-(NSURLSessionTask*) refundPaymentWithBody: (SQRefundPaymentRequest*) body
    completionHandler: (void (^)(SQRefundPaymentResponse* output, NSError* error)) handler;



@end