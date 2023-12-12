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





@protocol SQListGiftCardsRequest
@end

@interface SQListGiftCardsRequest : SQObject

/* If a [type](https://developer.squareup.com/reference/square_2023-10-18/enums/GiftCardType) is provided, the endpoint returns gift cards of the specified type. Otherwise, the endpoint returns gift cards of all types. [optional]
 */
@property(nonatomic) NSString* type;
/* If a [state](https://developer.squareup.com/reference/square_2023-10-18/enums/GiftCardStatus) is provided, the endpoint returns the gift cards in the specified state. Otherwise, the endpoint returns the gift cards of all states. [optional]
 */
@property(nonatomic) NSString* state;
/* If a limit is provided, the endpoint returns only the specified number of results per page. The maximum value is 200. The default value is 30. For more information, see [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination). [optional]
 */
@property(nonatomic) NSNumber* limit;
/* A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. If a cursor is not provided, the endpoint returns the first page of the results.  For more information, see [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination). [optional]
 */
@property(nonatomic) NSString* cursor;
/* If a customer ID is provided, the endpoint returns only the gift cards linked to the specified customer. [optional]
 */
@property(nonatomic) NSString* customerId;

@end
