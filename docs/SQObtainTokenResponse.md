# SQObtainTokenResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accessToken** | **NSString*** | A valid OAuth access token. OAuth access tokens are 64 bytes long. Provide the access token in a header with every request to Connect API endpoints. For more information, see [OAuth API: Walkthrough](https://developer.squareup.com/docs/oauth-api/walkthrough). | [optional] 
**tokenType** | **NSString*** | This value is always _bearer_. | [optional] 
**expiresAt** | **NSString*** | The date when the &#x60;access_token&#x60; expires, in [ISO 8601](http://www.iso.org/iso/home/standards/iso8601.htm) format. | [optional] 
**merchantId** | **NSString*** | The ID of the authorizing merchant&#39;s business. | [optional] 
**subscriptionId** | **NSString*** | __LEGACY FIELD__. The ID of a subscription plan the merchant signed up for. The ID is only present if the merchant signed up for a subscription plan during authorization. | [optional] 
**planId** | **NSString*** | __LEGACY FIELD__. The ID of the subscription plan the merchant signed up for. The ID is only present if the merchant signed up for a subscription plan during authorization. | [optional] 
**idToken** | **NSString*** | The OpenID token belonging to this person. This token is only present if the OPENID scope is included in the authorization request. | [optional] 
**refreshToken** | **NSString*** | A refresh token. OAuth refresh tokens are 64 bytes long. For more information, see [Refresh, Revoke, and Limit the Scope of OAuth Tokens](https://developer.squareup.com/docs/oauth-api/refresh-revoke-limit-scope). | [optional] 
**shortLived** | **NSNumber*** | A Boolean indicating that the access token is a short-lived access token. The short-lived access token returned in the response expires in 24 hours. | [optional] 
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) | Any errors that occurred during the request. | [optional] 
**refreshTokenExpiresAt** | **NSString*** | The date when the &#x60;refresh_token&#x60; expires, in [ISO 8601](http://www.iso.org/iso/home/standards/iso8601.htm) format. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


