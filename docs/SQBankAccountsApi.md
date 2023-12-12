# SQBankAccountsApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBankAccount**](SQBankAccountsApi.md#getbankaccount) | **GET** /v2/bank-accounts/{bank_account_id} | GetBankAccount
[**getBankAccountByV1Id**](SQBankAccountsApi.md#getbankaccountbyv1id) | **GET** /v2/bank-accounts/by-v1-id/{v1_bank_account_id} | GetBankAccountByV1Id
[**listBankAccounts**](SQBankAccountsApi.md#listbankaccounts) | **GET** /v2/bank-accounts | ListBankAccounts


# **getBankAccount**
```objc
-(NSURLSessionTask*) getBankAccountWithBankAccountId: (NSString*) bankAccountId
        completionHandler: (void (^)(SQGetBankAccountResponse* output, NSError* error)) handler;
```

GetBankAccount

Returns details of a [BankAccount](https://developer.squareup.com/reference/square_2023-10-18/objects/BankAccount) linked to a Square account.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* bankAccountId = @"bankAccountId_example"; // Square-issued ID of the desired `BankAccount`.

SQBankAccountsApi*apiInstance = [[SQBankAccountsApi alloc] init];

// GetBankAccount
[apiInstance getBankAccountWithBankAccountId:bankAccountId
          completionHandler: ^(SQGetBankAccountResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQBankAccountsApi->getBankAccount: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bankAccountId** | **NSString***| Square-issued ID of the desired &#x60;BankAccount&#x60;. | 

### Return type

[**SQGetBankAccountResponse***](SQGetBankAccountResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBankAccountByV1Id**
```objc
-(NSURLSessionTask*) getBankAccountByV1IdWithV1BankAccountId: (NSString*) v1BankAccountId
        completionHandler: (void (^)(SQGetBankAccountByV1IdResponse* output, NSError* error)) handler;
```

GetBankAccountByV1Id

Returns details of a [BankAccount](https://developer.squareup.com/reference/square_2023-10-18/objects/BankAccount) identified by V1 bank account ID.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* v1BankAccountId = @"v1BankAccountId_example"; // Connect V1 ID of the desired `BankAccount`. For more information, see  [Retrieve a bank account by using an ID issued by V1 Bank Accounts API](https://developer.squareup.com/docs/bank-accounts-api#retrieve-a-bank-account-by-using-an-id-issued-by-v1-bank-accounts-api).

SQBankAccountsApi*apiInstance = [[SQBankAccountsApi alloc] init];

// GetBankAccountByV1Id
[apiInstance getBankAccountByV1IdWithV1BankAccountId:v1BankAccountId
          completionHandler: ^(SQGetBankAccountByV1IdResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQBankAccountsApi->getBankAccountByV1Id: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v1BankAccountId** | **NSString***| Connect V1 ID of the desired &#x60;BankAccount&#x60;. For more information, see  [Retrieve a bank account by using an ID issued by V1 Bank Accounts API](https://developer.squareup.com/docs/bank-accounts-api#retrieve-a-bank-account-by-using-an-id-issued-by-v1-bank-accounts-api). | 

### Return type

[**SQGetBankAccountByV1IdResponse***](SQGetBankAccountByV1IdResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listBankAccounts**
```objc
-(NSURLSessionTask*) listBankAccountsWithCursor: (NSString*) cursor
    limit: (NSNumber*) limit
    locationId: (NSString*) locationId
        completionHandler: (void (^)(SQListBankAccountsResponse* output, NSError* error)) handler;
```

ListBankAccounts

Returns a list of [BankAccount](https://developer.squareup.com/reference/square_2023-10-18/objects/BankAccount) objects linked to a Square account.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* cursor = @"cursor_example"; // The pagination cursor returned by a previous call to this endpoint. Use it in the next `ListBankAccounts` request to retrieve the next set  of results.  See the [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination) guide for more information. (optional)
NSNumber* limit = @56; // Upper limit on the number of bank accounts to return in the response.  Currently, 1000 is the largest supported limit. You can specify a limit  of up to 1000 bank accounts. This is also the default limit. (optional)
NSString* locationId = @"locationId_example"; // Location ID. You can specify this optional filter  to retrieve only the linked bank accounts belonging to a specific location. (optional)

SQBankAccountsApi*apiInstance = [[SQBankAccountsApi alloc] init];

// ListBankAccounts
[apiInstance listBankAccountsWithCursor:cursor
              limit:limit
              locationId:locationId
          completionHandler: ^(SQListBankAccountsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQBankAccountsApi->listBankAccounts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **NSString***| The pagination cursor returned by a previous call to this endpoint. Use it in the next &#x60;ListBankAccounts&#x60; request to retrieve the next set  of results.  See the [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination) guide for more information. | [optional] 
 **limit** | **NSNumber***| Upper limit on the number of bank accounts to return in the response.  Currently, 1000 is the largest supported limit. You can specify a limit  of up to 1000 bank accounts. This is also the default limit. | [optional] 
 **locationId** | **NSString***| Location ID. You can specify this optional filter  to retrieve only the linked bank accounts belonging to a specific location. | [optional] 

### Return type

[**SQListBankAccountsResponse***](SQListBankAccountsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

