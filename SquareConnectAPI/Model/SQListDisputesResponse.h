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


#import "SQDispute.h"
#import "SQError.h"
@protocol SQDispute;
@class SQDispute;
@protocol SQError;
@class SQError;



@protocol SQListDisputesResponse
@end

@interface SQListDisputesResponse : SQObject

/* Information about errors encountered during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;
/* The list of disputes. [optional]
 */
@property(nonatomic) NSArray<SQDispute>* disputes;
/* The pagination cursor to be used in a subsequent request. If unset, this is the final response. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). [optional]
 */
@property(nonatomic) NSString* cursor;

@end
