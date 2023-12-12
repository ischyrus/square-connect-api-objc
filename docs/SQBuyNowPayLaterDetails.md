# SQBuyNowPayLaterDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**brand** | **NSString*** | The brand used for the Buy Now Pay Later payment. The brand can be &#x60;AFTERPAY&#x60;, &#x60;CLEARPAY&#x60; or &#x60;UNKNOWN&#x60;. | [optional] 
**afterpayDetails** | [**SQAfterpayDetails***](SQAfterpayDetails.md) | Details about an Afterpay payment. These details are only populated if the &#x60;brand&#x60; is &#x60;AFTERPAY&#x60;. | [optional] 
**clearpayDetails** | [**SQClearpayDetails***](SQClearpayDetails.md) | Details about a Clearpay payment. These details are only populated if the &#x60;brand&#x60; is &#x60;CLEARPAY&#x60;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


