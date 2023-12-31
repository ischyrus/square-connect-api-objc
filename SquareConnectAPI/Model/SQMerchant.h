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





@protocol SQMerchant
@end

@interface SQMerchant : SQObject

/* The Square-issued ID of the merchant. [optional]
 */
@property(nonatomic) NSString* _id;
/* The name of the merchant's overall business. [optional]
 */
@property(nonatomic) NSString* businessName;
/* The country code associated with the merchant, in the two-letter format of ISO 3166. For example, `US` or `JP`. 
 */
@property(nonatomic) NSString* country;
/* The code indicating the [language preferences](https://developer.squareup.com/docs/build-basics/general-considerations/language-preferences) of the merchant, in [BCP 47 format](https://tools.ietf.org/html/bcp47#appendix-A). For example, `en-US` or `fr-CA`. [optional]
 */
@property(nonatomic) NSString* languageCode;
/* The currency associated with the merchant, in ISO 4217 format. For example, the currency code for US dollars is `USD`. [optional]
 */
@property(nonatomic) NSString* currency;
/* The merchant's status. [optional]
 */
@property(nonatomic) NSString* status;
/* The ID of the [main `Location`](https://developer.squareup.com/docs/locations-api#about-the-main-location) for this merchant. [optional]
 */
@property(nonatomic) NSString* mainLocationId;
/* The time when the merchant was created, in RFC 3339 format.    For more information, see [Working with Dates](https://developer.squareup.com/docs/build-basics/working-with-dates). [optional]
 */
@property(nonatomic) NSString* createdAt;

@end
