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
#import "SQCard.h"
#import "SQCustomerPreferences.h"
#import "SQTaxIds.h"
@protocol SQAddress;
@class SQAddress;
@protocol SQCard;
@class SQCard;
@protocol SQCustomerPreferences;
@class SQCustomerPreferences;
@protocol SQTaxIds;
@class SQTaxIds;



@protocol SQCustomer
@end

@interface SQCustomer : SQObject

/* A unique Square-assigned ID for the customer profile.  If you need this ID for an API request, use the ID returned when you created the customer profile or call the [SearchCustomers](https://developer.squareup.com/reference/square_2023-10-18/customers-api/search-customers)  or [ListCustomers](https://developer.squareup.com/reference/square_2023-10-18/customers-api/list-customers) endpoint. [optional]
 */
@property(nonatomic) NSString* _id;
/* The timestamp when the customer profile was created, in RFC 3339 format. [optional]
 */
@property(nonatomic) NSString* createdAt;
/* The timestamp when the customer profile was last updated, in RFC 3339 format. [optional]
 */
@property(nonatomic) NSString* updatedAt;
/* Payment details of the credit, debit, and gift cards stored on file for the customer profile.   DEPRECATED at version 2021-06-16. Replaced by calling [ListCards](https://developer.squareup.com/reference/square_2023-10-18/cards-api/list-cards) (for credit and debit cards on file)  or [ListGiftCards](https://developer.squareup.com/reference/square_2023-10-18/gift-cards-api/list-gift-cards) (for gift cards on file) and including the `customer_id` query parameter.  For more information, see [Migration notes](https://developer.squareup.com/docs/customers-api/what-it-does#migrate-customer-cards). [optional]
 */
@property(nonatomic) NSArray<SQCard>* cards;
/* The given name (that is, the first name) associated with the customer profile. [optional]
 */
@property(nonatomic) NSString* givenName;
/* The family name (that is, the last name) associated with the customer profile. [optional]
 */
@property(nonatomic) NSString* familyName;
/* A nickname for the customer profile. [optional]
 */
@property(nonatomic) NSString* nickname;
/* A business name associated with the customer profile. [optional]
 */
@property(nonatomic) NSString* companyName;
/* The email address associated with the customer profile. [optional]
 */
@property(nonatomic) NSString* emailAddress;
/* The physical address associated with the customer profile. [optional]
 */
@property(nonatomic) SQAddress* address;
/* The phone number associated with the customer profile. [optional]
 */
@property(nonatomic) NSString* phoneNumber;
/* The birthday associated with the customer profile, in `YYYY-MM-DD` format. For example, `1998-09-21` represents September 21, 1998, and `0000-09-21` represents September 21 (without a birth year). [optional]
 */
@property(nonatomic) NSString* birthday;
/* An optional second ID used to associate the customer profile with an entity in another system. [optional]
 */
@property(nonatomic) NSString* referenceId;
/* A custom note associated with the customer profile. [optional]
 */
@property(nonatomic) NSString* note;
/* Represents general customer preferences. [optional]
 */
@property(nonatomic) SQCustomerPreferences* preferences;
/* The method used to create the customer profile. [optional]
 */
@property(nonatomic) NSString* creationSource;
/* The IDs of [customer groups](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomerGroup) the customer belongs to. [optional]
 */
@property(nonatomic) NSArray<NSString*>* groupIds;
/* The IDs of [customer segments](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomerSegment) the customer belongs to. [optional]
 */
@property(nonatomic) NSArray<NSString*>* segmentIds;
/* The Square-assigned version number of the customer profile. The version number is incremented each time an update is committed to the customer profile, except for changes to customer segment membership and cards on file. [optional]
 */
@property(nonatomic) NSNumber* version;
/* The tax ID associated with the customer profile. This field is present only for customers of sellers in EU countries or the United Kingdom.  For more information, see [Customer tax IDs](https://developer.squareup.com/docs/customers-api/what-it-does#customer-tax-ids). [optional]
 */
@property(nonatomic) SQTaxIds* taxIds;

@end
