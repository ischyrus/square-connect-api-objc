# SQTeamApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulkCreateTeamMembers**](SQTeamApi.md#bulkcreateteammembers) | **POST** /v2/team-members/bulk-create | BulkCreateTeamMembers
[**bulkUpdateTeamMembers**](SQTeamApi.md#bulkupdateteammembers) | **POST** /v2/team-members/bulk-update | BulkUpdateTeamMembers
[**createTeamMember**](SQTeamApi.md#createteammember) | **POST** /v2/team-members | CreateTeamMember
[**retrieveTeamMember**](SQTeamApi.md#retrieveteammember) | **GET** /v2/team-members/{team_member_id} | RetrieveTeamMember
[**retrieveWageSetting**](SQTeamApi.md#retrievewagesetting) | **GET** /v2/team-members/{team_member_id}/wage-setting | RetrieveWageSetting
[**searchTeamMembers**](SQTeamApi.md#searchteammembers) | **POST** /v2/team-members/search | SearchTeamMembers
[**updateTeamMember**](SQTeamApi.md#updateteammember) | **PUT** /v2/team-members/{team_member_id} | UpdateTeamMember
[**updateWageSetting**](SQTeamApi.md#updatewagesetting) | **PUT** /v2/team-members/{team_member_id}/wage-setting | UpdateWageSetting


# **bulkCreateTeamMembers**
```objc
-(NSURLSessionTask*) bulkCreateTeamMembersWithBody: (SQBulkCreateTeamMembersRequest*) body
        completionHandler: (void (^)(SQBulkCreateTeamMembersResponse* output, NSError* error)) handler;
```

BulkCreateTeamMembers

Creates multiple `TeamMember` objects. The created `TeamMember` objects are returned on successful creates. This process is non-transactional and processes as much of the request as possible. If one of the creates in the request cannot be successfully processed, the request is not marked as failed, but the body of the response contains explicit error information for the failed create.  Learn about [Troubleshooting the Team API](https://developer.squareup.com/docs/team/troubleshooting#bulk-create-team-members).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQBulkCreateTeamMembersRequest* body = [[SQBulkCreateTeamMembersRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQTeamApi*apiInstance = [[SQTeamApi alloc] init];

// BulkCreateTeamMembers
[apiInstance bulkCreateTeamMembersWithBody:body
          completionHandler: ^(SQBulkCreateTeamMembersResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQTeamApi->bulkCreateTeamMembers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQBulkCreateTeamMembersRequest***](SQBulkCreateTeamMembersRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQBulkCreateTeamMembersResponse***](SQBulkCreateTeamMembersResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulkUpdateTeamMembers**
```objc
-(NSURLSessionTask*) bulkUpdateTeamMembersWithBody: (SQBulkUpdateTeamMembersRequest*) body
        completionHandler: (void (^)(SQBulkUpdateTeamMembersResponse* output, NSError* error)) handler;
```

BulkUpdateTeamMembers

Updates multiple `TeamMember` objects. The updated `TeamMember` objects are returned on successful updates. This process is non-transactional and processes as much of the request as possible. If one of the updates in the request cannot be successfully processed, the request is not marked as failed, but the body of the response contains explicit error information for the failed update. Learn about [Troubleshooting the Team API](https://developer.squareup.com/docs/team/troubleshooting#bulk-update-team-members).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQBulkUpdateTeamMembersRequest* body = [[SQBulkUpdateTeamMembersRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQTeamApi*apiInstance = [[SQTeamApi alloc] init];

// BulkUpdateTeamMembers
[apiInstance bulkUpdateTeamMembersWithBody:body
          completionHandler: ^(SQBulkUpdateTeamMembersResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQTeamApi->bulkUpdateTeamMembers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQBulkUpdateTeamMembersRequest***](SQBulkUpdateTeamMembersRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQBulkUpdateTeamMembersResponse***](SQBulkUpdateTeamMembersResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTeamMember**
```objc
-(NSURLSessionTask*) createTeamMemberWithBody: (SQCreateTeamMemberRequest*) body
        completionHandler: (void (^)(SQCreateTeamMemberResponse* output, NSError* error)) handler;
```

CreateTeamMember

Creates a single `TeamMember` object. The `TeamMember` object is returned on successful creates. You must provide the following values in your request to this endpoint: - `given_name` - `family_name`  Learn about [Troubleshooting the Team API](https://developer.squareup.com/docs/team/troubleshooting#createteammember).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCreateTeamMemberRequest* body = [[SQCreateTeamMemberRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQTeamApi*apiInstance = [[SQTeamApi alloc] init];

// CreateTeamMember
[apiInstance createTeamMemberWithBody:body
          completionHandler: ^(SQCreateTeamMemberResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQTeamApi->createTeamMember: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCreateTeamMemberRequest***](SQCreateTeamMemberRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateTeamMemberResponse***](SQCreateTeamMemberResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveTeamMember**
```objc
-(NSURLSessionTask*) retrieveTeamMemberWithTeamMemberId: (NSString*) teamMemberId
        completionHandler: (void (^)(SQRetrieveTeamMemberResponse* output, NSError* error)) handler;
```

RetrieveTeamMember

Retrieves a `TeamMember` object for the given `TeamMember.id`. Learn about [Troubleshooting the Team API](https://developer.squareup.com/docs/team/troubleshooting#retrieve-a-team-member).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* teamMemberId = @"teamMemberId_example"; // The ID of the team member to retrieve.

SQTeamApi*apiInstance = [[SQTeamApi alloc] init];

// RetrieveTeamMember
[apiInstance retrieveTeamMemberWithTeamMemberId:teamMemberId
          completionHandler: ^(SQRetrieveTeamMemberResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQTeamApi->retrieveTeamMember: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamMemberId** | **NSString***| The ID of the team member to retrieve. | 

### Return type

[**SQRetrieveTeamMemberResponse***](SQRetrieveTeamMemberResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveWageSetting**
```objc
-(NSURLSessionTask*) retrieveWageSettingWithTeamMemberId: (NSString*) teamMemberId
        completionHandler: (void (^)(SQRetrieveWageSettingResponse* output, NSError* error)) handler;
```

RetrieveWageSetting

Retrieves a `WageSetting` object for a team member specified by `TeamMember.id`. Learn about [Troubleshooting the Team API](https://developer.squareup.com/docs/team/troubleshooting#retrievewagesetting).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* teamMemberId = @"teamMemberId_example"; // The ID of the team member for which to retrieve the wage setting.

SQTeamApi*apiInstance = [[SQTeamApi alloc] init];

// RetrieveWageSetting
[apiInstance retrieveWageSettingWithTeamMemberId:teamMemberId
          completionHandler: ^(SQRetrieveWageSettingResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQTeamApi->retrieveWageSetting: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamMemberId** | **NSString***| The ID of the team member for which to retrieve the wage setting. | 

### Return type

[**SQRetrieveWageSettingResponse***](SQRetrieveWageSettingResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchTeamMembers**
```objc
-(NSURLSessionTask*) searchTeamMembersWithBody: (SQSearchTeamMembersRequest*) body
        completionHandler: (void (^)(SQSearchTeamMembersResponse* output, NSError* error)) handler;
```

SearchTeamMembers

Returns a paginated list of `TeamMember` objects for a business. The list can be filtered by the following: - location IDs - `status`

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQSearchTeamMembersRequest* body = [[SQSearchTeamMembersRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQTeamApi*apiInstance = [[SQTeamApi alloc] init];

// SearchTeamMembers
[apiInstance searchTeamMembersWithBody:body
          completionHandler: ^(SQSearchTeamMembersResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQTeamApi->searchTeamMembers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQSearchTeamMembersRequest***](SQSearchTeamMembersRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQSearchTeamMembersResponse***](SQSearchTeamMembersResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTeamMember**
```objc
-(NSURLSessionTask*) updateTeamMemberWithTeamMemberId: (NSString*) teamMemberId
    body: (SQUpdateTeamMemberRequest*) body
        completionHandler: (void (^)(SQUpdateTeamMemberResponse* output, NSError* error)) handler;
```

UpdateTeamMember

Updates a single `TeamMember` object. The `TeamMember` object is returned on successful updates. Learn about [Troubleshooting the Team API](https://developer.squareup.com/docs/team/troubleshooting#update-a-team-member).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* teamMemberId = @"teamMemberId_example"; // The ID of the team member to update.
SQUpdateTeamMemberRequest* body = [[SQUpdateTeamMemberRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQTeamApi*apiInstance = [[SQTeamApi alloc] init];

// UpdateTeamMember
[apiInstance updateTeamMemberWithTeamMemberId:teamMemberId
              body:body
          completionHandler: ^(SQUpdateTeamMemberResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQTeamApi->updateTeamMember: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamMemberId** | **NSString***| The ID of the team member to update. | 
 **body** | [**SQUpdateTeamMemberRequest***](SQUpdateTeamMemberRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpdateTeamMemberResponse***](SQUpdateTeamMemberResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWageSetting**
```objc
-(NSURLSessionTask*) updateWageSettingWithTeamMemberId: (NSString*) teamMemberId
    body: (SQUpdateWageSettingRequest*) body
        completionHandler: (void (^)(SQUpdateWageSettingResponse* output, NSError* error)) handler;
```

UpdateWageSetting

Creates or updates a `WageSetting` object. The object is created if a `WageSetting` with the specified `team_member_id` does not exist. Otherwise, it fully replaces the `WageSetting` object for the team member. The `WageSetting` is returned on a successful update. Learn about [Troubleshooting the Team API](https://developer.squareup.com/docs/team/troubleshooting#create-or-update-a-wage-setting).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* teamMemberId = @"teamMemberId_example"; // The ID of the team member for which to update the `WageSetting` object.
SQUpdateWageSettingRequest* body = [[SQUpdateWageSettingRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQTeamApi*apiInstance = [[SQTeamApi alloc] init];

// UpdateWageSetting
[apiInstance updateWageSettingWithTeamMemberId:teamMemberId
              body:body
          completionHandler: ^(SQUpdateWageSettingResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQTeamApi->updateWageSetting: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamMemberId** | **NSString***| The ID of the team member for which to update the &#x60;WageSetting&#x60; object. | 
 **body** | [**SQUpdateWageSettingRequest***](SQUpdateWageSettingRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpdateWageSettingResponse***](SQUpdateWageSettingResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

