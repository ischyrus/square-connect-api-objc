# SQBreak

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | The UUID for this object. | [optional] 
**startAt** | **NSString*** | RFC 3339; follows the same timezone information as &#x60;Shift&#x60;. Precision up to the minute is respected; seconds are truncated. | 
**endAt** | **NSString*** | RFC 3339; follows the same timezone information as &#x60;Shift&#x60;. Precision up to the minute is respected; seconds are truncated. | [optional] 
**breakTypeId** | **NSString*** | The &#x60;BreakType&#x60; that this &#x60;Break&#x60; was templated on. | 
**name** | **NSString*** | A human-readable name. | 
**expectedDuration** | **NSString*** | Format: RFC-3339 P[n]Y[n]M[n]DT[n]H[n]M[n]S. The expected length of the break. | 
**isPaid** | **NSNumber*** | Whether this break counts towards time worked for compensation purposes. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


