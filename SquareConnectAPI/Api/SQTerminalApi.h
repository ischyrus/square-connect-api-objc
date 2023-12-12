#import <Foundation/Foundation.h>
#import "SQCancelTerminalActionResponse.h"
#import "SQCancelTerminalCheckoutResponse.h"
#import "SQCancelTerminalRefundResponse.h"
#import "SQCreateTerminalActionRequest.h"
#import "SQCreateTerminalActionResponse.h"
#import "SQCreateTerminalCheckoutRequest.h"
#import "SQCreateTerminalCheckoutResponse.h"
#import "SQCreateTerminalRefundRequest.h"
#import "SQCreateTerminalRefundResponse.h"
#import "SQDismissTerminalActionResponse.h"
#import "SQGetTerminalActionResponse.h"
#import "SQGetTerminalCheckoutResponse.h"
#import "SQGetTerminalRefundResponse.h"
#import "SQSearchTerminalActionsRequest.h"
#import "SQSearchTerminalActionsResponse.h"
#import "SQSearchTerminalCheckoutsRequest.h"
#import "SQSearchTerminalCheckoutsResponse.h"
#import "SQSearchTerminalRefundsRequest.h"
#import "SQSearchTerminalRefundsResponse.h"
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



@interface SQTerminalApi: NSObject <SQApi>

extern NSString* kSQTerminalApiErrorDomain;
extern NSInteger kSQTerminalApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SQApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// CancelTerminalAction
/// Cancels a Terminal action request if the status of the request permits it.
///
/// @param actionId Unique ID for the desired &#x60;TerminalAction&#x60;.
/// 
///  code:200 message:"Success"
///
/// @return SQCancelTerminalActionResponse*
-(NSURLSessionTask*) cancelTerminalActionWithActionId: (NSString*) actionId
    completionHandler: (void (^)(SQCancelTerminalActionResponse* output, NSError* error)) handler;


/// CancelTerminalCheckout
/// Cancels a Terminal checkout request if the status of the request permits it.
///
/// @param checkoutId The unique ID for the desired &#x60;TerminalCheckout&#x60;.
/// 
///  code:200 message:"Success"
///
/// @return SQCancelTerminalCheckoutResponse*
-(NSURLSessionTask*) cancelTerminalCheckoutWithCheckoutId: (NSString*) checkoutId
    completionHandler: (void (^)(SQCancelTerminalCheckoutResponse* output, NSError* error)) handler;


/// CancelTerminalRefund
/// Cancels an Interac Terminal refund request by refund request ID if the status of the request permits it.
///
/// @param terminalRefundId The unique ID for the desired &#x60;TerminalRefund&#x60;.
/// 
///  code:200 message:"Success"
///
/// @return SQCancelTerminalRefundResponse*
-(NSURLSessionTask*) cancelTerminalRefundWithTerminalRefundId: (NSString*) terminalRefundId
    completionHandler: (void (^)(SQCancelTerminalRefundResponse* output, NSError* error)) handler;


/// CreateTerminalAction
/// Creates a Terminal action request and sends it to the specified device.
///
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQCreateTerminalActionResponse*
-(NSURLSessionTask*) createTerminalActionWithBody: (SQCreateTerminalActionRequest*) body
    completionHandler: (void (^)(SQCreateTerminalActionResponse* output, NSError* error)) handler;


/// CreateTerminalCheckout
/// Creates a Terminal checkout request and sends it to the specified device to take a payment for the requested amount.
///
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQCreateTerminalCheckoutResponse*
-(NSURLSessionTask*) createTerminalCheckoutWithBody: (SQCreateTerminalCheckoutRequest*) body
    completionHandler: (void (^)(SQCreateTerminalCheckoutResponse* output, NSError* error)) handler;


