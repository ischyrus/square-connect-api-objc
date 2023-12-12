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
#import "SQInvoiceRecipientTaxIds.h"
@protocol SQAddress;
@class SQAddress;
@protocol SQInvoiceRecipientTaxIds;
@class SQInvoiceRecipientTaxIds;



@protocol SQInvoiceRecipient
@end

@interface SQInvoiceRecipient : SQObject

/* The ID of the customer. This is the customer profile ID that  you provide when creating a draft invoice. [optional]
 */
@property(nonatomic) NSString* customerId;
/* The recipient's given (that is, first) name. [optional]
 */
@property(nonatomic) NSString* givenName;
/* The recipient's family (that is, last) name. [optional]
 */
@property(nonatomic) NSString* familyName;
/* The recipient's email address. [optional]
 */
@property(nonatomic) NSString* emailAddress;
/* The recipient's physical address. [optional]
 */
@property(nonatomic) SQAddress* address;
/* The recipient's phone number. [optional]
 */
@property(nonatomic) NSString* phoneNumber;
/* The name of the recipient's company. [optional]
 */
@property(nonatomic) NSString* companyName;
/* The recipient's tax IDs. The country of the seller account determines whether this field  is available for the customer. For more information, see [Invoice recipient tax IDs](https://developer.squareup.com/docs/invoices-api/overview#recipient-tax-ids). [optional]
 */
@property(nonatomic) SQInvoiceRecipientTaxIds* taxIds;

@end