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
#import "SQError.h"
@protocol SQCard;
@class SQCard;
@protocol SQError;
@class SQError;



@protocol SQCreateCardResponse
@end

@interface SQCreateCardResponse : SQObject

/* Errors resulting from the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;
/* The card created by the request. [optional]
 */
@property(nonatomic) SQCard* card;

@end
