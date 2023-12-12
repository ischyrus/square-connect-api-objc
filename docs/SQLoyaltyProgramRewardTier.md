# SQLoyaltyProgramRewardTier

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | The Square-assigned ID of the reward tier. | [optional] 
**points** | **NSNumber*** | The points exchanged for the reward tier. | 
**name** | **NSString*** | The name of the reward tier. | [optional] 
**definition** | [**SQLoyaltyProgramRewardDefinition***](SQLoyaltyProgramRewardDefinition.md) | Provides details about the reward tier definition. DEPRECATED at version 2020-12-16. Replaced by the &#x60;pricing_rule_reference&#x60; field. | [optional] 
**createdAt** | **NSString*** | The timestamp when the reward tier was created, in RFC 3339 format. | [optional] 
**pricingRuleReference** | [**SQCatalogObjectReference***](SQCatalogObjectReference.md) | A reference to the specific version of a &#x60;PRICING_RULE&#x60; catalog object that contains information about the reward tier discount.  Use &#x60;object_id&#x60; and &#x60;catalog_version&#x60; with the [RetrieveCatalogObject](https://developer.squareup.com/reference/square_2023-10-18/catalog-api/retrieve-catalog-object) endpoint to get discount details. Make sure to set &#x60;include_related_objects&#x60; to true in the request to retrieve all catalog objects that define the discount. For more information, see [Getting discount details for a reward tier](https://developer.squareup.com/docs/loyalty-api/loyalty-rewards#get-discount-details). | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


