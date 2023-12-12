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


#import "SQCatalogObject.h"
#import "SQError.h"
@protocol SQCatalogObject;
@class SQCatalogObject;
@protocol SQError;
@class SQError;



@protocol SQListCatalogResponse
@end

@interface SQListCatalogResponse : SQObject

/* Any errors that occurred during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;
/* The pagination cursor to be used in a subsequent request. If unset, this is the final response. See [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination) for more information. [optional]
 */
@property(nonatomic) NSString* cursor;
/* The CatalogObjects returned. [optional]
 */
@property(nonatomic) NSArray<SQCatalogObject>* objects;

@end
