# SQRetrieveTokenStatusResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**scopes** | **NSArray&lt;NSString*&gt;*** | The list of scopes associated with an access token. | [optional] 
**expiresAt** | **NSString*** | The date and time when the &#x60;access_token&#x60; expires, in RFC 3339 format. Empty if the token never expires. | [optional] 
**clientId** | **NSString*** | The Square-issued application ID associated with the access token. This is the same application ID used to obtain the token. | [optional] 
**merchantId** | **NSString*** | The ID of the authorizing merchant&#39;s business. | [optional] 
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) |  Any errors that occurred during the request. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


