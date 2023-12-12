# SQPayoutsApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPayout**](SQPayoutsApi.md#getpayout) | **GET** /v2/payouts/{payout_id} | GetPayout
[**listPayoutEntries**](SQPayoutsApi.md#listpayoutentries) | **GET** /v2/payouts/{payout_id}/payout-entries | ListPayoutEntries
[**listPayouts**](SQPayoutsApi.md#listpayouts) | **GET** /v2/payouts | ListPayouts


# **getPayout**
```objc
-(NSURLSessionTask*) getPayoutWithPayoutId: (NSString*) payoutId
        completionHandler: (void (^)(SQGetPayoutResponse* output, NSError* error)) handler;
```

GetPayout

Retrieves details of a specific payout identified by a payout ID. To call this endpoint, set `PAYOUTS_READ` for the OAuth scope.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* payoutId = @"payoutId_example"; // The ID of the payout to retrieve the information for.

SQPayoutsApi*apiInstance = [[SQPayoutsApi alloc] init];

// GetPayout
[apiInstance getPayoutWithPayoutId:payoutId
          completionHandler: ^(SQGetPayoutResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQPayoutsApi->getPayout: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payoutId** | **NSString***| The ID of the payout to retrieve the information for. | 

### Return type

[**SQGetPayoutResponse***](SQGetPayoutResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPayoutEntries**
```objc
-(NSURLSessionTask*) listPayoutEntriesWithPayoutId: (NSString*) payoutId
    sortOrder: (NSString*) sortOrder
    cursor: (NSString*) cursor
    limit: (NSNumber*) limit
        completionHandler: (void (^)(SQListPayoutEntriesResponse* output, NSError* error)) handler;
```

ListPayoutEntries

Retrieves a list of all payout entries for a specific payout. To call this endpoint, set `PAYOUTS_READ` for the OAuth scope.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* payoutId = @"payoutId_example"; // The ID of the payout to retrieve the information for.
NSString* sortOrder = @"sortOrder_example"; // The order in which payout entries are listed. (optional)
NSString* cursor = @"cursor_example"; // A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). If request parameters change between requests, subsequent results may contain duplicates or missing records. (optional)
NSNumber* limit = @56; // The maximum number of results to be returned in a single page. It is possible to receive fewer results than the specified limit on a given page. The default value of 100 is also the maximum allowed value. If the provided value is greater than 100, it is ignored and the default value is used instead. Default: `100` (optional)

SQPayoutsApi*apiInstance = [[SQPayoutsApi alloc] init];

// ListPayoutEntries
[apiInstance listPayoutEntriesWithPayoutId:payoutId
              sortOrder:sortOrder
              cursor:cursor
              limit:limit
          completionHandler: ^(SQListPayoutEntriesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQPayoutsApi->listPayoutEntries: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payoutId** | **NSString***| The ID of the payout to retrieve the information for. | 
 **sortOrder** | **NSString***| The order in which payout entries are listed. | [optional] 
 **cursor** | **NSString***| A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). If request parameters change between requests, subsequent results may contain duplicates or missing records. | [optional] 
 **limit** | **NSNumber***| The maximum number of results to be returned in a single page. It is possible to receive fewer results than the specified limit on a given page. The default value of 100 is also the maximum allowed value. If the provided value is greater than 100, it is ignored and the default value is used instead. Default: &#x60;100&#x60; | [optional] 

### Return type

[**SQListPayoutEntriesResponse***](SQListPayoutEntriesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPayouts**
```objc
-(NSURLSessionTask*) listPayoutsWithLocationId: (NSString*) locationId
    status: (NSString*) status
    beginTime: (NSString*) beginTime
    endTime: (NSString*) endTime
    sortOrder: (NSString*) sortOrder
    cursor: (NSString*) cursor
    limit: (NSNumber*) limit
        completionHandler: (void (^)(SQListPayoutsResponse* output, NSError* error)) handler;
```

ListPayouts

Retrieves a list of all payouts for the default location. You can filter payouts by location ID, status, time range, and order them in ascending or descending order. To call this endpoint, set `PAYOUTS_READ` for the OAuth scope.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* locationId = @"locationId_example"; // The ID of the location for which to list the payouts. By default, payouts are returned for the default (main) location associated with the seller. (optional)
NSString* status = @"status_example"; // If provided, only payouts with the given status are returned. (optional)
NSString* beginTime = @"beginTime_example"; // The timestamp for the beginning of the payout creation time, in RFC 3339 format. Inclusive. Default: The current time minus one year. (optional)
NSString* endTime = @"endTime_example"; // The timestamp for the end of the payout creation time, in RFC 3339 format. Default: The current time. (optional)
NSString* sortOrder = @"sortOrder_example"; // The order in which payouts are listed. (optional)
NSString* cursor = @"cursor_example"; // A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). If request parameters change between requests, subsequent results may contain duplicates or missing records. (optional)
NSNumber* limit = @56; // The maximum number of results to be returned in a single page. It is possible to receive fewer results than the specified limit on a given page. The default value of 100 is also the maximum allowed value. If the provided value is greater than 100, it is ignored and the default value is used instead. Default: `100` (optional)

SQPayoutsApi*apiInstance = [[SQPayoutsApi alloc] init];

// ListPayouts
[apiInstance listPayoutsWithLocationId:locationId
              status:status
              beginTime:beginTime
              endTime:endTime
              sortOrder:sortOrder
              cursor:cursor
              limit:limit
          completionHandler: ^(SQListPayoutsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQPayoutsApi->listPayouts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***| The ID of the location for which to list the payouts. By default, payouts are returned for the default (main) location associated with the seller. | [optional] 
 **status** | **NSString***| If provided, only payouts with the given status are returned. | [optional] 
 **beginTime** | **NSString***| The timestamp for the beginning of the payout creation time, in RFC 3339 format. Inclusive. Default: The current time minus one year. | [optional] 
 **endTime** | **NSString***| The timestamp for the end of the payout creation time, in RFC 3339 format. Default: The current time. | [optional] 
 **sortOrder** | **NSString***| The order in which payouts are listed. | [optional] 
 **cursor** | **NSString***| A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). If request parameters change between requests, subsequent results may contain duplicates or missing records. | [optional] 
 **limit** | **NSNumber***| The maximum number of results to be returned in a single page. It is possible to receive fewer results than the specified limit on a given page. The default value of 100 is also the maximum allowed value. If the provided value is greater than 100, it is ignored and the default value is used instead. Default: &#x60;100&#x60; | [optional] 

### Return type

[**SQListPayoutsResponse***](SQListPayoutsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

