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


#import "SQCatalogQueryExact.h"
#import "SQCatalogQueryItemVariationsForItemOptionValues.h"
#import "SQCatalogQueryItemsForItemOptions.h"
#import "SQCatalogQueryItemsForModifierList.h"
#import "SQCatalogQueryItemsForTax.h"
#import "SQCatalogQueryPrefix.h"
#import "SQCatalogQueryRange.h"
#import "SQCatalogQuerySet.h"
#import "SQCatalogQuerySortedAttribute.h"
#import "SQCatalogQueryText.h"
@protocol SQCatalogQueryExact;
@class SQCatalogQueryExact;
@protocol SQCatalogQueryItemVariationsForItemOptionValues;
@class SQCatalogQueryItemVariationsForItemOptionValues;
@protocol SQCatalogQueryItemsForItemOptions;
@class SQCatalogQueryItemsForItemOptions;
@protocol SQCatalogQueryItemsForModifierList;
@class SQCatalogQueryItemsForModifierList;
@protocol SQCatalogQueryItemsForTax;
@class SQCatalogQueryItemsForTax;
@protocol SQCatalogQueryPrefix;
@class SQCatalogQueryPrefix;
@protocol SQCatalogQueryRange;
@class SQCatalogQueryRange;
@protocol SQCatalogQuerySet;
@class SQCatalogQuerySet;
@protocol SQCatalogQuerySortedAttribute;
@class SQCatalogQuerySortedAttribute;
@protocol SQCatalogQueryText;
@class SQCatalogQueryText;



@protocol SQCatalogQuery
@end

@interface SQCatalogQuery : SQObject

/* A query expression to sort returned query result by the given attribute. [optional]
 */
@property(nonatomic) SQCatalogQuerySortedAttribute* sortedAttributeQuery;
/* An exact query expression to return objects with attribute name and value matching the specified attribute name and value exactly. Value matching is case insensitive. [optional]
 */
@property(nonatomic) SQCatalogQueryExact* exactQuery;
/* A set query expression to return objects with attribute name and value matching the specified attribute name and any of the specified attribute values exactly. Value matching is case insensitive. [optional]
 */
@property(nonatomic) SQCatalogQuerySet* setQuery;
/* A prefix query expression to return objects with attribute values that have a prefix matching the specified string value. Value matching is case insensitive. [optional]
 */
@property(nonatomic) SQCatalogQueryPrefix* prefixQuery;
/* A range query expression to return objects with numeric values that lie in the specified range. [optional]
 */
@property(nonatomic) SQCatalogQueryRange* rangeQuery;
/* A text query expression to return objects whose searchable attributes contain all of the given keywords, irrespective of their order. For example, if a `CatalogItem` contains custom attribute values of `{\"name\": \"t-shirt\"}` and `{\"description\": \"Small, Purple\"}`, the query filter of `{\"keywords\": [\"shirt\", \"sma\", \"purp\"]}` returns this item. [optional]
 */
@property(nonatomic) SQCatalogQueryText* textQuery;
/* A query expression to return items that have any of the specified taxes (as identified by the corresponding `CatalogTax` object IDs) enabled. [optional]
 */
@property(nonatomic) SQCatalogQueryItemsForTax* itemsForTaxQuery;
/* A query expression to return items that have any of the given modifier list (as identified by the corresponding `CatalogModifierList`s IDs) enabled. [optional]
 */
@property(nonatomic) SQCatalogQueryItemsForModifierList* itemsForModifierListQuery;
/* A query expression to return items that contains the specified item options (as identified the corresponding `CatalogItemOption` IDs). [optional]
 */
@property(nonatomic) SQCatalogQueryItemsForItemOptions* itemsForItemOptionsQuery;
/* A query expression to return item variations (of the [CatalogItemVariation](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogItemVariation) type) that contain all of the specified `CatalogItemOption` IDs. [optional]
 */
@property(nonatomic) SQCatalogQueryItemVariationsForItemOptionValues* itemVariationsForItemOptionValuesQuery;

@end