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



@protocol SQOrderLineItemModifier
@end

@interface SQOrderLineItemModifier : SQObject

/* A unique ID that identifies the modifier only within this order. [optional]
 */
@property(nonatomic) NSString* uid;
/* The catalog object ID referencing [CatalogModifier](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogModifier). [optional]
 */
@property(nonatomic) NSString* catalogObjectId;
/* The version of the catalog object that this modifier references. [optional]
 */
@property(nonatomic) NSNumber* catalogVersion;
/* The name of the item modifier. [optional]
 */
@property(nonatomic) NSString* name;
/* The quantity of the line item modifier. The modifier quantity can be 0 or more. For example, suppose a restaurant offers a cheeseburger on the menu. When a buyer orders this item, the restaurant records the purchase by creating an `Order` object with a line item for a burger. The line item includes a line item modifier: the name is cheese and the quantity is 1. The buyer has the option to order extra cheese (or no cheese). If the buyer chooses the extra cheese option, the modifier quantity increases to 2. If the buyer does not want any cheese, the modifier quantity is set to 0. [optional]
 */
@property(nonatomic) NSString* quantity;
/* The base price for the modifier.  `base_price_money` is required for ad hoc modifiers. If both `catalog_object_id` and `base_price_money` are set, `base_price_money` will override the predefined [CatalogModifier](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogModifier) price. [optional]
 */
@property(nonatomic) SQMoney* basePriceMoney;
/* The total price of the item modifier for its line item. This is the modifier's `base_price_money` multiplied by the line item's quantity. [optional]
 */
@property(nonatomic) SQMoney* totalPriceMoney;
/* Application-defined data attached to this order. Metadata fields are intended to store descriptive references or associations with an entity in another system or store brief information about the object. Square does not process this field; it only stores and returns it in relevant API calls. Do not use metadata to store any sensitive information (such as personally identifiable information or card details).  Keys written by applications must be 60 characters or less and must be in the character set `[a-zA-Z0-9_-]`. Entries can also include metadata generated by Square. These keys are prefixed with a namespace, separated from the key with a ':' character.  Values have a maximum length of 255 characters.  An application can have up to 10 entries per metadata field.  Entries written by applications are private and can only be read or modified by the same application.  For more information, see  [Metadata](https://developer.squareup.com/docs/build-basics/metadata). [optional]
 */
@property(nonatomic) NSDictionary<NSString*, NSString*>* metadata;

@end