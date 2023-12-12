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
#import "SQInventoryAdjustment.h"
@protocol SQError;
@class SQError;
@protocol SQInventoryAdjustment;
@class SQInventoryAdjustment;



@protocol SQRetrieveInventoryAdjustmentResponse
@end

@interface SQRetrieveInventoryAdjustmentResponse : SQObject

/* Any errors that occurred during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;
/* The requested [InventoryAdjustment](https://developer.squareup.com/reference/square_2023-10-18/objects/InventoryAdjustment). [optional]
 */
@property(nonatomic) SQInventoryAdjustment* adjustment;

@end
