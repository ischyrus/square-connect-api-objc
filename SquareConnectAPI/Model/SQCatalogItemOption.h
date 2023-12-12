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
@protocol SQCatalogObject;
@class SQCatalogObject;



@protocol SQCatalogItemOption
@end

@interface SQCatalogItemOption : SQObject

/* The item option's display name for the seller. Must be unique across all item options. This is a searchable attribute for use in applicable query filters. [optional]
 */
@property(nonatomic) NSString* name;
/* The item option's display name for the customer. This is a searchable attribute for use in applicable query filters. [optional]
 */
@property(nonatomic) NSString* displayName;
/* The item option's human-readable description. Displayed in the Square Point of Sale app for the seller and in the Online Store or on receipts for the buyer. This is a searchable attribute for use in applicable query filters. [optional]
 */
@property(nonatomic) NSString* _description;
/* If true, display colors for entries in `values` when present. [optional]
 */
@property(nonatomic) NSNumber* showColors;
/* A list of CatalogObjects containing the `CatalogItemOptionValue`s for this item. [optional]
 */
@property(nonatomic) NSArray<SQCatalogObject>* values;

@end