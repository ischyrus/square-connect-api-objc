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
#import "SQEventTypeMetadata.h"
@protocol SQError;
@class SQError;
@protocol SQEventTypeMetadata;
@class SQEventTypeMetadata;



@protocol SQListWebhookEventTypesResponse
@end

@interface SQListWebhookEventTypesResponse : SQObject

/* Information on errors encountered during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;
/* The list of event types. [optional]
 */
@property(nonatomic) NSArray<NSString*>* eventTypes;
/* Contains the metadata of a webhook event type. For more information, see [EventTypeMetadata](https://developer.squareup.com/reference/square_2023-10-18/objects/EventTypeMetadata). [optional]
 */
@property(nonatomic) NSArray<SQEventTypeMetadata>* metadata;

@end