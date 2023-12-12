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


#import "SQACHDetails.h"
#import "SQError.h"
@protocol SQACHDetails;
@class SQACHDetails;
@protocol SQError;
@class SQError;



@protocol SQBankAccountPaymentDetails
@end

@interface SQBankAccountPaymentDetails : SQObject

/* The name of the bank associated with the bank account. [optional]
 */
@property(nonatomic) NSString* bankName;
/* The type of the bank transfer. The type can be `ACH` or `UNKNOWN`. [optional]
 */
@property(nonatomic) NSString* transferType;
/* The ownership type of the bank account performing the transfer. The type can be `INDIVIDUAL`, `COMPANY`, or `ACCOUNT_TYPE_UNKNOWN`. [optional]
 */
@property(nonatomic) NSString* accountOwnershipType;
/* Uniquely identifies the bank account for this seller and can be used to determine if payments are from the same bank account. [optional]
 */
@property(nonatomic) NSString* fingerprint;
/* The two-letter ISO code representing the country the bank account is located in. [optional]
 */
@property(nonatomic) NSString* country;
/* The statement description as sent to the bank. [optional]
 */
@property(nonatomic) NSString* statementDescription;
/* ACH-specific information about the transfer. The information is only populated if the `transfer_type` is `ACH`. [optional]
 */
@property(nonatomic) SQACHDetails* achDetails;
/* Information about errors encountered during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;

@end