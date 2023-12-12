# SQLocation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | A short generated string of letters and numbers that uniquely identifies this location instance. | [optional] 
**name** | **NSString*** | The name of the location. This information appears in the Seller Dashboard as the nickname. A location name must be unique within a seller account. | [optional] 
**address** | [**SQAddress***](SQAddress.md) | The physical address of the location. | [optional] 
**timezone** | **NSString*** | The [IANA time zone](https://www.iana.org/time-zones) identifier for the time zone of the location. For example, &#x60;America/Los_Angeles&#x60;. | [optional] 
**capabilities** | **NSArray&lt;NSString*&gt;*** | The Square features that are enabled for the location. See [LocationCapability](https://developer.squareup.com/reference/square_2023-10-18/enums/LocationCapability) for possible values. | [optional] 
**status** | **NSString*** | The status of the location. | [optional] 
**createdAt** | **NSString*** | The time when the location was created, in RFC 3339 format. For more information, see [Working with Dates](https://developer.squareup.com/docs/build-basics/working-with-dates). | [optional] 
**merchantId** | **NSString*** | The ID of the merchant that owns the location. | [optional] 
**country** | **NSString*** | The country of the location, in the two-letter format of ISO 3166. For example, &#x60;US&#x60; or &#x60;JP&#x60;.  See [Country](https://developer.squareup.com/reference/square_2023-10-18/enums/Country) for possible values. | [optional] 
**languageCode** | **NSString*** | The language associated with the location, in [BCP 47 format](https://tools.ietf.org/html/bcp47#appendix-A). For more information, see [Language Preferences](https://developer.squareup.com/docs/build-basics/general-considerations/language-preferences). | [optional] 
**currency** | **NSString*** | The currency used for all transactions at this location, in ISO 4217 format. For example, the currency code for US dollars is &#x60;USD&#x60;. See [Currency](https://developer.squareup.com/reference/square_2023-10-18/enums/Currency) for possible values. | [optional] 
**phoneNumber** | **NSString*** | The phone number of the location. For example, &#x60;+1 855-700-6000&#x60;. | [optional] 
**businessName** | **NSString*** | The name of the location&#39;s overall business. This name is present on receipts and other customer-facing branding, and can be changed no more than three times in a twelve-month period. | [optional] 
**type** | **NSString*** | The type of the location. | [optional] 
**websiteUrl** | **NSString*** | The website URL of the location.  For example, &#x60;https://squareup.com&#x60;. | [optional] 
**businessHours** | [**SQBusinessHours***](SQBusinessHours.md) | The hours of operation for the location. | [optional] 
**businessEmail** | **NSString*** | The email address of the location. This can be unique to the location and is not always the email address for the business owner or administrator. | [optional] 
**_description** | **NSString*** | The description of the location. For example, &#x60;Main Street location&#x60;. | [optional] 
**twitterUsername** | **NSString*** | The Twitter username of the location without the &#39;&amp;#64;&#39; symbol. For example, &#x60;Square&#x60;. | [optional] 
**instagramUsername** | **NSString*** | The Instagram username of the location without the &#39;&amp;#64;&#39; symbol. For example, &#x60;square&#x60;. | [optional] 
**facebookUrl** | **NSString*** | The Facebook profile URL of the location. The URL should begin with &#39;facebook.com/&#39;. For example, &#x60;https://www.facebook.com/square&#x60;. | [optional] 
**coordinates** | [**SQCoordinates***](SQCoordinates.md) | The physical coordinates (latitude and longitude) of the location. | [optional] 
**logoUrl** | **NSString*** | The URL of the logo image for the location. When configured in the Seller Dashboard (Receipts section), the logo appears on transactions (such as receipts and invoices) that Square generates on behalf of the seller. This image should have a roughly square (1:1) aspect ratio and should be at least 200x200 pixels. | [optional] 
**posBackgroundUrl** | **NSString*** | The URL of the Point of Sale background image for the location. | [optional] 
**mcc** | **NSString*** | A four-digit number that describes the kind of goods or services sold at the location. The [merchant category code (MCC)](https://developer.squareup.com/docs/locations-api#initialize-a-merchant-category-code) of the location as standardized by ISO 18245. For example, &#x60;5045&#x60;, for a location that sells computer goods and software. | [optional] 
**fullFormatLogoUrl** | **NSString*** | The URL of a full-format logo image for the location. When configured in the Seller Dashboard (Receipts section), the logo appears on transactions (such as receipts and invoices) that Square generates on behalf of the seller. This image can be wider than it is tall and should be at least 1280x648 pixels. | [optional] 
**taxIds** | [**SQTaxIds***](SQTaxIds.md) | The tax IDs for this location. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


