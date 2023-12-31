#import <Foundation/Foundation.h>
#import "SQCreateWebhookSubscriptionRequest.h"
#import "SQCreateWebhookSubscriptionResponse.h"
#import "SQDeleteWebhookSubscriptionResponse.h"
#import "SQListWebhookEventTypesResponse.h"
#import "SQListWebhookSubscriptionsResponse.h"
#import "SQRetrieveWebhookSubscriptionResponse.h"
#import "SQTestWebhookSubscriptionRequest.h"
#import "SQTestWebhookSubscriptionResponse.h"
#import "SQUpdateWebhookSubscriptionRequest.h"
#import "SQUpdateWebhookSubscriptionResponse.h"
#import "SQUpdateWebhookSubscriptionSignatureKeyRequest.h"
#import "SQUpdateWebhookSubscriptionSignatureKeyResponse.h"
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



@interface SQWebhookSubscriptionsApi: NSObject <SQApi>

extern NSString* kSQWebhookSubscriptionsApiErrorDomain;
extern NSInteger kSQWebhookSubscriptionsApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SQApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// CreateWebhookSubscription
/// Creates a webhook subscription.
///
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQCreateWebhookSubscriptionResponse*
-(NSURLSessionTask*) createWebhookSubscriptionWithBody: (SQCreateWebhookSubscriptionRequest*) body
    completionHandler: (void (^)(SQCreateWebhookSubscriptionResponse* output, NSError* error)) handler;


/// DeleteWebhookSubscription
/// Deletes a webhook subscription.
///
/// @param subscriptionId [REQUIRED] The ID of the [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription) to delete.
/// 
///  code:200 message:"Success"
///
/// @return SQDeleteWebhookSubscriptionResponse*
-(NSURLSessionTask*) deleteWebhookSubscriptionWithSubscriptionId: (NSString*) subscriptionId
    completionHandler: (void (^)(SQDeleteWebhookSubscriptionResponse* output, NSError* error)) handler;


/// ListWebhookEventTypes
/// Lists all webhook event types that can be subscribed to.
///
/// @param apiVersion The API version for which to list event types. Setting this field overrides the default version used by the application. (optional)
/// 
///  code:200 message:"Success"
///
/// @return SQListWebhookEventTypesResponse*
-(NSURLSessionTask*) listWebhookEventTypesWithApiVersion: (NSString*) apiVersion
    completionHandler: (void (^)(SQListWebhookEventTypesResponse* output, NSError* error)) handler;


/// ListWebhookSubscriptions
/// Lists all webhook subscriptions owned by your application.
///
/// @param cursor A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
/// @param includeDisabled Includes disabled [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription)s. By default, all enabled [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription)s are returned. (optional)
/// @param sortOrder Sorts the returned list by when the [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription) was created with the specified order. This field defaults to ASC. (optional)
/// @param limit The maximum number of results to be returned in a single page. It is possible to receive fewer results than the specified limit on a given page. The default value of 100 is also the maximum allowed value.  Default: 100 (optional)
/// 
///  code:200 message:"Success"
///
/// @return SQListWebhookSubscriptionsResponse*
-(NSURLSessionTask*) listWebhookSubscriptionsWithCursor: (NSString*) cursor
    includeDisabled: (NSNumber*) includeDisabled
    sortOrder: (NSString*) sortOrder
    limit: (NSNumber*) limit
    completionHandler: (void (^)(SQListWebhookSubscriptionsResponse* output, NSError* error)) handler;


/// RetrieveWebhookSubscription
/// Retrieves a webhook subscription identified by its ID.
///
/// @param subscriptionId [REQUIRED] The ID of the [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription) to retrieve.
/// 
///  code:200 message:"Success"
///
/// @return SQRetrieveWebhookSubscriptionResponse*
-(NSURLSessionTask*) retrieveWebhookSubscriptionWithSubscriptionId: (NSString*) subscriptionId
    completionHandler: (void (^)(SQRetrieveWebhookSubscriptionResponse* output, NSError* error)) handler;


/// TestWebhookSubscription
/// Tests a webhook subscription by sending a test event to the notification URL.
///
/// @param subscriptionId [REQUIRED] The ID of the [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription) to test.
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQTestWebhookSubscriptionResponse*
-(NSURLSessionTask*) testWebhookSubscriptionWithSubscriptionId: (NSString*) subscriptionId
    body: (SQTestWebhookSubscriptionRequest*) body
    completionHandler: (void (^)(SQTestWebhookSubscriptionResponse* output, NSError* error)) handler;


/// UpdateWebhookSubscription
/// Updates a webhook subscription.
///
/// @param subscriptionId [REQUIRED] The ID of the [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription) to update.
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQUpdateWebhookSubscriptionResponse*
-(NSURLSessionTask*) updateWebhookSubscriptionWithSubscriptionId: (NSString*) subscriptionId
    body: (SQUpdateWebhookSubscriptionRequest*) body
    completionHandler: (void (^)(SQUpdateWebhookSubscriptionResponse* output, NSError* error)) handler;


/// UpdateWebhookSubscriptionSignatureKey
/// Updates a webhook subscription by replacing the existing signature key with a new one.
///
/// @param subscriptionId [REQUIRED] The ID of the [Subscription](https://developer.squareup.com/reference/square_2023-10-18/objects/WebhookSubscription) to update.
/// @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
/// 
///  code:200 message:"Success"
///
/// @return SQUpdateWebhookSubscriptionSignatureKeyResponse*
-(NSURLSessionTask*) updateWebhookSubscriptionSignatureKeyWithSubscriptionId: (NSString*) subscriptionId
    body: (SQUpdateWebhookSubscriptionSignatureKeyRequest*) body
    completionHandler: (void (^)(SQUpdateWebhookSubscriptionSignatureKeyResponse* output, NSError* error)) handler;



@end
