# SQFulfillmentShipmentDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**recipient** | [**SQFulfillmentRecipient***](SQFulfillmentRecipient.md) | Information about the person to receive this shipment fulfillment. | [optional] 
**carrier** | **NSString*** | The shipping carrier being used to ship this fulfillment (such as UPS, FedEx, or USPS). | [optional] 
**shippingNote** | **NSString*** | A note with additional information for the shipping carrier. | [optional] 
**shippingType** | **NSString*** | A description of the type of shipping product purchased from the carrier (such as First Class, Priority, or Express). | [optional] 
**trackingNumber** | **NSString*** | The reference number provided by the carrier to track the shipment&#39;s progress. | [optional] 
**trackingUrl** | **NSString*** | A link to the tracking webpage on the carrier&#39;s website. | [optional] 
**placedAt** | **NSString*** | The [timestamp](https://developer.squareup.com/docs/build-basics/working-with-dates) indicating when the shipment was requested. The timestamp must be in RFC 3339 format (for example, \&quot;2016-09-04T23:59:33.123Z\&quot;). | [optional] 
**inProgressAt** | **NSString*** | The [timestamp](https://developer.squareup.com/docs/build-basics/working-with-dates) indicating when this fulfillment was moved to the &#x60;RESERVED&#x60; state, which  indicates that preparation of this shipment has begun. The timestamp must be in RFC 3339 format (for example, \&quot;2016-09-04T23:59:33.123Z\&quot;). | [optional] 
**packagedAt** | **NSString*** | The [timestamp](https://developer.squareup.com/docs/build-basics/working-with-dates) indicating when this fulfillment was moved to the &#x60;PREPARED&#x60; state, which indicates that the fulfillment is packaged. The timestamp must be in RFC 3339 format (for example, \&quot;2016-09-04T23:59:33.123Z\&quot;). | [optional] 
**expectedShippedAt** | **NSString*** | The [timestamp](https://developer.squareup.com/docs/build-basics/working-with-dates) indicating when the shipment is expected to be delivered to the shipping carrier. The timestamp must be in RFC 3339 format (for example, \&quot;2016-09-04T23:59:33.123Z\&quot;). | [optional] 
**shippedAt** | **NSString*** | The [timestamp](https://developer.squareup.com/docs/build-basics/working-with-dates) indicating when this fulfillment was moved to the &#x60;COMPLETED&#x60; state, which indicates that the fulfillment has been given to the shipping carrier. The timestamp must be in RFC 3339 format (for example, \&quot;2016-09-04T23:59:33.123Z\&quot;). | [optional] 
**canceledAt** | **NSString*** | The [timestamp](https://developer.squareup.com/docs/build-basics/working-with-dates) indicating the shipment was canceled. The timestamp must be in RFC 3339 format (for example, \&quot;2016-09-04T23:59:33.123Z\&quot;). | [optional] 
**cancelReason** | **NSString*** | A description of why the shipment was canceled. | [optional] 
**failedAt** | **NSString*** | The [timestamp](https://developer.squareup.com/docs/build-basics/working-with-dates) indicating when the shipment failed to be completed. The timestamp must be in RFC 3339 format (for example, \&quot;2016-09-04T23:59:33.123Z\&quot;). | [optional] 
**failureReason** | **NSString*** | A description of why the shipment failed to be completed. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


