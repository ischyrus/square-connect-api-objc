# SQFulfillmentRecipient

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customerId** | **NSString*** | The ID of the customer associated with the fulfillment.  If &#x60;customer_id&#x60; is provided, the fulfillment recipient&#39;s &#x60;display_name&#x60;, &#x60;email_address&#x60;, and &#x60;phone_number&#x60; are automatically populated from the targeted customer profile. If these fields are set in the request, the request values override the information from the customer profile. If the targeted customer profile does not contain the necessary information and these fields are left unset, the request results in an error. | [optional] 
**displayName** | **NSString*** | The display name of the fulfillment recipient. This field is required.  If provided, the display name overrides the corresponding customer profile value indicated by &#x60;customer_id&#x60;. | [optional] 
**emailAddress** | **NSString*** | The email address of the fulfillment recipient.  If provided, the email address overrides the corresponding customer profile value indicated by &#x60;customer_id&#x60;. | [optional] 
**phoneNumber** | **NSString*** | The phone number of the fulfillment recipient. This field is required.  If provided, the phone number overrides the corresponding customer profile value indicated by &#x60;customer_id&#x60;. | [optional] 
**address** | [**SQAddress***](SQAddress.md) | The address of the fulfillment recipient. This field is required.  If provided, the address overrides the corresponding customer profile value indicated by &#x60;customer_id&#x60;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


