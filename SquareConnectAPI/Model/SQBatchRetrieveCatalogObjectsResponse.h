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



@protocol SQBatchRetrieveCatalogObjectsResponse
@end

@interface SQBatchRetrieveCatalogObjectsResponse : SQObject

/* Any errors that occurred during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;
/* A list of [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject)s returned. [optional]
 */
@property(nonatomic) NSArray<SQCatalogObject>* objects;
/* A list of [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject)s referenced by the object in the `objects` field. [optional]
 */
@property(nonatomic) NSArray<SQCatalogObject>* relatedObjects;

@end
