# SQCreateSubscriptionRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**idempotencyKey** | **NSString*** | A unique string that identifies this &#x60;CreateSubscription&#x60; request. If you do not provide a unique string (or provide an empty string as the value), the endpoint treats each request as independent.  For more information, see [Idempotency keys](https://developer.squareup.com/docs/build-basics/common-api-patterns/idempotency). | [optional] 
**locationId** | **NSString*** | The ID of the location the subscription is associated with. | 
**planVariationId** | **NSString*** | The ID of the [subscription plan variation](https://developer.squareup.com/docs/subscriptions-api/plans-and-variations#plan-variations) created using the Catalog API. | [optional] 
**customerId** | **NSString*** | The ID of the [customer](https://developer.squareup.com/reference/square_2023-10-18/objects/Customer) subscribing to the subscription plan variation. | 
**startDate** | **NSString*** | The &#x60;YYYY-MM-DD&#x60;-formatted date to start the subscription.  If it is unspecified, the subscription starts immediately. | [optional] 
**canceledDate** | **NSString*** | The &#x60;YYYY-MM-DD&#x60;-formatted date when the newly created subscription is scheduled for cancellation.   This date overrides the cancellation date set in the plan variation configuration. If the cancellation date is earlier than the end date of a subscription cycle, the subscription stops at the canceled date and the subscriber is sent a prorated invoice at the beginning of the canceled cycle.   When the subscription plan of the newly created subscription has a fixed number of cycles and the &#x60;canceled_date&#x60; occurs before the subscription plan expires, the specified &#x60;canceled_date&#x60; sets the date when the subscription  stops through the end of the last cycle. | [optional] 
**taxPercentage** | **NSString*** | The tax to add when billing the subscription. The percentage is expressed in decimal form, using a &#x60;&#39;.&#39;&#x60; as the decimal separator and without a &#x60;&#39;%&#39;&#x60; sign. For example, a value of 7.5 corresponds to 7.5%. | [optional] 
**priceOverrideMoney** | [**SQMoney***](SQMoney.md) | A custom price to apply for the subscription. If specified, it overrides the price configured by the subscription plan. | [optional] 
**cardId** | **NSString*** | The ID of the [subscriber&#39;s](https://developer.squareup.com/reference/square_2023-10-18/objects/Customer) [card](https://developer.squareup.com/reference/square_2023-10-18/objects/Card) to charge. If it is not specified, the subscriber receives an invoice via email with a link to pay for their subscription. | [optional] 
**timezone** | **NSString*** | The timezone that is used in date calculations for the subscription. If unset, defaults to the location timezone. If a timezone is not configured for the location, defaults to \&quot;America/New_York\&quot;. Format: the IANA Timezone Database identifier for the location timezone. For a list of time zones, see [List of tz database time zones](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). | [optional] 
**source** | [**SQSubscriptionSource***](SQSubscriptionSource.md) | The origination details of the subscription. | [optional] 
**monthlyBillingAnchorDate** | **NSNumber*** | The day-of-the-month to change the billing date to. | [optional] 
**phases** | [**NSArray&lt;SQPhase&gt;***](SQPhase.md) | array of phases for this subscription | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


