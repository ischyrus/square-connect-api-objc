# SQCustomerSegmentsApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listCustomerSegments**](SQCustomerSegmentsApi.md#listcustomersegments) | **GET** /v2/customers/segments | ListCustomerSegments
[**retrieveCustomerSegment**](SQCustomerSegmentsApi.md#retrievecustomersegment) | **GET** /v2/customers/segments/{segment_id} | RetrieveCustomerSegment


# **listCustomerSegments**
```objc
-(NSURLSessionTask*) listCustomerSegmentsWithCursor: (NSString*) cursor
    limit: (NSNumber*) limit
        completionHandler: (void (^)(SQListCustomerSegmentsResponse* output, NSError* error)) handler;
```

ListCustomerSegments

Retrieves the list of customer segments of a business.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* cursor = @"cursor_example"; // A pagination cursor returned by previous calls to `ListCustomerSegments`. This cursor is used to retrieve the next set of query results.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
NSNumber* limit = @56; // The maximum number of results to return in a single page. This limit is advisory. The response might contain more or fewer results. If the specified limit is less than 1 or greater than 50, Square returns a `400 VALUE_TOO_LOW` or `400 VALUE_TOO_HIGH` error. The default value is 50.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)

SQCustomerSegmentsApi*apiInstance = [[SQCustomerSegmentsApi alloc] init];

// ListCustomerSegments
[apiInstance listCustomerSegmentsWithCursor:cursor
              limit:limit
          completionHandler: ^(SQListCustomerSegmentsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCustomerSegmentsApi->listCustomerSegments: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **NSString***| A pagination cursor returned by previous calls to &#x60;ListCustomerSegments&#x60;. This cursor is used to retrieve the next set of query results.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
 **limit** | **NSNumber***| The maximum number of results to return in a single page. This limit is advisory. The response might contain more or fewer results. If the specified limit is less than 1 or greater than 50, Square returns a &#x60;400 VALUE_TOO_LOW&#x60; or &#x60;400 VALUE_TOO_HIGH&#x60; error. The default value is 50.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 

### Return type

[**SQListCustomerSegmentsResponse***](SQListCustomerSegmentsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveCustomerSegment**
```objc
-(NSURLSessionTask*) retrieveCustomerSegmentWithSegmentId: (NSString*) segmentId
        completionHandler: (void (^)(SQRetrieveCustomerSegmentResponse* output, NSError* error)) handler;
```

RetrieveCustomerSegment

Retrieves a specific customer segment as identified by the `segment_id` value.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* segmentId = @"segmentId_example"; // The Square-issued ID of the customer segment.

SQCustomerSegmentsApi*apiInstance = [[SQCustomerSegmentsApi alloc] init];

// RetrieveCustomerSegment
[apiInstance retrieveCustomerSegmentWithSegmentId:segmentId
          completionHandler: ^(SQRetrieveCustomerSegmentResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCustomerSegmentsApi->retrieveCustomerSegment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **segmentId** | **NSString***| The Square-issued ID of the customer segment. | 

### Return type

[**SQRetrieveCustomerSegmentResponse***](SQRetrieveCustomerSegmentResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

