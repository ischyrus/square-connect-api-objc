# SQDeviceCode

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | The unique id for this device code. | [optional] 
**name** | **NSString*** | An optional user-defined name for the device code. | [optional] 
**code** | **NSString*** | The unique code that can be used to login. | [optional] 
**deviceId** | **NSString*** | The unique id of the device that used this code. Populated when the device is paired up. | [optional] 
**productType** | **NSString*** | The targeting product type of the device code. | 
**locationId** | **NSString*** | The location assigned to this code. | [optional] 
**status** | **NSString*** | The pairing status of the device code. | [optional] 
**pairBy** | **NSString*** | When this DeviceCode will expire and no longer login. Timestamp in RFC 3339 format. | [optional] 
**createdAt** | **NSString*** | When this DeviceCode was created. Timestamp in RFC 3339 format. | [optional] 
**statusChangedAt** | **NSString*** | When this DeviceCode&#39;s status was last changed. Timestamp in RFC 3339 format. | [optional] 
**pairedAt** | **NSString*** | When this DeviceCode was paired. Timestamp in RFC 3339 format. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


