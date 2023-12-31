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
#import "SQVendorContact.h"
@protocol SQAddress;
@class SQAddress;
@protocol SQVendorContact;
@class SQVendorContact;



@protocol SQVendor
@end

@interface SQVendor : SQObject

/* A unique Square-generated ID for the [Vendor](https://developer.squareup.com/reference/square_2023-10-18/objects/Vendor). This field is required when attempting to update a [Vendor](https://developer.squareup.com/reference/square_2023-10-18/objects/Vendor). [optional]
 */
@property(nonatomic) NSString* _id;
/* An RFC 3339-formatted timestamp that indicates when the [Vendor](https://developer.squareup.com/reference/square_2023-10-18/objects/Vendor) was created. [optional]
 */
@property(nonatomic) NSString* createdAt;
/* An RFC 3339-formatted timestamp that indicates when the [Vendor](https://developer.squareup.com/reference/square_2023-10-18/objects/Vendor) was last updated. [optional]
 */
@property(nonatomic) NSString* updatedAt;
/* The name of the [Vendor](https://developer.squareup.com/reference/square_2023-10-18/objects/Vendor). This field is required when attempting to create or update a [Vendor](https://developer.squareup.com/reference/square_2023-10-18/objects/Vendor). [optional]
 */
@property(nonatomic) NSString* name;
/* The address of the [Vendor](https://developer.squareup.com/reference/square_2023-10-18/objects/Vendor). [optional]
 */
@property(nonatomic) SQAddress* address;
/* The contacts of the [Vendor](https://developer.squareup.com/reference/square_2023-10-18/objects/Vendor). [optional]
 */
@property(nonatomic) NSArray<SQVendorContact>* contacts;
/* The account number of the [Vendor](https://developer.squareup.com/reference/square_2023-10-18/objects/Vendor). [optional]
 */
@property(nonatomic) NSString* accountNumber;
/* A note detailing information about the [Vendor](https://developer.squareup.com/reference/square_2023-10-18/objects/Vendor). [optional]
 */
@property(nonatomic) NSString* note;
/* The version of the [Vendor](https://developer.squareup.com/reference/square_2023-10-18/objects/Vendor). [optional]
 */
@property(nonatomic) NSNumber* version;
/* The status of the [Vendor](https://developer.squareup.com/reference/square_2023-10-18/objects/Vendor). [optional]
 */
@property(nonatomic) NSString* status;

@end
