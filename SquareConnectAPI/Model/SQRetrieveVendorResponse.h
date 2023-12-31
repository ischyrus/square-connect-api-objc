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


#import "SQError.h"
#import "SQVendor.h"
@protocol SQError;
@class SQError;
@protocol SQVendor;
@class SQVendor;



@protocol SQRetrieveVendorResponse
@end

@interface SQRetrieveVendorResponse : SQObject

/* Errors encountered when the request fails. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;
/* The successfully retrieved [Vendor](https://developer.squareup.com/reference/square_2023-10-18/objects/Vendor) object. [optional]
 */
@property(nonatomic) SQVendor* vendor;

@end
