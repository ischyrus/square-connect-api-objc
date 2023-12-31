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
#import "SQOrder.h"
@protocol SQError;
@class SQError;
@protocol SQOrder;
@class SQOrder;



@protocol SQBatchRetrieveOrdersResponse
@end

@interface SQBatchRetrieveOrdersResponse : SQObject

/* The requested orders. This will omit any requested orders that do not exist. [optional]
 */
@property(nonatomic) NSArray<SQOrder>* orders;
/* Any errors that occurred during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;

@end
