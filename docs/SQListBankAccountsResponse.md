# SQListBankAccountsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**NSArray&lt;SQError&gt;***](SQError.md) | Information on errors encountered during the request. | [optional] 
**bankAccounts** | [**NSArray&lt;SQBankAccount&gt;***](SQBankAccount.md) | List of BankAccounts associated with this account. | [optional] 
**cursor** | **NSString*** | When a response is truncated, it includes a cursor that you can  use in a subsequent request to fetch next set of bank accounts. If empty, this is the final response.  For more information, see [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


