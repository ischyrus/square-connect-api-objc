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
#import "SQInvoice.h"
@protocol SQError;
@class SQError;
@protocol SQInvoice;
@class SQInvoice;



@protocol SQSearchInvoicesResponse
@end

@interface SQSearchInvoicesResponse : SQObject

/* The list of invoices returned by the search. [optional]
 */
@property(nonatomic) NSArray<SQInvoice>* invoices;
/* When a response is truncated, it includes a cursor that you can use in a  subsequent request to fetch the next set of invoices. If empty, this is the final  response.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). [optional]
 */
@property(nonatomic) NSString* cursor;
/* Information about errors encountered during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;

@end