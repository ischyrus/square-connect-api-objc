# SQInventoryChange

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **NSString*** | Indicates how the inventory change is applied. See [InventoryChangeType](https://developer.squareup.com/reference/square_2023-10-18/enums/InventoryChangeType) for all possible values. | [optional] 
**physicalCount** | [**SQInventoryPhysicalCount***](SQInventoryPhysicalCount.md) | Contains details about the physical count when &#x60;type&#x60; is &#x60;PHYSICAL_COUNT&#x60;, and is unset for all other change types. | [optional] 
**adjustment** | [**SQInventoryAdjustment***](SQInventoryAdjustment.md) | Contains details about the inventory adjustment when &#x60;type&#x60; is &#x60;ADJUSTMENT&#x60;, and is unset for all other change types. | [optional] 
**transfer** | [**SQInventoryTransfer***](SQInventoryTransfer.md) | Contains details about the inventory transfer when &#x60;type&#x60; is &#x60;TRANSFER&#x60;, and is unset for all other change types.  _Note:_ An [InventoryTransfer](https://developer.squareup.com/reference/square_2023-10-18/objects/InventoryTransfer) object can only be set in the input to the [BatchChangeInventory](https://developer.squareup.com/reference/square_2023-10-18/inventory-api/batch-change-inventory) endpoint when the seller has an active Retail Plus subscription. | [optional] 
**measurementUnit** | [**SQCatalogMeasurementUnit***](SQCatalogMeasurementUnit.md) | The [CatalogMeasurementUnit](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogMeasurementUnit) object representing the catalog measurement unit associated with the inventory change. | [optional] 
**measurementUnitId** | **NSString*** | The ID of the [CatalogMeasurementUnit](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogMeasurementUnit) object representing the catalog measurement unit associated with the inventory change. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


