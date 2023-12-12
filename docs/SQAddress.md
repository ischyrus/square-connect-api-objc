# SQAddress

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**addressLine1** | **NSString*** | The first line of the address.  Fields that start with &#x60;address_line&#x60; provide the address&#39;s most specific details, like street number, street name, and building name. They do *not* provide less specific details like city, state/province, or country (these details are provided in other fields). | [optional] 
**addressLine2** | **NSString*** | The second line of the address, if any. | [optional] 
**addressLine3** | **NSString*** | The third line of the address, if any. | [optional] 
**locality** | **NSString*** | The city or town of the address. For a full list of field meanings by country, see [Working with Addresses](https://developer.squareup.com/docs/build-basics/working-with-addresses). | [optional] 
**sublocality** | **NSString*** | A civil region within the address&#39;s &#x60;locality&#x60;, if any. | [optional] 
**sublocality2** | **NSString*** | A civil region within the address&#39;s &#x60;sublocality&#x60;, if any. | [optional] 
**sublocality3** | **NSString*** | A civil region within the address&#39;s &#x60;sublocality_2&#x60;, if any. | [optional] 
**administrativeDistrictLevel1** | **NSString*** | A civil entity within the address&#39;s country. In the US, this is the state. For a full list of field meanings by country, see [Working with Addresses](https://developer.squareup.com/docs/build-basics/working-with-addresses). | [optional] 
**administrativeDistrictLevel2** | **NSString*** | A civil entity within the address&#39;s &#x60;administrative_district_level_1&#x60;. In the US, this is the county. | [optional] 
**administrativeDistrictLevel3** | **NSString*** | A civil entity within the address&#39;s &#x60;administrative_district_level_2&#x60;, if any. | [optional] 
**postalCode** | **NSString*** | The address&#39;s postal code. For a full list of field meanings by country, see [Working with Addresses](https://developer.squareup.com/docs/build-basics/working-with-addresses). | [optional] 
**country** | **NSString*** | The address&#39;s country, in the two-letter format of ISO 3166. For example, &#x60;US&#x60; or &#x60;FR&#x60;. | [optional] 
**firstName** | **NSString*** | Optional first name when it&#39;s representing recipient. | [optional] 
**lastName** | **NSString*** | Optional last name when it&#39;s representing recipient. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


