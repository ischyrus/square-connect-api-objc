# SQUpdateItemTaxesRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**itemIds** | **NSArray&lt;NSString*&gt;*** | IDs for the CatalogItems associated with the CatalogTax objects being updated. No more than 1,000 IDs may be provided. | 
**taxesToEnable** | **NSArray&lt;NSString*&gt;*** | IDs of the CatalogTax objects to enable. At least one of &#x60;taxes_to_enable&#x60; or &#x60;taxes_to_disable&#x60; must be specified. | [optional] 
**taxesToDisable** | **NSArray&lt;NSString*&gt;*** | IDs of the CatalogTax objects to disable. At least one of &#x60;taxes_to_enable&#x60; or &#x60;taxes_to_disable&#x60; must be specified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


