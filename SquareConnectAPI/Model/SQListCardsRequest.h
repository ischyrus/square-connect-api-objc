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





@protocol SQListCardsRequest
@end

@interface SQListCardsRequest : SQObject

/* A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination) for more information. [optional]
 */
@property(nonatomic) NSString* cursor;
/* Limit results to cards associated with the customer supplied. By default, all cards owned by the merchant are returned. [optional]
 */
@property(nonatomic) NSString* customerId;
/* Includes disabled cards. By default, all enabled cards owned by the merchant are returned. [optional]
 */
@property(nonatomic) NSNumber* includeDisabled;
/* Limit results to cards associated with the reference_id supplied. [optional]
 */
@property(nonatomic) NSString* referenceId;
/* Sorts the returned list by when the card was created with the specified order. This field defaults to ASC. [optional]
 */
@property(nonatomic) NSString* sortOrder;

@end