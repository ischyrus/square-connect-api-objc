# SQSearchCatalogItemsRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**textFilter** | **NSString*** | The text filter expression to return items or item variations containing specified text in the &#x60;name&#x60;, &#x60;description&#x60;, or &#x60;abbreviation&#x60; attribute value of an item, or in the &#x60;name&#x60;, &#x60;sku&#x60;, or &#x60;upc&#x60; attribute value of an item variation. | [optional] 
**categoryIds** | **NSArray&lt;NSString*&gt;*** | The category id query expression to return items containing the specified category IDs. | [optional] 
**stockLevels** | **NSArray&lt;NSString*&gt;*** | The stock-level query expression to return item variations with the specified stock levels. | [optional] 
**enabledLocationIds** | **NSArray&lt;NSString*&gt;*** | The enabled-location query expression to return items and item variations having specified enabled locations. | [optional] 
**cursor** | **NSString*** | The pagination token, returned in the previous response, used to fetch the next batch of pending results. | [optional] 
**limit** | **NSNumber*** | The maximum number of results to return per page. The default value is 100. | [optional] 
**sortOrder** | **NSString*** | The order to sort the results by item names. The default sort order is ascending (&#x60;ASC&#x60;). | [optional] 
**productTypes** | **NSArray&lt;NSString*&gt;*** | The product types query expression to return items or item variations having the specified product types. | [optional] 
**customAttributeFilters** | [**NSArray&lt;SQCustomAttributeFilter&gt;***](SQCustomAttributeFilter.md) | The customer-attribute filter to return items or item variations matching the specified custom attribute expressions. A maximum number of 10 custom attribute expressions are supported in a single call to the [SearchCatalogItems](https://developer.squareup.com/reference/square_2023-10-18/catalog-api/search-catalog-items) endpoint. | [optional] 
**archivedState** | **NSString*** | The query filter to return not archived (&#x60;ARCHIVED_STATE_NOT_ARCHIVED&#x60;), archived (&#x60;ARCHIVED_STATE_ARCHIVED&#x60;), or either type (&#x60;ARCHIVED_STATE_ALL&#x60;) of items. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


