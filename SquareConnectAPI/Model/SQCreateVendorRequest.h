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


#import "SQVendor.h"
@protocol SQVendor;
@class SQVendor;



@protocol SQCreateVendorRequest
@end

@interface SQCreateVendorRequest : SQObject

/* A client-supplied, universally unique identifier (UUID) to make this [CreateVendor](https://developer.squareup.com/reference/square_2023-10-18/vendors-api/create-vendor) call idempotent.  See [Idempotency](https://developer.squareup.com/docs/build-basics/common-api-patterns/idempotency) in the [API Development 101](https://developer.squareup.com/docs/buildbasics) section for more information. 
 */
@property(nonatomic) NSString* idempotencyKey;
/* The requested [Vendor](https://developer.squareup.com/reference/square_2023-10-18/objects/Vendor) to be created. [optional]
 */
@property(nonatomic) SQVendor* vendor;

@end