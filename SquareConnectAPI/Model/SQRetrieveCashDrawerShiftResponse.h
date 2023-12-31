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


#import "SQCashDrawerShift.h"
#import "SQError.h"
@protocol SQCashDrawerShift;
@class SQCashDrawerShift;
@protocol SQError;
@class SQError;



@protocol SQRetrieveCashDrawerShiftResponse
@end

@interface SQRetrieveCashDrawerShiftResponse : SQObject

/* The cash drawer shift queried for. [optional]
 */
@property(nonatomic) SQCashDrawerShift* cashDrawerShift;
/* Any errors that occurred during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;

@end
