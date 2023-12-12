# SQGiftCard

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | The Square-assigned ID of the gift card. | [optional] 
**type** | **NSString*** | The gift card type. | 
**ganSource** | **NSString*** | The source that generated the gift card account number (GAN). The default value is &#x60;SQUARE&#x60;. | [optional] 
**state** | **NSString*** | The current gift card state. | [optional] 
**balanceMoney** | [**SQMoney***](SQMoney.md) | The current gift card balance. This balance is always greater than or equal to zero. | [optional] 
**gan** | **NSString*** | The gift card account number (GAN). Buyers can use the GAN to make purchases or check  the gift card balance. | [optional] 
**createdAt** | **NSString*** | The timestamp when the gift card was created, in RFC 3339 format.  In the case of a digital gift card, it is the time when you create a card  (using the Square Point of Sale application, Seller Dashboard, or Gift Cards API).   In the case of a plastic gift card, it is the time when Square associates the card with the  seller at the time of activation. | [optional] 
**customerIds** | **NSArray&lt;NSString*&gt;*** | The IDs of the [customer profiles](https://developer.squareup.com/reference/square_2023-10-18/objects/Customer) to whom this gift card is linked. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


