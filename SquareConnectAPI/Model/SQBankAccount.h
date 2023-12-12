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





@protocol SQBankAccount
@end

@interface SQBankAccount : SQObject

/* The unique, Square-issued identifier for the bank account. 
 */
@property(nonatomic) NSString* _id;
/* The last few digits of the account number. 
 */
@property(nonatomic) NSString* accountNumberSuffix;
/* The ISO 3166 Alpha-2 country code where the bank account is based. 
 */
@property(nonatomic) NSString* country;
/* The 3-character ISO 4217 currency code indicating the operating currency of the bank account. For example, the currency code for US dollars is `USD`. 
 */
@property(nonatomic) NSString* currency;
/* The financial purpose of the associated bank account. 
 */
@property(nonatomic) NSString* accountType;
/* Name of the account holder. This name must match the name  on the targeted bank account record. 
 */
@property(nonatomic) NSString* holderName;
/* Primary identifier for the bank. For more information, see  [Bank Accounts API](https://developer.squareup.com/docs/bank-accounts-api). 
 */
@property(nonatomic) NSString* primaryBankIdentificationNumber;
/* Secondary identifier for the bank. For more information, see  [Bank Accounts API](https://developer.squareup.com/docs/bank-accounts-api). [optional]
 */
@property(nonatomic) NSString* secondaryBankIdentificationNumber;
/* Reference identifier that will be displayed to UK bank account owners when collecting direct debit authorization. Only required for UK bank accounts. [optional]
 */
@property(nonatomic) NSString* debitMandateReferenceId;
/* Client-provided identifier for linking the banking account to an entity in a third-party system (for example, a bank account number or a user identifier). [optional]
 */
@property(nonatomic) NSString* referenceId;
/* The location to which the bank account belongs. [optional]
 */
@property(nonatomic) NSString* locationId;
/* Read-only. The current verification status of this BankAccount object. 
 */
@property(nonatomic) NSString* status;
/* Indicates whether it is possible for Square to send money to this bank account. 
 */
@property(nonatomic) NSNumber* creditable;
/* Indicates whether it is possible for Square to take money from this  bank account. 
 */
@property(nonatomic) NSNumber* debitable;
/* A Square-assigned, unique identifier for the bank account based on the account information. The account fingerprint can be used to compare account entries and determine if the they represent the same real-world bank account. [optional]
 */
@property(nonatomic) NSString* fingerprint;
/* The current version of the `BankAccount`. [optional]
 */
@property(nonatomic) NSNumber* version;
/* Read only. Name of actual financial institution.  For example \"Bank of America\". [optional]
 */
@property(nonatomic) NSString* bankName;

@end
