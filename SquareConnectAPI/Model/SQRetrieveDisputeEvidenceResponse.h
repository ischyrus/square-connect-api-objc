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



@protocol SQRetrieveDisputeEvidenceResponse
@end

@interface SQRetrieveDisputeEvidenceResponse : SQObject

/* Any errors that occurred during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;
/* Metadata about the dispute evidence file. [optional]
 */
@property(nonatomic) SQDisputeEvidence* evidence;

@end
