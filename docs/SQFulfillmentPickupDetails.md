# SQFulfillmentPickupDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**recipient** | [**SQFulfillmentRecipient***](SQFulfillmentRecipient.md) | Information about the person to pick up this fulfillment from a physical location. | [optional] 
**expiresAt** | **NSString*** | The [timestamp](https://developer.squareup.com/docs/build-basics/working-with-dates) indicating when this fulfillment expires if it is not accepted. The timestamp must be in RFC 3339 format (for example, \&quot;2016-09-04T23:59:33.123Z\&quot;). The expiration time can only be set up to 7 days in the future. If &#x60;expires_at&#x60; is not set, this pickup fulfillment is automatically accepted when placed. | [optional] 
**autoCompleteDuration** | **NSString*** | The duration of time after which an open and accepted pickup fulfillment is automatically moved to the &#x60;COMPLETED&#x60; state. The duration must be in RFC 3339 format (for example, \&quot;P1W3D\&quot;).  If not set, this pickup fulfillment remains accepted until it is canceled or completed. | [optional] 
**scheduleType** | **NSString*** | The schedule type of the pickup fulfillment. Defaults to &#x60;SCHEDULED&#x60;. | [optional] 
**pickupAt** | **NSString*** | The [timestamp](https://developer.squareup.com/docs/build-basics/working-with-dates) that represents the start of the pickup window. Must be in RFC 3339 timestamp format, e.g., \&quot;2016-09-04T23:59:33.123Z\&quot;.  For fulfillments with the schedule type &#x60;ASAP&#x60;, this is automatically set to the current time plus the expected duration to prepare the fulfillment. | [optional] 
**pickupWindowDuration** | **NSString*** | The window of time in which the order should be picked up after the &#x60;pickup_at&#x60; timestamp. Must be in RFC 3339 duration format, e.g., \&quot;P1W3D\&quot;. Can be used as an informational guideline for merchants. | [optional] 
**prepTimeDuration** | **NSString*** | The duration of time it takes to prepare this fulfillment. The duration must be in RFC 3339 format (for example, \&quot;P1W3D\&quot;). | [optional] 
**note** | **NSString*** | A note to provide additional instructions about the pickup fulfillment displayed in the Square Point of Sale application and set by the API. | [optional] 
**placedAt** | **NSString*** | The [timestamp](https://developer.squareup.com/docs/build-basics/working-with-dates) indicating when the fulfillment was placed. The timestamp must be in RFC 3339 format (for example, \&quot;2016-09-04T23:59:33.123Z\&quot;). | [optional] 
**acceptedAt** | **NSString*** | The [timestamp](https://developer.squareup.com/docs/build-basics/working-with-dates) indicating when the fulfillment was accepted. The timestamp must be in RFC 3339 format (for example, \&quot;2016-09-04T23:59:33.123Z\&quot;). | [optional] 
**rejectedAt** | **NSString*** | The [timestamp](https://developer.squareup.com/docs/build-basics/working-with-dates) indicating when the fulfillment was rejected. The timestamp must be in RFC 3339 format (for example, \&quot;2016-09-04T23:59:33.123Z\&quot;). | [optional] 
**readyAt** | **NSString*** | The [timestamp](https://developer.squareup.com/docs/build-basics/working-with-dates) indicating when the fulfillment is marked as ready for pickup. The timestamp must be in RFC 3339 format (for example, \&quot;2016-09-04T23:59:33.123Z\&quot;). | [optional] 
**expiredAt** | **NSString*** | The [timestamp](https://developer.squareup.com/docs/build-basics/working-with-dates) indicating when the fulfillment expired. The timestamp must be in RFC 3339 format (for example, \&quot;2016-09-04T23:59:33.123Z\&quot;). | [optional] 
**pickedUpAt** | **NSString*** | The [timestamp](https://developer.squareup.com/docs/build-basics/working-with-dates) indicating when the fulfillment was picked up by the recipient. The timestamp must be in RFC 3339 format (for example, \&quot;2016-09-04T23:59:33.123Z\&quot;). | [optional] 
**canceledAt** | **NSString*** | The [timestamp](https://developer.squareup.com/docs/build-basics/working-with-dates) indicating when the fulfillment was canceled. The timestamp must be in RFC 3339 format (for example, \&quot;2016-09-04T23:59:33.123Z\&quot;). | [optional] 
**cancelReason** | **NSString*** | A description of why the pickup was canceled. The maximum length: 100 characters. | [optional] 
**isCurbsidePickup** | **NSNumber*** | If set to &#x60;true&#x60;, indicates that this pickup order is for curbside pickup, not in-store pickup. | [optional] 
**curbsidePickupDetails** | [**SQFulfillmentPickupDetailsCurbsidePickupDetails***](SQFulfillmentPickupDetailsCurbsidePickupDetails.md) | Specific details for curbside pickup. These details can only be populated if &#x60;is_curbside_pickup&#x60; is set to &#x60;true&#x60;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


