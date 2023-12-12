# SQCatalogQuery

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sortedAttributeQuery** | [**SQCatalogQuerySortedAttribute***](SQCatalogQuerySortedAttribute.md) | A query expression to sort returned query result by the given attribute. | [optional] 
**exactQuery** | [**SQCatalogQueryExact***](SQCatalogQueryExact.md) | An exact query expression to return objects with attribute name and value matching the specified attribute name and value exactly. Value matching is case insensitive. | [optional] 
**setQuery** | [**SQCatalogQuerySet***](SQCatalogQuerySet.md) | A set query expression to return objects with attribute name and value matching the specified attribute name and any of the specified attribute values exactly. Value matching is case insensitive. | [optional] 
**prefixQuery** | [**SQCatalogQueryPrefix***](SQCatalogQueryPrefix.md) | A prefix query expression to return objects with attribute values that have a prefix matching the specified string value. Value matching is case insensitive. | [optional] 
**rangeQuery** | [**SQCatalogQueryRange***](SQCatalogQueryRange.md) | A range query expression to return objects with numeric values that lie in the specified range. | [optional] 
**textQuery** | [**SQCatalogQueryText***](SQCatalogQueryText.md) | A text query expression to return objects whose searchable attributes contain all of the given keywords, irrespective of their order. For example, if a &#x60;CatalogItem&#x60; contains custom attribute values of &#x60;{\&quot;name\&quot;: \&quot;t-shirt\&quot;}&#x60; and &#x60;{\&quot;description\&quot;: \&quot;Small, Purple\&quot;}&#x60;, the query filter of &#x60;{\&quot;keywords\&quot;: [\&quot;shirt\&quot;, \&quot;sma\&quot;, \&quot;purp\&quot;]}&#x60; returns this item. | [optional] 
**itemsForTaxQuery** | [**SQCatalogQueryItemsForTax***](SQCatalogQueryItemsForTax.md) | A query expression to return items that have any of the specified taxes (as identified by the corresponding &#x60;CatalogTax&#x60; object IDs) enabled. | [optional] 
**itemsForModifierListQuery** | [**SQCatalogQueryItemsForModifierList***](SQCatalogQueryItemsForModifierList.md) | A query expression to return items that have any of the given modifier list (as identified by the corresponding &#x60;CatalogModifierList&#x60;s IDs) enabled. | [optional] 
**itemsForItemOptionsQuery** | [**SQCatalogQueryItemsForItemOptions***](SQCatalogQueryItemsForItemOptions.md) | A query expression to return items that contains the specified item options (as identified the corresponding &#x60;CatalogItemOption&#x60; IDs). | [optional] 
**itemVariationsForItemOptionValuesQuery** | [**SQCatalogQueryItemVariationsForItemOptionValues***](SQCatalogQueryItemVariationsForItemOptionValues.md) | A query expression to return item variations (of the [CatalogItemVariation](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogItemVariation) type) that contain all of the specified &#x60;CatalogItemOption&#x60; IDs. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


