#import <Foundation/Foundation.h>
#import "SQCaptureTransactionResponse.h"
#import "SQListTransactionsResponse.h"
#import "SQRetrieveTransactionResponse.h"
#import "SQVoidTransactionResponse.h"
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



@interface SQTransactionsApi: NSObject <SQApi>

extern NSString* kSQTransactionsApiErrorDomain;
extern NSInteger kSQTransactionsApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SQApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// CaptureTransaction
/// Captures a transaction that was created with the [Charge](https://developer.squareup.com/reference/square_2023-10-18/transactions-api/charge) endpoint with a `delay_capture` value of `true`.   See [Delayed capture transactions](https://developer.squareup.com/docs/payments/transactions/overview#delayed-capture) for more information.
///
/// @param locationId 
/// @param transactionId 
/// 
///  code:200 message:"Success"
///
/// @return SQCaptureTransactionResponse*
-(NSURLSessionTask*) captureTransactionWithLocationId: (NSString*) locationId
    transactionId: (NSString*) transactionId
    completionHandler: (void (^)(SQCaptureTransactionResponse* output, NSError* error)) handler;


/// ListTransactions
/// Lists transactions for a particular location.  Transactions include payment information from sales and exchanges and refund information from returns and exchanges.  Max results per [page](https://developer.squareup.com/docs/working-with-apis/pagination): 50
///
/// @param locationId The ID of the location to list transactions for.
/// @param beginTime The beginning of the requested reporting period, in RFC 3339 format.  See [Date ranges](https://developer.squareup.com/docs/build-basics/working-with-dates) for details on date inclusivity/exclusivity.  Default value: The current time minus one year. (optional)
/// @param endTime The end of the requested reporting period, in RFC 3339 format.  See [Date ranges](https://developer.squareup.com/docs/build-basics/working-with-dates) for details on date inclusivity/exclusivity.  Default value: The current time. (optional)
/// @param sortOrder The order in which results are listed in the response (&#x60;ASC&#x60; for oldest first, &#x60;DESC&#x60; for newest first).  Default value: &#x60;DESC&#x60; (optional)
/// @param cursor A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Paginating results](https://developer.squareup.com/docs/working-with-apis/pagination) for more information. (optional)
/// 
///  code:200 message:"Success"
///
/// @return SQListTransactionsResponse*
-(NSURLSessionTask*) listTransactionsWithLocationId: (NSString*) locationId
    beginTime: (NSString*) beginTime
    endTime: (NSString*) endTime
    sortOrder: (NSString*) sortOrder
    cursor: (NSString*) cursor
    completionHandler: (void (^)(SQListTransactionsResponse* output, NSError* error)) handler;


/// RetrieveTransaction
/// Retrieves details for a single transaction.
///
/// @param locationId The ID of the transaction&#39;s associated location.
/// @param transactionId The ID of the transaction to retrieve.
/// 
///  code:200 message:"Success"
///
/// @return SQRetrieveTransactionResponse*
-(NSURLSessionTask*) retrieveTransactionWithLocationId: (NSString*) locationId
    transactionId: (NSString*) transactionId
    completionHandler: (void (^)(SQRetrieveTransactionResponse* output, NSError* error)) handler;


/// VoidTransaction
/// Cancels a transaction that was created with the [Charge](https://developer.squareup.com/reference/square_2023-10-18/transactions-api/charge) endpoint with a `delay_capture` value of `true`.   See [Delayed capture transactions](https://developer.squareup.com/docs/payments/transactions/overview#delayed-capture) for more information.
///
/// @param locationId 
/// @param transactionId 
/// 
///  code:200 message:"Success"
///
/// @return SQVoidTransactionResponse*
-(NSURLSessionTask*) voidTransactionWithLocationId: (NSString*) locationId
    transactionId: (NSString*) transactionId
    completionHandler: (void (^)(SQVoidTransactionResponse* output, NSError* error)) handler;



@end