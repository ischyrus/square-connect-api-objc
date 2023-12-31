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
#import "SQInventoryChange.h"
#import "SQInventoryCount.h"
@protocol SQError;
@class SQError;
@protocol SQInventoryChange;
@class SQInventoryChange;
@protocol SQInventoryCount;
@class SQInventoryCount;



@protocol SQBatchChangeInventoryResponse
@end

@interface SQBatchChangeInventoryResponse : SQObject

/* Any errors that occurred during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;
/* The current counts for all objects referenced in the request. [optional]
 */
@property(nonatomic) NSArray<SQInventoryCount>* counts;
/* Changes created for the request. [optional]
 */
@property(nonatomic) NSArray<SQInventoryChange>* changes;

@end
