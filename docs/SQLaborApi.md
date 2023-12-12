# SQLaborApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBreakType**](SQLaborApi.md#createbreaktype) | **POST** /v2/labor/break-types | CreateBreakType
[**createShift**](SQLaborApi.md#createshift) | **POST** /v2/labor/shifts | CreateShift
[**deleteBreakType**](SQLaborApi.md#deletebreaktype) | **DELETE** /v2/labor/break-types/{id} | DeleteBreakType
[**deleteShift**](SQLaborApi.md#deleteshift) | **DELETE** /v2/labor/shifts/{id} | DeleteShift
[**getBreakType**](SQLaborApi.md#getbreaktype) | **GET** /v2/labor/break-types/{id} | GetBreakType
[**getEmployeeWage**](SQLaborApi.md#getemployeewage) | **GET** /v2/labor/employee-wages/{id} | GetEmployeeWage
[**getShift**](SQLaborApi.md#getshift) | **GET** /v2/labor/shifts/{id} | GetShift
[**getTeamMemberWage**](SQLaborApi.md#getteammemberwage) | **GET** /v2/labor/team-member-wages/{id} | GetTeamMemberWage
[**listBreakTypes**](SQLaborApi.md#listbreaktypes) | **GET** /v2/labor/break-types | ListBreakTypes
[**listEmployeeWages**](SQLaborApi.md#listemployeewages) | **GET** /v2/labor/employee-wages | ListEmployeeWages
[**listTeamMemberWages**](SQLaborApi.md#listteammemberwages) | **GET** /v2/labor/team-member-wages | ListTeamMemberWages
[**listWorkweekConfigs**](SQLaborApi.md#listworkweekconfigs) | **GET** /v2/labor/workweek-configs | ListWorkweekConfigs
[**searchShifts**](SQLaborApi.md#searchshifts) | **POST** /v2/labor/shifts/search | SearchShifts
[**updateBreakType**](SQLaborApi.md#updatebreaktype) | **PUT** /v2/labor/break-types/{id} | UpdateBreakType
[**updateShift**](SQLaborApi.md#updateshift) | **PUT** /v2/labor/shifts/{id} | UpdateShift
[**updateWorkweekConfig**](SQLaborApi.md#updateworkweekconfig) | **PUT** /v2/labor/workweek-configs/{id} | UpdateWorkweekConfig


# **createBreakType**
```objc
-(NSURLSessionTask*) createBreakTypeWithBody: (SQCreateBreakTypeRequest*) body
        completionHandler: (void (^)(SQCreateBreakTypeResponse* output, NSError* error)) handler;
```

CreateBreakType

Creates a new `BreakType`.  A `BreakType` is a template for creating `Break` objects. You must provide the following values in your request to this endpoint:  - `location_id` - `break_name` - `expected_duration` - `is_paid`  You can only have three `BreakType` instances per location. If you attempt to add a fourth `BreakType` for a location, an `INVALID_REQUEST_ERROR` \"Exceeded limit of 3 breaks per location.\" is returned.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCreateBreakTypeRequest* body = [[SQCreateBreakTypeRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQLaborApi*apiInstance = [[SQLaborApi alloc] init];

// CreateBreakType
[apiInstance createBreakTypeWithBody:body
          completionHandler: ^(SQCreateBreakTypeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLaborApi->createBreakType: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCreateBreakTypeRequest***](SQCreateBreakTypeRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateBreakTypeResponse***](SQCreateBreakTypeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createShift**
```objc
-(NSURLSessionTask*) createShiftWithBody: (SQCreateShiftRequest*) body
        completionHandler: (void (^)(SQCreateShiftResponse* output, NSError* error)) handler;
```

CreateShift

Creates a new `Shift`.  A `Shift` represents a complete workday for a single employee. You must provide the following values in your request to this endpoint:  - `location_id` - `employee_id` - `start_at`  An attempt to create a new `Shift` can result in a `BAD_REQUEST` error when: - The `status` of the new `Shift` is `OPEN` and the employee has another shift with an `OPEN` status. - The `start_at` date is in the future. - The `start_at` or `end_at` date overlaps another shift for the same employee. - The `Break` instances are set in the request and a break `start_at` is before the `Shift.start_at`, a break `end_at` is after the `Shift.end_at`, or both.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCreateShiftRequest* body = [[SQCreateShiftRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQLaborApi*apiInstance = [[SQLaborApi alloc] init];

// CreateShift
[apiInstance createShiftWithBody:body
          completionHandler: ^(SQCreateShiftResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLaborApi->createShift: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCreateShiftRequest***](SQCreateShiftRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateShiftResponse***](SQCreateShiftResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBreakType**
```objc
-(NSURLSessionTask*) deleteBreakTypeWithId: (NSString*) _id
        completionHandler: (void (^)(SQDeleteBreakTypeResponse* output, NSError* error)) handler;
```

DeleteBreakType

Deletes an existing `BreakType`.  A `BreakType` can be deleted even if it is referenced from a `Shift`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* _id = @"_id_example"; // The UUID for the `BreakType` being deleted.

SQLaborApi*apiInstance = [[SQLaborApi alloc] init];

// DeleteBreakType
[apiInstance deleteBreakTypeWithId:_id
          completionHandler: ^(SQDeleteBreakTypeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLaborApi->deleteBreakType: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| The UUID for the &#x60;BreakType&#x60; being deleted. | 

### Return type

[**SQDeleteBreakTypeResponse***](SQDeleteBreakTypeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteShift**
```objc
-(NSURLSessionTask*) deleteShiftWithId: (NSString*) _id
        completionHandler: (void (^)(SQDeleteShiftResponse* output, NSError* error)) handler;
```

DeleteShift

Deletes a `Shift`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* _id = @"_id_example"; // The UUID for the `Shift` being deleted.

SQLaborApi*apiInstance = [[SQLaborApi alloc] init];

// DeleteShift
[apiInstance deleteShiftWithId:_id
          completionHandler: ^(SQDeleteShiftResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLaborApi->deleteShift: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| The UUID for the &#x60;Shift&#x60; being deleted. | 

### Return type

[**SQDeleteShiftResponse***](SQDeleteShiftResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBreakType**
```objc
-(NSURLSessionTask*) getBreakTypeWithId: (NSString*) _id
        completionHandler: (void (^)(SQGetBreakTypeResponse* output, NSError* error)) handler;
```

GetBreakType

Returns a single `BreakType` specified by `id`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* _id = @"_id_example"; // The UUID for the `BreakType` being retrieved.

SQLaborApi*apiInstance = [[SQLaborApi alloc] init];

// GetBreakType
[apiInstance getBreakTypeWithId:_id
          completionHandler: ^(SQGetBreakTypeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLaborApi->getBreakType: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| The UUID for the &#x60;BreakType&#x60; being retrieved. | 

### Return type

[**SQGetBreakTypeResponse***](SQGetBreakTypeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmployeeWage**
```objc
-(NSURLSessionTask*) getEmployeeWageWithId: (NSString*) _id
        completionHandler: (void (^)(SQGetEmployeeWageResponse* output, NSError* error)) handler;
```

GetEmployeeWage

Returns a single `EmployeeWage` specified by `id`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* _id = @"_id_example"; // The UUID for the `EmployeeWage` being retrieved.

SQLaborApi*apiInstance = [[SQLaborApi alloc] init];

// GetEmployeeWage
[apiInstance getEmployeeWageWithId:_id
          completionHandler: ^(SQGetEmployeeWageResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLaborApi->getEmployeeWage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| The UUID for the &#x60;EmployeeWage&#x60; being retrieved. | 

### Return type

[**SQGetEmployeeWageResponse***](SQGetEmployeeWageResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShift**
```objc
-(NSURLSessionTask*) getShiftWithId: (NSString*) _id
        completionHandler: (void (^)(SQGetShiftResponse* output, NSError* error)) handler;
```

GetShift

Returns a single `Shift` specified by `id`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* _id = @"_id_example"; // The UUID for the `Shift` being retrieved.

SQLaborApi*apiInstance = [[SQLaborApi alloc] init];

// GetShift
[apiInstance getShiftWithId:_id
          completionHandler: ^(SQGetShiftResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLaborApi->getShift: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| The UUID for the &#x60;Shift&#x60; being retrieved. | 

### Return type

[**SQGetShiftResponse***](SQGetShiftResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTeamMemberWage**
```objc
-(NSURLSessionTask*) getTeamMemberWageWithId: (NSString*) _id
        completionHandler: (void (^)(SQGetTeamMemberWageResponse* output, NSError* error)) handler;
```

GetTeamMemberWage

Returns a single `TeamMemberWage` specified by `id `.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* _id = @"_id_example"; // The UUID for the `TeamMemberWage` being retrieved.

SQLaborApi*apiInstance = [[SQLaborApi alloc] init];

// GetTeamMemberWage
[apiInstance getTeamMemberWageWithId:_id
          completionHandler: ^(SQGetTeamMemberWageResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLaborApi->getTeamMemberWage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| The UUID for the &#x60;TeamMemberWage&#x60; being retrieved. | 

### Return type

[**SQGetTeamMemberWageResponse***](SQGetTeamMemberWageResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listBreakTypes**
```objc
-(NSURLSessionTask*) listBreakTypesWithLocationId: (NSString*) locationId
    limit: (NSNumber*) limit
    cursor: (NSString*) cursor
        completionHandler: (void (^)(SQListBreakTypesResponse* output, NSError* error)) handler;
```

ListBreakTypes

Returns a paginated list of `BreakType` instances for a business.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* locationId = @"locationId_example"; // Filter the returned `BreakType` results to only those that are associated with the specified location. (optional)
NSNumber* limit = @56; // The maximum number of `BreakType` results to return per page. The number can range between 1 and 200. The default is 200. (optional)
NSString* cursor = @"cursor_example"; // A pointer to the next page of `BreakType` results to fetch. (optional)

SQLaborApi*apiInstance = [[SQLaborApi alloc] init];

// ListBreakTypes
[apiInstance listBreakTypesWithLocationId:locationId
              limit:limit
              cursor:cursor
          completionHandler: ^(SQListBreakTypesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLaborApi->listBreakTypes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***| Filter the returned &#x60;BreakType&#x60; results to only those that are associated with the specified location. | [optional] 
 **limit** | **NSNumber***| The maximum number of &#x60;BreakType&#x60; results to return per page. The number can range between 1 and 200. The default is 200. | [optional] 
 **cursor** | **NSString***| A pointer to the next page of &#x60;BreakType&#x60; results to fetch. | [optional] 

### Return type

[**SQListBreakTypesResponse***](SQListBreakTypesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listEmployeeWages**
```objc
-(NSURLSessionTask*) listEmployeeWagesWithEmployeeId: (NSString*) employeeId
    limit: (NSNumber*) limit
    cursor: (NSString*) cursor
        completionHandler: (void (^)(SQListEmployeeWagesResponse* output, NSError* error)) handler;
```

ListEmployeeWages

Returns a paginated list of `EmployeeWage` instances for a business.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* employeeId = @"employeeId_example"; // Filter the returned wages to only those that are associated with the specified employee. (optional)
NSNumber* limit = @56; // The maximum number of `EmployeeWage` results to return per page. The number can range between 1 and 200. The default is 200. (optional)
NSString* cursor = @"cursor_example"; // A pointer to the next page of `EmployeeWage` results to fetch. (optional)

SQLaborApi*apiInstance = [[SQLaborApi alloc] init];

// ListEmployeeWages
[apiInstance listEmployeeWagesWithEmployeeId:employeeId
              limit:limit
              cursor:cursor
          completionHandler: ^(SQListEmployeeWagesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLaborApi->listEmployeeWages: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employeeId** | **NSString***| Filter the returned wages to only those that are associated with the specified employee. | [optional] 
 **limit** | **NSNumber***| The maximum number of &#x60;EmployeeWage&#x60; results to return per page. The number can range between 1 and 200. The default is 200. | [optional] 
 **cursor** | **NSString***| A pointer to the next page of &#x60;EmployeeWage&#x60; results to fetch. | [optional] 

### Return type

[**SQListEmployeeWagesResponse***](SQListEmployeeWagesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTeamMemberWages**
```objc
-(NSURLSessionTask*) listTeamMemberWagesWithTeamMemberId: (NSString*) teamMemberId
    limit: (NSNumber*) limit
    cursor: (NSString*) cursor
        completionHandler: (void (^)(SQListTeamMemberWagesResponse* output, NSError* error)) handler;
```

ListTeamMemberWages

Returns a paginated list of `TeamMemberWage` instances for a business.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* teamMemberId = @"teamMemberId_example"; // Filter the returned wages to only those that are associated with the specified team member. (optional)
NSNumber* limit = @56; // The maximum number of `TeamMemberWage` results to return per page. The number can range between 1 and 200. The default is 200. (optional)
NSString* cursor = @"cursor_example"; // A pointer to the next page of `EmployeeWage` results to fetch. (optional)

SQLaborApi*apiInstance = [[SQLaborApi alloc] init];

// ListTeamMemberWages
[apiInstance listTeamMemberWagesWithTeamMemberId:teamMemberId
              limit:limit
              cursor:cursor
          completionHandler: ^(SQListTeamMemberWagesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLaborApi->listTeamMemberWages: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamMemberId** | **NSString***| Filter the returned wages to only those that are associated with the specified team member. | [optional] 
 **limit** | **NSNumber***| The maximum number of &#x60;TeamMemberWage&#x60; results to return per page. The number can range between 1 and 200. The default is 200. | [optional] 
 **cursor** | **NSString***| A pointer to the next page of &#x60;EmployeeWage&#x60; results to fetch. | [optional] 

### Return type

[**SQListTeamMemberWagesResponse***](SQListTeamMemberWagesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWorkweekConfigs**
```objc
-(NSURLSessionTask*) listWorkweekConfigsWithLimit: (NSNumber*) limit
    cursor: (NSString*) cursor
        completionHandler: (void (^)(SQListWorkweekConfigsResponse* output, NSError* error)) handler;
```

ListWorkweekConfigs

Returns a list of `WorkweekConfig` instances for a business.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSNumber* limit = @56; // The maximum number of `WorkweekConfigs` results to return per page. (optional)
NSString* cursor = @"cursor_example"; // A pointer to the next page of `WorkweekConfig` results to fetch. (optional)

SQLaborApi*apiInstance = [[SQLaborApi alloc] init];

// ListWorkweekConfigs
[apiInstance listWorkweekConfigsWithLimit:limit
              cursor:cursor
          completionHandler: ^(SQListWorkweekConfigsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLaborApi->listWorkweekConfigs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **NSNumber***| The maximum number of &#x60;WorkweekConfigs&#x60; results to return per page. | [optional] 
 **cursor** | **NSString***| A pointer to the next page of &#x60;WorkweekConfig&#x60; results to fetch. | [optional] 

### Return type

[**SQListWorkweekConfigsResponse***](SQListWorkweekConfigsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchShifts**
```objc
-(NSURLSessionTask*) searchShiftsWithBody: (SQSearchShiftsRequest*) body
        completionHandler: (void (^)(SQSearchShiftsResponse* output, NSError* error)) handler;
```

SearchShifts

Returns a paginated list of `Shift` records for a business. The list to be returned can be filtered by: - Location IDs. - Employee IDs. - Shift status (`OPEN` and `CLOSED`). - Shift start. - Shift end. - Workday details.  The list can be sorted by: - `start_at`. - `end_at`. - `created_at`. - `updated_at`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQSearchShiftsRequest* body = [[SQSearchShiftsRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQLaborApi*apiInstance = [[SQLaborApi alloc] init];

// SearchShifts
[apiInstance searchShiftsWithBody:body
          completionHandler: ^(SQSearchShiftsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLaborApi->searchShifts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQSearchShiftsRequest***](SQSearchShiftsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQSearchShiftsResponse***](SQSearchShiftsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBreakType**
```objc
-(NSURLSessionTask*) updateBreakTypeWithId: (NSString*) _id
    body: (SQUpdateBreakTypeRequest*) body
        completionHandler: (void (^)(SQUpdateBreakTypeResponse* output, NSError* error)) handler;
```

UpdateBreakType

Updates an existing `BreakType`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* _id = @"_id_example"; //  The UUID for the `BreakType` being updated.
SQUpdateBreakTypeRequest* body = [[SQUpdateBreakTypeRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQLaborApi*apiInstance = [[SQLaborApi alloc] init];

// UpdateBreakType
[apiInstance updateBreakTypeWithId:_id
              body:body
          completionHandler: ^(SQUpdateBreakTypeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLaborApi->updateBreakType: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***|  The UUID for the &#x60;BreakType&#x60; being updated. | 
 **body** | [**SQUpdateBreakTypeRequest***](SQUpdateBreakTypeRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpdateBreakTypeResponse***](SQUpdateBreakTypeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateShift**
```objc
-(NSURLSessionTask*) updateShiftWithId: (NSString*) _id
    body: (SQUpdateShiftRequest*) body
        completionHandler: (void (^)(SQUpdateShiftResponse* output, NSError* error)) handler;
```

UpdateShift

Updates an existing `Shift`.  When adding a `Break` to a `Shift`, any earlier `Break` instances in the `Shift` have the `end_at` property set to a valid RFC-3339 datetime string.  When closing a `Shift`, all `Break` instances in the `Shift` must be complete with `end_at` set on each `Break`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* _id = @"_id_example"; // The ID of the object being updated.
SQUpdateShiftRequest* body = [[SQUpdateShiftRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQLaborApi*apiInstance = [[SQLaborApi alloc] init];

// UpdateShift
[apiInstance updateShiftWithId:_id
              body:body
          completionHandler: ^(SQUpdateShiftResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLaborApi->updateShift: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| The ID of the object being updated. | 
 **body** | [**SQUpdateShiftRequest***](SQUpdateShiftRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpdateShiftResponse***](SQUpdateShiftResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWorkweekConfig**
```objc
-(NSURLSessionTask*) updateWorkweekConfigWithId: (NSString*) _id
    body: (SQUpdateWorkweekConfigRequest*) body
        completionHandler: (void (^)(SQUpdateWorkweekConfigResponse* output, NSError* error)) handler;
```

UpdateWorkweekConfig

Updates a `WorkweekConfig`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* _id = @"_id_example"; // The UUID for the `WorkweekConfig` object being updated.
SQUpdateWorkweekConfigRequest* body = [[SQUpdateWorkweekConfigRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQLaborApi*apiInstance = [[SQLaborApi alloc] init];

// UpdateWorkweekConfig
[apiInstance updateWorkweekConfigWithId:_id
              body:body
          completionHandler: ^(SQUpdateWorkweekConfigResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLaborApi->updateWorkweekConfig: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| The UUID for the &#x60;WorkweekConfig&#x60; object being updated. | 
 **body** | [**SQUpdateWorkweekConfigRequest***](SQUpdateWorkweekConfigRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpdateWorkweekConfigResponse***](SQUpdateWorkweekConfigResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

