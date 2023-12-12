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


#import "SQDeviceCode.h"
#import "SQError.h"
@protocol SQDeviceCode;
@class SQDeviceCode;
@protocol SQError;
@class SQError;



@protocol SQListDeviceCodesResponse
@end

@interface SQListDeviceCodesResponse : SQObject

/* Any errors that occurred during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;
/* The queried DeviceCode. [optional]
 */
@property(nonatomic) NSArray<SQDeviceCode>* deviceCodes;
/* A pagination cursor to retrieve the next set of results for your original query to the endpoint. This value is present only if the request succeeded and additional results are available.  See [Paginating results](https://developer.squareup.com/docs/working-with-apis/pagination) for more information. [optional]
 */
@property(nonatomic) NSString* cursor;

@end