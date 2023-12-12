# SQModifierLocationOverrides

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**locationId** | **NSString*** | The ID of the &#x60;Location&#x60; object representing the location. This can include a deactivated location. | [optional] 
**priceMoney** | [**SQMoney***](SQMoney.md) | The overridden price at the specified location. If this is unspecified, the modifier price is not overridden. The modifier becomes free of charge at the specified location, when this &#x60;price_money&#x60; field is set to 0. | [optional] 
**soldOut** | **NSNumber*** | Indicates whether the modifier is sold out at the specified location or not. As an example, for cheese (modifier) burger (item), when the modifier is sold out, it is the cheese, but not the burger, that is sold out. The seller can manually set this sold out status. Attempts by an application to set this attribute are ignored. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


