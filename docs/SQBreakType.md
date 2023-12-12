# SQBreakType

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | The UUID for this object. | [optional] 
**locationId** | **NSString*** | The ID of the business location this type of break applies to. | 
**breakName** | **NSString*** | A human-readable name for this type of break. The name is displayed to employees in Square products. | 
**expectedDuration** | **NSString*** | Format: RFC-3339 P[n]Y[n]M[n]DT[n]H[n]M[n]S. The expected length of this break. Precision less than minutes is truncated.  Example for break expected duration of 15 minutes: T15M | 
**isPaid** | **NSNumber*** | Whether this break counts towards time worked for compensation purposes. | 
**version** | **NSNumber*** | Used for resolving concurrency issues. The request fails if the version provided does not match the server version at the time of the request. If a value is not provided, Square&#39;s servers execute a \&quot;blind\&quot; write; potentially overwriting another writer&#39;s data. | [optional] 
**createdAt** | **NSString*** | A read-only timestamp in RFC 3339 format. | [optional] 
**updatedAt** | **NSString*** | A read-only timestamp in RFC 3339 format. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