/// CreateTerminalRefund
/// Creates a request to refund an Interac payment completed on a Square Terminal. Refunds for Interac payments on a Square Terminal are supported only for Interac debit cards in Canada. Other refunds for Terminal payments should use the Refunds API. For more information, see [Refunds API](https://developer.squareup.com/reference/square_2023-10-18/refunds-api).
///
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQCreateTerminalRefundResponse*
-(NSURLSessionTask*) createTerminalRefundWithBody: (SQCreateTerminalRefundRequest*) body
    completionHandler: (void (^)(SQCreateTerminalRefundResponse* output, NSError* error)) handler;


/// DismissTerminalAction
/// Dismisses a Terminal action request if the status and type of the request permits it.  See [Link and Dismiss Actions](https://developer.squareup.com/docs/terminal-api/advanced-features/custom-workflows/link-and-dismiss-actions) for more details.
///
/// @param actionId Unique ID for the &#x60;TerminalAction&#x60; associated with the waiting dialog to be dismissed.
/// 
///  code:200 message:"Success"
///
/// @return SQDismissTerminalActionResponse*
-(NSURLSessionTask*) dismissTerminalActionWithActionId: (NSString*) actionId
    completionHandler: (void (^)(SQDismissTerminalActionResponse* output, NSError* error)) handler;


/// GetTerminalAction
/// Retrieves a Terminal action request by `action_id`. Terminal action requests are available for 30 days.
///
/// @param actionId Unique ID for the desired &#x60;TerminalAction&#x60;.
/// 
///  code:200 message:"Success"
///
/// @return SQGetTerminalActionResponse*
-(NSURLSessionTask*) getTerminalActionWithActionId: (NSString*) actionId
    completionHandler: (void (^)(SQGetTerminalActionResponse* output, NSError* error)) handler;


/// GetTerminalCheckout
/// Retrieves a Terminal checkout request by `checkout_id`. Terminal checkout requests are available for 30 days.
///
/// @param checkoutId The unique ID for the desired &#x60;TerminalCheckout&#x60;.
/// 
///  code:200 message:"Success"
///
/// @return SQGetTerminalCheckoutResponse*
-(NSURLSessionTask*) getTerminalCheckoutWithCheckoutId: (NSString*) checkoutId
    completionHandler: (void (^)(SQGetTerminalCheckoutResponse* output, NSError* error)) handler;


/// GetTerminalRefund
/// Retrieves an Interac Terminal refund object by ID. Terminal refund objects are available for 30 days.
///
/// @param terminalRefundId The unique ID for the desired &#x60;TerminalRefund&#x60;.
/// 
///  code:200 message:"Success"
///
/// @return SQGetTerminalRefundResponse*
-(NSURLSessionTask*) getTerminalRefundWithTerminalRefundId: (NSString*) terminalRefundId
    completionHandler: (void (^)(SQGetTerminalRefundResponse* output, NSError* error)) handler;


/// SearchTerminalActions
/// Retrieves a filtered list of Terminal action requests created by the account making the request. Terminal action requests are available for 30 days.
///
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQSearchTerminalActionsResponse*
-(NSURLSessionTask*) searchTerminalActionsWithBody: (SQSearchTerminalActionsRequest*) body
    completionHandler: (void (^)(SQSearchTerminalActionsResponse* output, NSError* error)) handler;


/// SearchTerminalCheckouts
/// Returns a filtered list of Terminal checkout requests created by the application making the request. Only Terminal checkout requests created for the merchant scoped to the OAuth token are returned. Terminal checkout requests are available for 30 days.
///
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQSearchTerminalCheckoutsResponse*
-(NSURLSessionTask*) searchTerminalCheckoutsWithBody: (SQSearchTerminalCheckoutsRequest*) body
    completionHandler: (void (^)(SQSearchTerminalCheckoutsResponse* output, NSError* error)) handler;


/// SearchTerminalRefunds
/// Retrieves a filtered list of Interac Terminal refund requests created by the seller making the request. Terminal refund requests are available for 30 days.
///
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQSearchTerminalRefundsResponse*
-(NSURLSessionTask*) searchTerminalRefundsWithBody: (SQSearchTerminalRefundsRequest*) body
    completionHandler: (void (^)(SQSearchTerminalRefundsResponse* output, NSError* error)) handler;



@end
