# SQUpdateCustomerRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**givenName** | **NSString*** | The given name (that is, the first name) associated with the customer profile.  The maximum length for this value is 300 characters. | [optional] 
**familyName** | **NSString*** | The family name (that is, the last name) associated with the customer profile.  The maximum length for this value is 300 characters. | [optional] 
**companyName** | **NSString*** | A business name associated with the customer profile.  The maximum length for this value is 500 characters. | [optional] 
**nickname** | **NSString*** | A nickname for the customer profile.  The maximum length for this value is 100 characters. | [optional] 
**emailAddress** | **NSString*** | The email address associated with the customer profile.  The maximum length for this value is 254 characters. | [optional] 
**address** | [**SQAddress***](SQAddress.md) | The physical address associated with the customer profile. Only new or changed fields are required in the request.  For maximum length constraints, see [Customer addresses](https://developer.squareup.com/docs/customers-api/use-the-api/keep-records#address). The &#x60;first_name&#x60; and &#x60;last_name&#x60; fields are ignored if they are present in the request. | [optional] 
**phoneNumber** | **NSString*** | The phone number associated with the customer profile. The phone number must be valid and can contain 9–16 digits, with an optional &#x60;+&#x60; prefix and country code. For more information, see [Customer phone numbers](https://developer.squareup.com/docs/customers-api/use-the-api/keep-records#phone-number). | [optional] 
**referenceId** | **NSString*** | An optional second ID used to associate the customer profile with an entity in another system.  The maximum length for this value is 100 characters. | [optional] 
**note** | **NSString*** | A custom note associated with the customer profile. | [optional] 
**birthday** | **NSString*** | The birthday associated with the customer profile, in &#x60;YYYY-MM-DD&#x60; or &#x60;MM-DD&#x60; format. For example, specify &#x60;1998-09-21&#x60; for September 21, 1998, or &#x60;09-21&#x60; for September 21. Birthdays are returned in &#x60;YYYY-MM-DD&#x60; format, where &#x60;YYYY&#x60; is the specified birth year or &#x60;0000&#x60; if a birth year is not specified. | [optional] 
**version** | **NSNumber*** | The current version of the customer profile.  As a best practice, you should include this field to enable [optimistic concurrency](https://developer.squareup.com/docs/build-basics/common-api-patterns/optimistic-concurrency) control. For more information, see [Update a customer profile](https://developer.squareup.com/docs/customers-api/use-the-api/keep-records#update-a-customer-profile). | [optional] 
**taxIds** | [**SQCustomerTaxIds***](SQCustomerTaxIds.md) | The tax ID associated with the customer profile. This field is available only for customers of sellers in EU countries or the United Kingdom.  In other countries, this field is ignored when included in an &#x60;UpdateCustomer&#x60; request. For more information,  see [Customer tax IDs](https://developer.squareup.com/docs/customers-api/what-it-does#customer-tax-ids). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


