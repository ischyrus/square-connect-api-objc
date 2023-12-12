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


#import "SQCardRefundDetails.h"
@protocol SQCardRefundDetails;
@class SQCardRefundDetails;



@protocol SQDestinationDetails
@end

@interface SQDestinationDetails : SQObject

/* Details about a card refund. Only populated if the destination_type is `CARD`. [optional]
 */
@property(nonatomic) SQCardRefundDetails* cardDetails;

@end