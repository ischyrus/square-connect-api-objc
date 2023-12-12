# SQCashDrawersApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listCashDrawerShiftEvents**](SQCashDrawersApi.md#listcashdrawershiftevents) | **GET** /v2/cash-drawers/shifts/{shift_id}/events | ListCashDrawerShiftEvents
[**listCashDrawerShifts**](SQCashDrawersApi.md#listcashdrawershifts) | **GET** /v2/cash-drawers/shifts | ListCashDrawerShifts
[**retrieveCashDrawerShift**](SQCashDrawersApi.md#retrievecashdrawershift) | **GET** /v2/cash-drawers/shifts/{shift_id} | RetrieveCashDrawerShift


# **listCashDrawerShiftEvents**
```objc
-(NSURLSessionTask*) listCashDrawerShiftEventsWithLocationId: (NSString*) locationId
    shiftId: (NSString*) shiftId
    limit: (NSNumber*) limit
    cursor: (NSString*) cursor
        completionHandler: (void (^)(SQListCashDrawerShiftEventsResponse* output, NSError* error)) handler;
```

ListCashDrawerShiftEvents

Provides a paginated list of events for a single cash drawer shift.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* locationId = @"locationId_example"; // The ID of the location to list cash drawer shifts for.
NSString* shiftId = @"shiftId_example"; // The shift ID.
NSNumber* limit = @56; // Number of resources to be returned in a page of results (200 by default, 1000 max). (optional)
NSString* cursor = @"cursor_example"; // Opaque cursor for fetching the next page of results. (optional)

SQCashDrawersApi*apiInstance = [[SQCashDrawersApi alloc] init];

// ListCashDrawerShiftEvents
[apiInstance listCashDrawerShiftEventsWithLocationId:locationId
              shiftId:shiftId
              limit:limit
              cursor:cursor
          completionHandler: ^(SQListCashDrawerShiftEventsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCashDrawersApi->listCashDrawerShiftEvents: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***| The ID of the location to list cash drawer shifts for. | 
 **shiftId** | **NSString***| The shift ID. | 
 **limit** | **NSNumber***| Number of resources to be returned in a page of results (200 by default, 1000 max). | [optional] 
 **cursor** | **NSString***| Opaque cursor for fetching the next page of results. | [optional] 

### Return type

[**SQListCashDrawerShiftEventsResponse***](SQListCashDrawerShiftEventsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCashDrawerShifts**
```objc
-(NSURLSessionTask*) listCashDrawerShiftsWithLocationId: (NSString*) locationId
    sortOrder: (NSString*) sortOrder
    beginTime: (NSString*) beginTime
    endTime: (NSString*) endTime
    limit: (NSNumber*) limit
    cursor: (NSString*) cursor
        completionHandler: (void (^)(SQListCashDrawerShiftsResponse* output, NSError* error)) handler;
```

ListCashDrawerShifts

Provides the details for all of the cash drawer shifts for a location in a date range.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* locationId = @"locationId_example"; // The ID of the location to query for a list of cash drawer shifts.
NSString* sortOrder = @"sortOrder_example"; // The order in which cash drawer shifts are listed in the response, based on their opened_at field. Default value: ASC (optional)
NSString* beginTime = @"beginTime_example"; // The inclusive start time of the query on opened_at, in ISO 8601 format. (optional)
NSString* endTime = @"endTime_example"; // The exclusive end date of the query on opened_at, in ISO 8601 format. (optional)
NSNumber* limit = @56; // Number of cash drawer shift events in a page of results (200 by default, 1000 max). (optional)
NSString* cursor = @"cursor_example"; // Opaque cursor for fetching the next page of results. (optional)

SQCashDrawersApi*apiInstance = [[SQCashDrawersApi alloc] init];

// ListCashDrawerShifts
[apiInstance listCashDrawerShiftsWithLocationId:locationId
              sortOrder:sortOrder
              beginTime:beginTime
              endTime:endTime
              limit:limit
              cursor:cursor
          completionHandler: ^(SQListCashDrawerShiftsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCashDrawersApi->listCashDrawerShifts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***| The ID of the location to query for a list of cash drawer shifts. | 
 **sortOrder** | **NSString***| The order in which cash drawer shifts are listed in the response, based on their opened_at field. Default value: ASC | [optional] 
 **beginTime** | **NSString***| The inclusive start time of the query on opened_at, in ISO 8601 format. | [optional] 
 **endTime** | **NSString***| The exclusive end date of the query on opened_at, in ISO 8601 format. | [optional] 
 **limit** | **NSNumber***| Number of cash drawer shift events in a page of results (200 by default, 1000 max). | [optional] 
 **cursor** | **NSString***| Opaque cursor for fetching the next page of results. | [optional] 

### Return type

[**SQListCashDrawerShiftsResponse***](SQListCashDrawerShiftsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveCashDrawerShift**
```objc
-(NSURLSessionTask*) retrieveCashDrawerShiftWithLocationId: (NSString*) locationId
    shiftId: (NSString*) shiftId
        completionHandler: (void (^)(SQRetrieveCashDrawerShiftResponse* output, NSError* error)) handler;
```

RetrieveCashDrawerShift

Provides the summary details for a single cash drawer shift. See [ListCashDrawerShiftEvents](https://developer.squareup.com/reference/square_2023-10-18/cash-drawers-api/list-cash-drawer-shift-events) for a list of cash drawer shift events.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* locationId = @"locationId_example"; // The ID of the location to retrieve cash drawer shifts from.
NSString* shiftId = @"shiftId_example"; // The shift ID.

SQCashDrawersApi*apiInstance = [[SQCashDrawersApi alloc] init];

// RetrieveCashDrawerShift
[apiInstance retrieveCashDrawerShiftWithLocationId:locationId
              shiftId:shiftId
          completionHandler: ^(SQRetrieveCashDrawerShiftResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCashDrawersApi->retrieveCashDrawerShift: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***| The ID of the location to retrieve cash drawer shifts from. | 
 **shiftId** | **NSString***| The shift ID. | 

### Return type

[**SQRetrieveCashDrawerShiftResponse***](SQRetrieveCashDrawerShiftResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

