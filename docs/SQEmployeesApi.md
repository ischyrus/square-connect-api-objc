# SQEmployeesApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listEmployees**](SQEmployeesApi.md#listemployees) | **GET** /v2/employees | ListEmployees
[**retrieveEmployee**](SQEmployeesApi.md#retrieveemployee) | **GET** /v2/employees/{id} | RetrieveEmployee


# **listEmployees**
```objc
-(NSURLSessionTask*) listEmployeesWithLocationId: (NSString*) locationId
    status: (NSString*) status
    limit: (NSNumber*) limit
    cursor: (NSString*) cursor
        completionHandler: (void (^)(SQListEmployeesResponse* output, NSError* error)) handler;
```

ListEmployees



### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* locationId = @"locationId_example"; //  (optional)
NSString* status = @"status_example"; // Specifies the EmployeeStatus to filter the employee by. (optional)
NSNumber* limit = @56; // The number of employees to be returned on each page. (optional)
NSString* cursor = @"cursor_example"; // The token required to retrieve the specified page of results. (optional)

SQEmployeesApi*apiInstance = [[SQEmployeesApi alloc] init];

// ListEmployees
[apiInstance listEmployeesWithLocationId:locationId
              status:status
              limit:limit
              cursor:cursor
          completionHandler: ^(SQListEmployeesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQEmployeesApi->listEmployees: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***|  | [optional] 
 **status** | **NSString***| Specifies the EmployeeStatus to filter the employee by. | [optional] 
 **limit** | **NSNumber***| The number of employees to be returned on each page. | [optional] 
 **cursor** | **NSString***| The token required to retrieve the specified page of results. | [optional] 

### Return type

[**SQListEmployeesResponse***](SQListEmployeesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveEmployee**
```objc
-(NSURLSessionTask*) retrieveEmployeeWithId: (NSString*) _id
        completionHandler: (void (^)(SQRetrieveEmployeeResponse* output, NSError* error)) handler;
```

RetrieveEmployee



### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* _id = @"_id_example"; // UUID for the employee that was requested.

SQEmployeesApi*apiInstance = [[SQEmployeesApi alloc] init];

// RetrieveEmployee
[apiInstance retrieveEmployeeWithId:_id
          completionHandler: ^(SQRetrieveEmployeeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQEmployeesApi->retrieveEmployee: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| UUID for the employee that was requested. | 

### Return type

[**SQRetrieveEmployeeResponse***](SQRetrieveEmployeeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

