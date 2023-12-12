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


#import "SQAddress.h"
@protocol SQAddress;
@class SQAddress;



@protocol SQPrePopulatedData
@end

@interface SQPrePopulatedData : SQObject

/* The buyer email to prepopulate in the payment form. [optional]
 */
@property(nonatomic) NSString* buyerEmail;
/* The buyer phone number to prepopulate in the payment form. [optional]
 */
@property(nonatomic) NSString* buyerPhoneNumber;
/* The buyer address to prepopulate in the payment form. [optional]
 */
@property(nonatomic) SQAddress* buyerAddress;

@end