# SQOrderReturnLineItemModifier

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uid** | **NSString*** | A unique ID that identifies the return modifier only within this order. | [optional] 
**sourceModifierUid** | **NSString*** | The modifier &#x60;uid&#x60; from the order&#39;s line item that contains the original sale of this line item modifier. | [optional] 
**catalogObjectId** | **NSString*** | The catalog object ID referencing [CatalogModifier](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogModifier). | [optional] 
**catalogVersion** | **NSNumber*** | The version of the catalog object that this line item modifier references. | [optional] 
**name** | **NSString*** | The name of the item modifier. | [optional] 
**basePriceMoney** | [**SQMoney***](SQMoney.md) | The base price for the modifier.  &#x60;base_price_money&#x60; is required for ad hoc modifiers. If both &#x60;catalog_object_id&#x60; and &#x60;base_price_money&#x60; are set, &#x60;base_price_money&#x60; overrides the predefined [CatalogModifier](https://developer.squareup.com/reference/square_2023-10-18/objects/CatalogModifier) price. | [optional] 
**totalPriceMoney** | [**SQMoney***](SQMoney.md) | The total price of the item modifier for its line item. This is the modifier&#39;s &#x60;base_price_money&#x60; multiplied by the line item&#39;s quantity. | [optional] 
**quantity** | **NSString*** | The quantity of the line item modifier. The modifier quantity can be 0 or more. For example, suppose a restaurant offers a cheeseburger on the menu. When a buyer orders this item, the restaurant records the purchase by creating an &#x60;Order&#x60; object with a line item for a burger. The line item includes a line item modifier: the name is cheese and the quantity is 1. The buyer has the option to order extra cheese (or no cheese). If the buyer chooses the extra cheese option, the modifier quantity increases to 2. If the buyer does not want any cheese, the modifier quantity is set to 0. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


