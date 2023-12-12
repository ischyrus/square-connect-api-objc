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


#import "SQDisputeEvidence.h"
#import "SQError.h"
@protocol SQDisputeEvidence;
@class SQDisputeEvidence;
@protocol SQError;
@class SQError;



@protocol SQListDisputeEvidenceResponse
@end

@interface SQListDisputeEvidenceResponse : SQObject

/* The list of evidence previously uploaded to the specified dispute. [optional]
 */
@property(nonatomic) NSArray<SQDisputeEvidence>* evidence;
/* Information about errors encountered during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;
/* The pagination cursor to be used in a subsequent request. If unset, this is the final response. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). [optional]
 */
@property(nonatomic) NSString* cursor;

@end
