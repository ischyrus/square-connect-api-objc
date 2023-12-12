# SQCustomer

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | A unique Square-assigned ID for the customer profile.  If you need this ID for an API request, use the ID returned when you created the customer profile or call the [SearchCustomers](https://developer.squareup.com/reference/square_2023-10-18/customers-api/search-customers)  or [ListCustomers](https://developer.squareup.com/reference/square_2023-10-18/customers-api/list-customers) endpoint. | [optional] 
**createdAt** | **NSString*** | The timestamp when the customer profile was created, in RFC 3339 format. | [optional] 
**updatedAt** | **NSString*** | The timestamp when the customer profile was last updated, in RFC 3339 format. | [optional] 
**cards** | [**NSArray&lt;SQCard&gt;***](SQCard.md) | Payment details of the credit, debit, and gift cards stored on file for the customer profile.   DEPRECATED at version 2021-06-16. Replaced by calling [ListCards](https://developer.squareup.com/reference/square_2023-10-18/cards-api/list-cards) (for credit and debit cards on file)  or [ListGiftCards](https://developer.squareup.com/reference/square_2023-10-18/gift-cards-api/list-gift-cards) (for gift cards on file) and including the &#x60;customer_id&#x60; query parameter.  For more information, see [Migration notes](https://developer.squareup.com/docs/customers-api/what-it-does#migrate-customer-cards). | [optional] 
**givenName** | **NSString*** | The given name (that is, the first name) associated with the customer profile. | [optional] 
**familyName** | **NSString*** | The family name (that is, the last name) associated with the customer profile. | [optional] 
**nickname** | **NSString*** | A nickname for the customer profile. | [optional] 
**companyName** | **NSString*** | A business name associated with the customer profile. | [optional] 
**emailAddress** | **NSString*** | The email address associated with the customer profile. | [optional] 
**address** | [**SQAddress***](SQAddress.md) | The physical address associated with the customer profile. | [optional] 
**phoneNumber** | **NSString*** | The phone number associated with the customer profile. | [optional] 
**birthday** | **NSString*** | The birthday associated with the customer profile, in &#x60;YYYY-MM-DD&#x60; format. For example, &#x60;1998-09-21&#x60; represents September 21, 1998, and &#x60;0000-09-21&#x60; represents September 21 (without a birth year). | [optional] 
**referenceId** | **NSString*** | An optional second ID used to associate the customer profile with an entity in another system. | [optional] 
**note** | **NSString*** | A custom note associated with the customer profile. | [optional] 
**preferences** | [**SQCustomerPreferences***](SQCustomerPreferences.md) | Represents general customer preferences. | [optional] 
**creationSource** | **NSString*** | The method used to create the customer profile. | [optional] 
**groupIds** | **NSArray&lt;NSString*&gt;*** | The IDs of [customer groups](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomerGroup) the customer belongs to. | [optional] 
**segmentIds** | **NSArray&lt;NSString*&gt;*** | The IDs of [customer segments](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomerSegment) the customer belongs to. | [optional] 
**version** | **NSNumber*** | The Square-assigned version number of the customer profile. The version number is incremented each time an update is committed to the customer profile, except for changes to customer segment membership and cards on file. | [optional] 
**taxIds** | [**SQTaxIds***](SQTaxIds.md) | The tax ID associated with the customer profile. This field is present only for customers of sellers in EU countries or the United Kingdom.  For more information, see [Customer tax IDs](https://developer.squareup.com/docs/customers-api/what-it-does#customer-tax-ids). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


