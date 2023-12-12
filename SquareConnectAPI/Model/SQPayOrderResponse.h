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



@protocol SQPayOrderResponse
@end

@interface SQPayOrderResponse : SQObject

/* Any errors that occurred during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;
/* The paid, updated [order](https://developer.squareup.com/reference/square_2023-10-18/objects/Order). [optional]
 */
@property(nonatomic) SQOrder* order;

@end
