# SQInventoryCount

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**catalogObjectId** | **NSString*** | The Square-generated ID of the [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject) being tracked. | [optional] 
**catalogObjectType** | **NSString*** | The [type](https://developer.squareup.com/reference/square_2023-10-18/enums/CatalogObjectType) of the [CatalogObject](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogObject) being tracked.   The Inventory API supports setting and reading the &#x60;\&quot;catalog_object_type\&quot;: \&quot;ITEM_VARIATION\&quot;&#x60; field value.  In addition, it can also read the &#x60;\&quot;catalog_object_type\&quot;: \&quot;ITEM\&quot;&#x60; field value that is set by the Square Restaurants app. | [optional] 
**state** | **NSString*** | The current [inventory state](https://developer.squareup.com/reference/square_2023-10-18/enums/InventoryState) for the related quantity of items. | [optional] 
**locationId** | **NSString*** | The Square-generated ID of the [Location](https://developer.squareup.com/reference/square_2023-10-18/objects/Location) where the related quantity of items is being tracked. | [optional] 
**quantity** | **NSString*** | The number of items affected by the estimated count as a decimal string. Can support up to 5 digits after the decimal point. | [optional] 
**calculatedAt** | **NSString*** | An RFC 3339-formatted timestamp that indicates when the most recent physical count or adjustment affecting the estimated count is received. | [optional] 
**isEstimated** | **NSNumber*** | Whether the inventory count is for composed variation (TRUE) or not (FALSE). If true, the inventory count will not be present in the response of any of these endpoints: [BatchChangeInventory](https://developer.squareup.com/reference/square_2023-10-18/inventory-api/batch-change-inventory), [BatchRetrieveInventoryChanges](https://developer.squareup.com/reference/square_2023-10-18/inventory-api/batch-retrieve-inventory-changes), [BatchRetrieveInventoryCounts](https://developer.squareup.com/reference/square_2023-10-18/inventory-api/batch-retrieve-inventory-counts), and [RetrieveInventoryChanges](https://developer.squareup.com/reference/square_2023-10-18/inventory-api/retrieve-inventory-changes). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


