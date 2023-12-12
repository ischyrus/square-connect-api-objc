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
#import "SQPaymentLink.h"
@protocol SQError;
@class SQError;
@protocol SQPaymentLink;
@class SQPaymentLink;



@protocol SQListPaymentLinksResponse
@end

@interface SQListPaymentLinksResponse : SQObject

/* Errors that occurred during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;
/* The list of payment links. [optional]
 */
@property(nonatomic) NSArray<SQPaymentLink>* paymentLinks;
/*   When a response is truncated, it includes a cursor that you can use in a subsequent request to retrieve the next set of gift cards. If a cursor is not present, this is the final response. For more information, see [Pagination](https://developer.squareup.com/docs/basics/api101/pagination). [optional]
 */
@property(nonatomic) NSString* cursor;

@end