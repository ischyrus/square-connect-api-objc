# SQDevicesApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDeviceCode**](SQDevicesApi.md#createdevicecode) | **POST** /v2/devices/codes | CreateDeviceCode
[**getDevice**](SQDevicesApi.md#getdevice) | **GET** /v2/devices/{device_id} | GetDevice
[**getDeviceCode**](SQDevicesApi.md#getdevicecode) | **GET** /v2/devices/codes/{id} | GetDeviceCode
[**listDeviceCodes**](SQDevicesApi.md#listdevicecodes) | **GET** /v2/devices/codes | ListDeviceCodes
[**listDevices**](SQDevicesApi.md#listdevices) | **GET** /v2/devices | ListDevices


# **createDeviceCode**
```objc
-(NSURLSessionTask*) createDeviceCodeWithBody: (SQCreateDeviceCodeRequest*) body
        completionHandler: (void (^)(SQCreateDeviceCodeResponse* output, NSError* error)) handler;
```

CreateDeviceCode

Creates a DeviceCode that can be used to login to a Square Terminal device to enter the connected terminal mode.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCreateDeviceCodeRequest* body = [[SQCreateDeviceCodeRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQDevicesApi*apiInstance = [[SQDevicesApi alloc] init];

// CreateDeviceCode
[apiInstance createDeviceCodeWithBody:body
          completionHandler: ^(SQCreateDeviceCodeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDevicesApi->createDeviceCode: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCreateDeviceCodeRequest***](SQCreateDeviceCodeRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateDeviceCodeResponse***](SQCreateDeviceCodeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDevice**
```objc
-(NSURLSessionTask*) getDeviceWithDeviceId: (NSString*) deviceId
        completionHandler: (void (^)(SQGetDeviceResponse* output, NSError* error)) handler;
```

GetDevice

Retrieves Device with the associated `device_id`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* deviceId = @"deviceId_example"; // The unique ID for the desired `Device`.

SQDevicesApi*apiInstance = [[SQDevicesApi alloc] init];

// GetDevice
[apiInstance getDeviceWithDeviceId:deviceId
          completionHandler: ^(SQGetDeviceResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDevicesApi->getDevice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **NSString***| The unique ID for the desired &#x60;Device&#x60;. | 

### Return type

[**SQGetDeviceResponse***](SQGetDeviceResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeviceCode**
```objc
-(NSURLSessionTask*) getDeviceCodeWithId: (NSString*) _id
        completionHandler: (void (^)(SQGetDeviceCodeResponse* output, NSError* error)) handler;
```

GetDeviceCode

Retrieves DeviceCode with the associated ID.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* _id = @"_id_example"; // The unique identifier for the device code.

SQDevicesApi*apiInstance = [[SQDevicesApi alloc] init];

// GetDeviceCode
[apiInstance getDeviceCodeWithId:_id
          completionHandler: ^(SQGetDeviceCodeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDevicesApi->getDeviceCode: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| The unique identifier for the device code. | 

### Return type

[**SQGetDeviceCodeResponse***](SQGetDeviceCodeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDeviceCodes**
```objc
-(NSURLSessionTask*) listDeviceCodesWithCursor: (NSString*) cursor
    locationId: (NSString*) locationId
    productType: (NSString*) productType
    status: (NSString*) status
        completionHandler: (void (^)(SQListDeviceCodesResponse* output, NSError* error)) handler;
```

ListDeviceCodes

Lists all DeviceCodes associated with the merchant.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* cursor = @"cursor_example"; // A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Paginating results](https://developer.squareup.com/docs/working-with-apis/pagination) for more information. (optional)
NSString* locationId = @"locationId_example"; // If specified, only returns DeviceCodes of the specified location. Returns DeviceCodes of all locations if empty. (optional)
NSString* productType = @"productType_example"; // If specified, only returns DeviceCodes targeting the specified product type. Returns DeviceCodes of all product types if empty. (optional)
NSString* status = @"status_example"; // If specified, returns DeviceCodes with the specified statuses. Returns DeviceCodes of status `PAIRED` and `UNPAIRED` if empty. (optional)

SQDevicesApi*apiInstance = [[SQDevicesApi alloc] init];

// ListDeviceCodes
[apiInstance listDeviceCodesWithCursor:cursor
              locationId:locationId
              productType:productType
              status:status
          completionHandler: ^(SQListDeviceCodesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDevicesApi->listDeviceCodes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **NSString***| A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Paginating results](https://developer.squareup.com/docs/working-with-apis/pagination) for more information. | [optional] 
 **locationId** | **NSString***| If specified, only returns DeviceCodes of the specified location. Returns DeviceCodes of all locations if empty. | [optional] 
 **productType** | **NSString***| If specified, only returns DeviceCodes targeting the specified product type. Returns DeviceCodes of all product types if empty. | [optional] 
 **status** | **NSString***| If specified, returns DeviceCodes with the specified statuses. Returns DeviceCodes of status &#x60;PAIRED&#x60; and &#x60;UNPAIRED&#x60; if empty. | [optional] 

### Return type

[**SQListDeviceCodesResponse***](SQListDeviceCodesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDevices**
```objc
-(NSURLSessionTask*) listDevicesWithCursor: (NSString*) cursor
    sortOrder: (NSString*) sortOrder
    limit: (NSNumber*) limit
    locationId: (NSString*) locationId
        completionHandler: (void (^)(SQListDevicesResponse* output, NSError* error)) handler;
```

ListDevices

List devices associated with the merchant. Currently, only Terminal API devices are supported.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* cursor = @"cursor_example"; // A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. See [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination) for more information. (optional)
NSString* sortOrder = @"sortOrder_example"; // The order in which results are listed. - `ASC` - Oldest to newest. - `DESC` - Newest to oldest (default). (optional)
NSNumber* limit = @56; // The number of results to return in a single page. (optional)
NSString* locationId = @"locationId_example"; // If present, only returns devices at the target location. (optional)

SQDevicesApi*apiInstance = [[SQDevicesApi alloc] init];

// ListDevices
[apiInstance listDevicesWithCursor:cursor
              sortOrder:sortOrder
              limit:limit
              locationId:locationId
          completionHandler: ^(SQListDevicesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDevicesApi->listDevices: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **NSString***| A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. See [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination) for more information. | [optional] 
 **sortOrder** | **NSString***| The order in which results are listed. - &#x60;ASC&#x60; - Oldest to newest. - &#x60;DESC&#x60; - Newest to oldest (default). | [optional] 
 **limit** | **NSNumber***| The number of results to return in a single page. | [optional] 
 **locationId** | **NSString***| If present, only returns devices at the target location. | [optional] 

### Return type

[**SQListDevicesResponse***](SQListDevicesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

