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



@protocol SQCard
@end

@interface SQCard : SQObject

/* Unique ID for this card. Generated by Square. [optional]
 */
@property(nonatomic) NSString* _id;
/* The card's brand. [optional]
 */
@property(nonatomic) NSString* cardBrand;
/* The last 4 digits of the card number. [optional]
 */
@property(nonatomic) NSString* last4;
/* The expiration month of the associated card as an integer between 1 and 12. [optional]
 */
@property(nonatomic) NSNumber* expMonth;
/* The four-digit year of the card's expiration date. [optional]
 */
@property(nonatomic) NSNumber* expYear;
/* The name of the cardholder. [optional]
 */
@property(nonatomic) NSString* cardholderName;
/* The billing address for this card. [optional]
 */
@property(nonatomic) SQAddress* billingAddress;
/* Intended as a Square-assigned identifier, based on the card number, to identify the card across multiple locations within a single application. [optional]
 */
@property(nonatomic) NSString* fingerprint;
/* **Required** The ID of a customer created using the Customers API to be associated with the card. [optional]
 */
@property(nonatomic) NSString* customerId;
/* The ID of the merchant associated with the card. [optional]
 */
@property(nonatomic) NSString* merchantId;
/* An optional user-defined reference ID that associates this card with another entity in an external system. For example, a customer ID from an external customer management system. [optional]
 */
@property(nonatomic) NSString* referenceId;
/* Indicates whether or not a card can be used for payments. [optional]
 */
@property(nonatomic) NSNumber* enabled;
/* The type of the card. The Card object includes this field only in response to Payments API calls. [optional]
 */
@property(nonatomic) NSString* cardType;
/* Indicates whether the Card is prepaid or not. The Card object includes this field only in response to Payments API calls. [optional]
 */
@property(nonatomic) NSString* prepaidType;
/* The first six digits of the card number, known as the Bank Identification Number (BIN). Only the Payments API returns this field. [optional]
 */
@property(nonatomic) NSString* bin;
/* Current version number of the card. Increments with each card update. Requests to update an existing Card object will be rejected unless the version in the request matches the current version for the Card. [optional]
 */
@property(nonatomic) NSNumber* version;
/* The card's co-brand if available. For example, an Afterpay virtual card would have a co-brand of AFTERPAY. [optional]
 */
@property(nonatomic) NSString* cardCoBrand;

@end
