# SQCustomerCustomAttributeFilter

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **NSString*** | The &#x60;key&#x60; of the [custom attribute](https://developer.squareup.com/reference/square_2023-10-18/objects/CustomAttribute) to filter by. The key is the identifier of the custom attribute (and the corresponding custom attribute definition) and can be retrieved using the [Customer Custom Attributes API](https://developer.squareup.com/reference/square_2023-10-18/customer-custom-attributes-api). | 
**filter** | [**SQCustomerCustomAttributeFilterValue***](SQCustomerCustomAttributeFilterValue.md) | A filter that corresponds to the data type of the target custom attribute. For example, provide the &#x60;phone&#x60; filter to search based on the value of a &#x60;PhoneNumber&#x60;-type custom attribute. The data type is specified by the schema field of the custom attribute definition, which can be retrieved using the [Customer Custom Attributes API](https://developer.squareup.com/reference/square_2023-10-18/customer-custom-attributes-api).  You must provide this &#x60;filter&#x60; field, the &#x60;updated_at&#x60; field, or both. | [optional] 
**updatedAt** | [**SQTimeRange***](SQTimeRange.md) | The date range for when the custom attribute was last updated. The date range can include &#x60;start_at&#x60;, &#x60;end_at&#x60;, or both. Range boundaries are inclusive. Dates are specified as RFC 3339 timestamps.  You must provide this &#x60;updated_at&#x60; field, the &#x60;filter&#x60; field, or both. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


