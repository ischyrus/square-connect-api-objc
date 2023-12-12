#import <Foundation/Foundation.h>
#import "SQCancelPaymentByIdempotencyKeyRequest.h"
#import "SQCancelPaymentByIdempotencyKeyResponse.h"
#import "SQCancelPaymentResponse.h"
#import "SQCompletePaymentRequest.h"
#import "SQCompletePaymentResponse.h"
#import "SQCreatePaymentRequest.h"
#import "SQCreatePaymentResponse.h"
#import "SQGetPaymentResponse.h"
#import "SQListPaymentsResponse.h"
#import "SQUpdatePaymentRequest.h"
#import "SQUpdatePaymentResponse.h"
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



@interface SQPaymentsApi: NSObject <SQApi>

extern NSString* kSQPaymentsApiErrorDomain;
extern NSInteger kSQPaymentsApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SQApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// CancelPayment
/// Cancels (voids) a payment. You can use this endpoint to cancel a payment with  the APPROVED `status`.
///
/// @param paymentId The ID of the payment to cancel.
/// 
///  code:200 message:"Success"
///
/// @return SQCancelPaymentResponse*
-(NSURLSessionTask*) cancelPaymentWithPaymentId: (NSString*) paymentId
    completionHandler: (void (^)(SQCancelPaymentResponse* output, NSError* error)) handler;


/// CancelPaymentByIdempotencyKey
/// Cancels (voids) a payment identified by the idempotency key that is specified in the request.  Use this method when the status of a `CreatePayment` request is unknown (for example, after you send a `CreatePayment` request, a network error occurs and you do not get a response). In this case, you can direct Square to cancel the payment using this endpoint. In the request, you provide the same idempotency key that you provided in your `CreatePayment` request that you want to cancel. After canceling the payment, you can submit your `CreatePayment` request again.  Note that if no payment with the specified idempotency key is found, no action is taken and the endpoint returns successfully.
///
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQCancelPaymentByIdempotencyKeyResponse*
-(NSURLSessionTask*) cancelPaymentByIdempotencyKeyWithBody: (SQCancelPaymentByIdempotencyKeyRequest*) body
    completionHandler: (void (^)(SQCancelPaymentByIdempotencyKeyResponse* output, NSError* error)) handler;


/// CompletePayment
/// Completes (captures) a payment. By default, payments are set to complete immediately after they are created.  You can use this endpoint to complete a payment with the APPROVED `status`.
///
/// @param paymentId The unique ID identifying the payment to be completed.
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQCompletePaymentResponse*
-(NSURLSessionTask*) completePaymentWithPaymentId: (NSString*) paymentId
    body: (SQCompletePaymentRequest*) body
    completionHandler: (void (^)(SQCompletePaymentResponse* output, NSError* error)) handler;


/// CreatePayment
/// Creates a payment using the provided source. You can use this endpoint  to charge a card (credit/debit card or     Square gift card) or record a payment that the seller received outside of Square  (cash payment from a buyer or a payment that an external entity  processed on behalf of the seller).  The endpoint creates a  `Payment` object and returns it in the response.
///
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQCreatePaymentResponse*
-(NSURLSessionTask*) createPaymentWithBody: (SQCreatePaymentRequest*) body
    completionHandler: (void (^)(SQCreatePaymentResponse* output, NSError* error)) handler;


/// GetPayment
/// Retrieves details for a specific payment.
///
/// @param paymentId A unique ID for the desired payment.
/// 
///  code:200 message:"Success"
///
/// @return SQGetPaymentResponse*
-(NSURLSessionTask*) getPaymentWithPaymentId: (NSString*) paymentId
    completionHandler: (void (^)(SQGetPaymentResponse* output, NSError* error)) handler;


/// ListPayments
/// Retrieves a list of payments taken by the account making the request.  Results are eventually consistent, and new payments or changes to payments might take several seconds to appear.  The maximum results per page is 100.
///
/// @param beginTime Indicates the start of the time range to retrieve payments for, in RFC 3339 format.   The range is determined using the &#x60;created_at&#x60; field for each Payment. Inclusive. Default: The current time minus one year. (optional)
/// @param endTime Indicates the end of the time range to retrieve payments for, in RFC 3339 format.  The  range is determined using the &#x60;created_at&#x60; field for each Payment.  Default: The current time. (optional)
/// @param sortOrder The order in which results are listed by &#x60;Payment.created_at&#x60;: - &#x60;ASC&#x60; - Oldest to newest. - &#x60;DESC&#x60; - Newest to oldest (default). (optional)
/// @param cursor A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
/// @param locationId Limit results to the location supplied. By default, results are returned for the default (main) location associated with the seller. (optional)
/// @param total The exact amount in the &#x60;total_money&#x60; for a payment. (optional)
/// @param last4 The last four digits of a payment card. (optional)
/// @param cardBrand The brand of the payment card (for example, VISA). (optional)
/// @param limit The maximum number of results to be returned in a single page. It is possible to receive fewer results than the specified limit on a given page.  The default value of 100 is also the maximum allowed value. If the provided value is  greater than 100, it is ignored and the default value is used instead.  Default: &#x60;100&#x60; (optional)
/// 
///  code:200 message:"Success"
///
/// @return SQListPaymentsResponse*
-(NSURLSessionTask*) listPaymentsWithBeginTime: (NSString*) beginTime
    endTime: (NSString*) endTime
    sortOrder: (NSString*) sortOrder
    cursor: (NSString*) cursor
    locationId: (NSString*) locationId
    total: (NSNumber*) total
    last4: (NSString*) last4
    cardBrand: (NSString*) cardBrand
    limit: (NSNumber*) limit
    completionHandler: (void (^)(SQListPaymentsResponse* output, NSError* error)) handler;


/// UpdatePayment
/// Updates a payment with the APPROVED status. You can update the `amount_money` and `tip_money` using this endpoint.
///
/// @param paymentId The ID of the payment to update.
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQUpdatePaymentResponse*
-(NSURLSessionTask*) updatePaymentWithPaymentId: (NSString*) paymentId
    body: (SQUpdatePaymentRequest*) body
    completionHandler: (void (^)(SQUpdatePaymentResponse* output, NSError* error)) handler;



@end