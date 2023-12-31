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


#import "SQCatalogItemOptionValueForItemVariation.h"
#import "SQCatalogStockConversion.h"
#import "SQItemVariationLocationOverrides.h"
#import "SQMoney.h"
@protocol SQCatalogItemOptionValueForItemVariation;
@class SQCatalogItemOptionValueForItemVariation;
@protocol SQCatalogStockConversion;
@class SQCatalogStockConversion;
@protocol SQItemVariationLocationOverrides;
@class SQItemVariationLocationOverrides;
@protocol SQMoney;
@class SQMoney;



@protocol SQCatalogItemVariation
@end

@interface SQCatalogItemVariation : SQObject

/* The ID of the `CatalogItem` associated with this item variation. [optional]
 */
@property(nonatomic) NSString* itemId;
/* The item variation's name. This is a searchable attribute for use in applicable query filters, and its value length is of Unicode code points. [optional]
 */
@property(nonatomic) NSString* name;
/* The item variation's SKU, if any. This is a searchable attribute for use in applicable query filters. [optional]
 */
@property(nonatomic) NSString* sku;
/* The universal product code (UPC) of the item variation, if any. This is a searchable attribute for use in applicable query filters.  The value of this attribute should be a number of 12-14 digits long.  This restriction is enforced on the Square Seller Dashboard, Square Point of Sale or Retail Point of Sale apps, where this attribute shows in the GTIN field. If a non-compliant UPC value is assigned to this attribute using the API, the value is not editable on the Seller Dashboard, Square Point of Sale or Retail Point of Sale apps unless it is updated to fit the expected format. [optional]
 */
@property(nonatomic) NSString* upc;
/* The order in which this item variation should be displayed. This value is read-only. On writes, the ordinal for each item variation within a parent `CatalogItem` is set according to the item variations's position. On reads, the value is not guaranteed to be sequential or unique. [optional]
 */
@property(nonatomic) NSNumber* ordinal;
/* Indicates whether the item variation's price is fixed or determined at the time of sale. [optional]
 */
@property(nonatomic) NSString* pricingType;
/* The item variation's price, if fixed pricing is used. [optional]
 */
@property(nonatomic) SQMoney* priceMoney;
/* Per-location price and inventory overrides. [optional]
 */
@property(nonatomic) NSArray<SQItemVariationLocationOverrides>* locationOverrides;
/* If `true`, inventory tracking is active for the variation. [optional]
 */
@property(nonatomic) NSNumber* trackInventory;
/* Indicates whether the item variation displays an alert when its inventory quantity is less than or equal to its `inventory_alert_threshold`. [optional]
 */
@property(nonatomic) NSString* inventoryAlertType;
/* If the inventory quantity for the variation is less than or equal to this value and `inventory_alert_type` is `LOW_QUANTITY`, the variation displays an alert in the merchant dashboard.  This value is always an integer. [optional]
 */
@property(nonatomic) NSNumber* inventoryAlertThreshold;
/* Arbitrary user metadata to associate with the item variation. This attribute value length is of Unicode code points. [optional]
 */
@property(nonatomic) NSString* userData;
/* If the `CatalogItem` that owns this item variation is of type `APPOINTMENTS_SERVICE`, then this is the duration of the service in milliseconds. For example, a 30 minute appointment would have the value `1800000`, which is equal to 30 (minutes) * 60 (seconds per minute) * 1000 (milliseconds per second). [optional]
 */
@property(nonatomic) NSNumber* serviceDuration;
/* If the `CatalogItem` that owns this item variation is of type `APPOINTMENTS_SERVICE`, a bool representing whether this service is available for booking. [optional]
 */
@property(nonatomic) NSNumber* availableForBooking;
/* List of item option values associated with this item variation. Listed in the same order as the item options of the parent item. [optional]
 */
@property(nonatomic) NSArray<SQCatalogItemOptionValueForItemVariation>* itemOptionValues;
/* ID of the ‘CatalogMeasurementUnit’ that is used to measure the quantity sold of this item variation. If left unset, the item will be sold in whole quantities. [optional]
 */
@property(nonatomic) NSString* measurementUnitId;
/* Whether this variation can be sold. The inventory count of a sellable variation indicates the number of units available for sale. When a variation is both stockable and sellable, its sellable inventory count can be smaller than or equal to its stockable count. [optional]
 */
@property(nonatomic) NSNumber* sellable;
/* Whether stock is counted directly on this variation (TRUE) or only on its components (FALSE). When a variation is both stockable and sellable, the inventory count of a stockable variation keeps track of the number of units of this variation in stock and is not an indicator of the number of units of the variation that can be sold. [optional]
 */
@property(nonatomic) NSNumber* stockable;
/* The IDs of images associated with this `CatalogItemVariation` instance. These images will be shown to customers in Square Online Store. [optional]
 */
@property(nonatomic) NSArray<NSString*>* imageIds;
/* Tokens of employees that can perform the service represented by this variation. Only valid for variations of type `APPOINTMENTS_SERVICE`. [optional]
 */
@property(nonatomic) NSArray<NSString*>* teamMemberIds;
/* The unit conversion rule, as prescribed by the [CatalogStockConversion](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogStockConversion) type, that describes how this non-stockable (i.e., sellable/receivable) item variation is converted to/from the stockable item variation sharing the same parent item. With the stock conversion, you can accurately track inventory when an item variation is sold in one unit, but stocked in another unit. [optional]
 */
@property(nonatomic) SQCatalogStockConversion* stockableConversion;

@end
