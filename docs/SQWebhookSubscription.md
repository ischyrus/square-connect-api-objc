# SQWebhookSubscription

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | A Square-generated unique ID for the subscription. | [optional] 
**name** | **NSString*** | The name of this subscription. | [optional] 
**enabled** | **NSNumber*** | Indicates whether the subscription is enabled (&#x60;true&#x60;) or not (&#x60;false&#x60;). | [optional] 
**eventTypes** | **NSArray&lt;NSString*&gt;*** | The event types associated with this subscription. | [optional] 
**notificationUrl** | **NSString*** | The URL to which webhooks are sent. | [optional] 
**apiVersion** | **NSString*** | The API version of the subscription. This field is optional for &#x60;CreateWebhookSubscription&#x60;.  The value defaults to the API version used by the application. | [optional] 
**signatureKey** | **NSString*** | The Square-generated signature key used to validate the origin of the webhook event. | [optional] 
**createdAt** | **NSString*** | The timestamp of when the subscription was created, in RFC 3339 format. For example, \&quot;2016-09-04T23:59:33.123Z\&quot;. | [optional] 
**updatedAt** | **NSString*** | The timestamp of when the subscription was last updated, in RFC 3339 format. For example, \&quot;2016-09-04T23:59:33.123Z\&quot;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


