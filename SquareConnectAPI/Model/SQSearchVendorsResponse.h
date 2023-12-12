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



@protocol SQSearchVendorsResponse
@end

@interface SQSearchVendorsResponse : SQObject

/* Errors encountered when the request fails. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;
/* The [Vendor](https://developer.squareup.com/reference/square_2023-10-18/objects/Vendor) objects matching the specified search filter. [optional]
 */
@property(nonatomic) NSArray<SQVendor>* vendors;
/* The pagination cursor to be used in a subsequent request. If unset, this is the final response.  See the [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination) guide for more information. [optional]
 */
@property(nonatomic) NSString* cursor;

@end