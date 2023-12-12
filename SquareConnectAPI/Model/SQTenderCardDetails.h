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


#import "SQCard.h"
@protocol SQCard;
@class SQCard;



@protocol SQTenderCardDetails
@end

@interface SQTenderCardDetails : SQObject

/* The credit card payment's current state (such as `AUTHORIZED` or `CAPTURED`). See [TenderCardDetailsStatus](https://developer.squareup.com/reference/square_2023-10-18/enums/TenderCardDetailsStatus) for possible values. [optional]
 */
@property(nonatomic) NSString* status;
/* The credit card's non-confidential details. [optional]
 */
@property(nonatomic) SQCard* card;
/* The method used to enter the card's details for the transaction. [optional]
 */
@property(nonatomic) NSString* entryMethod;

@end