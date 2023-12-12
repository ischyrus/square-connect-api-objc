# SQSubscriptionPhase

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uid** | **NSString*** | The Square-assigned ID of the subscription phase. This field cannot be changed after a &#x60;SubscriptionPhase&#x60; is created. | [optional] 
**cadence** | **NSString*** | The billing cadence of the phase. For example, weekly or monthly. This field cannot be changed after a &#x60;SubscriptionPhase&#x60; is created. | 
**periods** | **NSNumber*** | The number of &#x60;cadence&#x60;s the phase lasts. If not set, the phase never ends. Only the last phase can be indefinite. This field cannot be changed after a &#x60;SubscriptionPhase&#x60; is created. | [optional] 
**recurringPriceMoney** | [**SQMoney***](SQMoney.md) | The amount to bill for each &#x60;cadence&#x60;. Failure to specify this field results in a &#x60;MISSING_REQUIRED_PARAMETER&#x60; error at runtime. | [optional] 
**ordinal** | **NSNumber*** | The position this phase appears in the sequence of phases defined for the plan, indexed from 0. This field cannot be changed after a &#x60;SubscriptionPhase&#x60; is created. | [optional] 
**pricing** | [**SQSubscriptionPricing***](SQSubscriptionPricing.md) | The subscription pricing. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


