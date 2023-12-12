# SQSearchLoyaltyAccountsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) | Any errors that occurred during the request. | [optional] 
**loyaltyAccounts** | [**NSArray&lt;SQLoyaltyAccount&gt;***](SQLoyaltyAccount.md) | The loyalty accounts that met the search criteria,   in order of creation date. | [optional] 
**cursor** | **NSString*** | The pagination cursor to use in a subsequent  request. If empty, this is the final response. For more information,  see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


