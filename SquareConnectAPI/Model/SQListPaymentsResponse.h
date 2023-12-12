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
#import "SQPayment.h"
@protocol SQError;
@class SQError;
@protocol SQPayment;
@class SQPayment;



@protocol SQListPaymentsResponse
@end

@interface SQListPaymentsResponse : SQObject

/* Information about errors encountered during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;
/* The requested list of payments. [optional]
 */
@property(nonatomic) NSArray<SQPayment>* payments;
/* The pagination cursor to be used in a subsequent request. If empty, this is the final response.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). [optional]
 */
@property(nonatomic) NSString* cursor;

@end