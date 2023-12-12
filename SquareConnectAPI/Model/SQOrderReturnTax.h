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


#import "SQMoney.h"
@protocol SQMoney;
@class SQMoney;



@protocol SQOrderReturnTax
@end

@interface SQOrderReturnTax : SQObject

/* A unique ID that identifies the returned tax only within this order. [optional]
 */
@property(nonatomic) NSString* uid;
/* The tax `uid` from the order that contains the original tax charge. [optional]
 */
@property(nonatomic) NSString* sourceTaxUid;
/* The catalog object ID referencing [CatalogTax](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogTax). [optional]
 */
@property(nonatomic) NSString* catalogObjectId;
/* The version of the catalog object that this tax references. [optional]
 */
@property(nonatomic) NSNumber* catalogVersion;
/* The tax's name. [optional]
 */
@property(nonatomic) NSString* name;
/* Indicates the calculation method used to apply the tax. [optional]
 */
@property(nonatomic) NSString* type;
/* The percentage of the tax, as a string representation of a decimal number. For example, a value of `\"7.25\"` corresponds to a percentage of 7.25%. [optional]
 */
@property(nonatomic) NSString* percentage;
/* The amount of money applied by the tax in an order. [optional]
 */
@property(nonatomic) SQMoney* appliedMoney;
/* Indicates the level at which the `OrderReturnTax` applies. For `ORDER` scoped taxes, Square generates references in `applied_taxes` on all `OrderReturnLineItem`s. For `LINE_ITEM` scoped taxes, the tax is only applied to `OrderReturnLineItem`s with references in their `applied_discounts` field. [optional]
 */
@property(nonatomic) NSString* scope;

@end