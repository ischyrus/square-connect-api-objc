# SQCreateGiftCardRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**idempotencyKey** | **NSString*** | A unique identifier for this request, used to ensure idempotency. For more information,  see [Idempotency](https://developer.squareup.com/docs/build-basics/common-api-patterns/idempotency). | 
**locationId** | **NSString*** | The ID of the [location](https://developer.squareup.com/reference/square_2023-10-18/objects/Location) where the gift card should be registered for  reporting purposes. Gift cards can be redeemed at any of the seller&#39;s locations. | 
**giftCard** | [**SQGiftCard***](SQGiftCard.md) | The gift card to create. The &#x60;type&#x60; field is required for this request. The &#x60;gan_source&#x60;  and &#x60;gan&#x60; fields are included as follows:   To direct Square to generate a 16-digit GAN, omit &#x60;gan_source&#x60; and &#x60;gan&#x60;.  To provide a custom GAN, include &#x60;gan_source&#x60; and &#x60;gan&#x60;. - For &#x60;gan_source&#x60;, specify &#x60;OTHER&#x60;.  - For &#x60;gan&#x60;, provide a custom GAN containing 8 to 20 alphanumeric characters. The GAN must be  unique for the seller and cannot start with the same bank identification number (BIN) as major  credit cards. Do not use GANs that are easy to guess (such as 12345678) because they greatly  increase the risk of fraud. It is the responsibility of the developer to ensure the security  of their custom GANs. For more information, see  [Custom GANs](https://developer.squareup.com/docs/gift-cards/using-gift-cards-api#custom-gans).   To register an unused, physical gift card that the seller previously ordered from Square,  include &#x60;gan&#x60; and provide the GAN that is printed on the gift card. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


