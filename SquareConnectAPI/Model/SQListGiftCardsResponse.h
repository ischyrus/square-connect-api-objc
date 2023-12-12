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
#import "SQGiftCard.h"
@protocol SQError;
@class SQError;
@protocol SQGiftCard;
@class SQGiftCard;



@protocol SQListGiftCardsResponse
@end

@interface SQListGiftCardsResponse : SQObject

/* Any errors that occurred during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;
/* The requested gift cards or an empty object if none are found. [optional]
 */
@property(nonatomic) NSArray<SQGiftCard>* giftCards;
/* When a response is truncated, it includes a cursor that you can use in a subsequent request to retrieve the next set of gift cards. If a cursor is not present, this is the final response. For more information, see [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination). [optional]
 */
@property(nonatomic) NSString* cursor;

@end
