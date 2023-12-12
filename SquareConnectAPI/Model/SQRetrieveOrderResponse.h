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



@protocol SQRetrieveOrderResponse
@end

@interface SQRetrieveOrderResponse : SQObject

/* The requested order. [optional]
 */
@property(nonatomic) SQOrder* order;
/* Any errors that occurred during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;

@end