# SQCreateGiftCardActivityRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**idempotencyKey** | **NSString*** | A unique string that identifies the &#x60;CreateGiftCardActivity&#x60; request. | 
**giftCardActivity** | [**SQGiftCardActivity***](SQGiftCardActivity.md) | The activity to create for the gift card. This activity must specify &#x60;gift_card_id&#x60; or &#x60;gift_card_gan&#x60; for the target gift card, the &#x60;location_id&#x60; where the activity occurred, and the activity &#x60;type&#x60; along with the corresponding activity details. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


