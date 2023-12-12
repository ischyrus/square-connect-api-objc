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
#import "SQTransaction.h"
@protocol SQError;
@class SQError;
@protocol SQTransaction;
@class SQTransaction;



@protocol SQListTransactionsResponse
@end

@interface SQListTransactionsResponse : SQObject

/* Any errors that occurred during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;
/* An array of transactions that match your query. [optional]
 */
@property(nonatomic) NSArray<SQTransaction>* transactions;
/* A pagination cursor for retrieving the next set of results, if any remain. Provide this value as the `cursor` parameter in a subsequent request to this endpoint.  See [Paginating results](https://developer.squareup.com/docs/working-with-apis/pagination) for more information. [optional]
 */
@property(nonatomic) NSString* cursor;

@end
