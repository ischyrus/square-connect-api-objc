# SQDisputesApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acceptDispute**](SQDisputesApi.md#acceptdispute) | **POST** /v2/disputes/{dispute_id}/accept | AcceptDispute
[**createDisputeEvidenceText**](SQDisputesApi.md#createdisputeevidencetext) | **POST** /v2/disputes/{dispute_id}/evidence-text | CreateDisputeEvidenceText
[**deleteDisputeEvidence**](SQDisputesApi.md#deletedisputeevidence) | **DELETE** /v2/disputes/{dispute_id}/evidence/{evidence_id} | DeleteDisputeEvidence
[**listDisputeEvidence**](SQDisputesApi.md#listdisputeevidence) | **GET** /v2/disputes/{dispute_id}/evidence | ListDisputeEvidence
[**listDisputes**](SQDisputesApi.md#listdisputes) | **GET** /v2/disputes | ListDisputes
[**retrieveDispute**](SQDisputesApi.md#retrievedispute) | **GET** /v2/disputes/{dispute_id} | RetrieveDispute
[**retrieveDisputeEvidence**](SQDisputesApi.md#retrievedisputeevidence) | **GET** /v2/disputes/{dispute_id}/evidence/{evidence_id} | RetrieveDisputeEvidence
[**submitEvidence**](SQDisputesApi.md#submitevidence) | **POST** /v2/disputes/{dispute_id}/submit-evidence | SubmitEvidence


# **acceptDispute**
```objc
-(NSURLSessionTask*) acceptDisputeWithDisputeId: (NSString*) disputeId
        completionHandler: (void (^)(SQAcceptDisputeResponse* output, NSError* error)) handler;
```

AcceptDispute

Accepts the loss on a dispute. Square returns the disputed amount to the cardholder and updates the dispute state to ACCEPTED.  Square debits the disputed amount from the seller’s Square account. If the Square account does not have sufficient funds, Square debits the associated bank account.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* disputeId = @"disputeId_example"; // The ID of the dispute you want to accept.

SQDisputesApi*apiInstance = [[SQDisputesApi alloc] init];

// AcceptDispute
[apiInstance acceptDisputeWithDisputeId:disputeId
          completionHandler: ^(SQAcceptDisputeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDisputesApi->acceptDispute: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **disputeId** | **NSString***| The ID of the dispute you want to accept. | 

### Return type

[**SQAcceptDisputeResponse***](SQAcceptDisputeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createDisputeEvidenceText**
```objc
-(NSURLSessionTask*) createDisputeEvidenceTextWithDisputeId: (NSString*) disputeId
    body: (SQCreateDisputeEvidenceTextRequest*) body
        completionHandler: (void (^)(SQCreateDisputeEvidenceTextResponse* output, NSError* error)) handler;
```

CreateDisputeEvidenceText

Uploads text to use as evidence for a dispute challenge.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* disputeId = @"disputeId_example"; // The ID of the dispute for which you want to upload evidence.
SQCreateDisputeEvidenceTextRequest* body = [[SQCreateDisputeEvidenceTextRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQDisputesApi*apiInstance = [[SQDisputesApi alloc] init];

// CreateDisputeEvidenceText
[apiInstance createDisputeEvidenceTextWithDisputeId:disputeId
              body:body
          completionHandler: ^(SQCreateDisputeEvidenceTextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDisputesApi->createDisputeEvidenceText: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **disputeId** | **NSString***| The ID of the dispute for which you want to upload evidence. | 
 **body** | [**SQCreateDisputeEvidenceTextRequest***](SQCreateDisputeEvidenceTextRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateDisputeEvidenceTextResponse***](SQCreateDisputeEvidenceTextResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDisputeEvidence**
```objc
-(NSURLSessionTask*) deleteDisputeEvidenceWithDisputeId: (NSString*) disputeId
    evidenceId: (NSString*) evidenceId
        completionHandler: (void (^)(SQDeleteDisputeEvidenceResponse* output, NSError* error)) handler;
```

DeleteDisputeEvidence

Removes specified evidence from a dispute. Square does not send the bank any evidence that is removed.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* disputeId = @"disputeId_example"; // The ID of the dispute from which you want to remove evidence.
NSString* evidenceId = @"evidenceId_example"; // The ID of the evidence you want to remove.

SQDisputesApi*apiInstance = [[SQDisputesApi alloc] init];

// DeleteDisputeEvidence
[apiInstance deleteDisputeEvidenceWithDisputeId:disputeId
              evidenceId:evidenceId
          completionHandler: ^(SQDeleteDisputeEvidenceResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDisputesApi->deleteDisputeEvidence: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **disputeId** | **NSString***| The ID of the dispute from which you want to remove evidence. | 
 **evidenceId** | **NSString***| The ID of the evidence you want to remove. | 

### Return type

[**SQDeleteDisputeEvidenceResponse***](SQDeleteDisputeEvidenceResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDisputeEvidence**
```objc
-(NSURLSessionTask*) listDisputeEvidenceWithDisputeId: (NSString*) disputeId
    cursor: (NSString*) cursor
        completionHandler: (void (^)(SQListDisputeEvidenceResponse* output, NSError* error)) handler;
```

ListDisputeEvidence

Returns a list of evidence associated with a dispute.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* disputeId = @"disputeId_example"; // The ID of the dispute.
NSString* cursor = @"cursor_example"; // A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)

SQDisputesApi*apiInstance = [[SQDisputesApi alloc] init];

// ListDisputeEvidence
[apiInstance listDisputeEvidenceWithDisputeId:disputeId
              cursor:cursor
          completionHandler: ^(SQListDisputeEvidenceResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDisputesApi->listDisputeEvidence: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **disputeId** | **NSString***| The ID of the dispute. | 
 **cursor** | **NSString***| A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 

### Return type

[**SQListDisputeEvidenceResponse***](SQListDisputeEvidenceResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDisputes**
```objc
-(NSURLSessionTask*) listDisputesWithCursor: (NSString*) cursor
    states: (NSString*) states
    locationId: (NSString*) locationId
        completionHandler: (void (^)(SQListDisputesResponse* output, NSError* error)) handler;
```

ListDisputes

Returns a list of disputes associated with a particular account.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* cursor = @"cursor_example"; // A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
NSString* states = @"states_example"; // The dispute states used to filter the result. If not specified, the endpoint returns all disputes. (optional)
NSString* locationId = @"locationId_example"; // The ID of the location for which to return a list of disputes. If not specified, the endpoint returns disputes associated with all locations. (optional)

SQDisputesApi*apiInstance = [[SQDisputesApi alloc] init];

// ListDisputes
[apiInstance listDisputesWithCursor:cursor
              states:states
              locationId:locationId
          completionHandler: ^(SQListDisputesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDisputesApi->listDisputes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **NSString***| A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
 **states** | **NSString***| The dispute states used to filter the result. If not specified, the endpoint returns all disputes. | [optional] 
 **locationId** | **NSString***| The ID of the location for which to return a list of disputes. If not specified, the endpoint returns disputes associated with all locations. | [optional] 

### Return type

[**SQListDisputesResponse***](SQListDisputesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveDispute**
```objc
-(NSURLSessionTask*) retrieveDisputeWithDisputeId: (NSString*) disputeId
        completionHandler: (void (^)(SQRetrieveDisputeResponse* output, NSError* error)) handler;
```

RetrieveDispute

Returns details about a specific dispute.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* disputeId = @"disputeId_example"; // The ID of the dispute you want more details about.

SQDisputesApi*apiInstance = [[SQDisputesApi alloc] init];

// RetrieveDispute
[apiInstance retrieveDisputeWithDisputeId:disputeId
          completionHandler: ^(SQRetrieveDisputeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDisputesApi->retrieveDispute: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **disputeId** | **NSString***| The ID of the dispute you want more details about. | 

### Return type

[**SQRetrieveDisputeResponse***](SQRetrieveDisputeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveDisputeEvidence**
```objc
-(NSURLSessionTask*) retrieveDisputeEvidenceWithDisputeId: (NSString*) disputeId
    evidenceId: (NSString*) evidenceId
        completionHandler: (void (^)(SQRetrieveDisputeEvidenceResponse* output, NSError* error)) handler;
```

RetrieveDisputeEvidence

Returns the metadata for the evidence specified in the request URL path.  You must maintain a copy of any evidence uploaded if you want to reference it later. Evidence cannot be downloaded after you upload it.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* disputeId = @"disputeId_example"; // The ID of the dispute from which you want to retrieve evidence metadata.
NSString* evidenceId = @"evidenceId_example"; // The ID of the evidence to retrieve.

SQDisputesApi*apiInstance = [[SQDisputesApi alloc] init];

// RetrieveDisputeEvidence
[apiInstance retrieveDisputeEvidenceWithDisputeId:disputeId
              evidenceId:evidenceId
          completionHandler: ^(SQRetrieveDisputeEvidenceResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDisputesApi->retrieveDisputeEvidence: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **disputeId** | **NSString***| The ID of the dispute from which you want to retrieve evidence metadata. | 
 **evidenceId** | **NSString***| The ID of the evidence to retrieve. | 

### Return type

[**SQRetrieveDisputeEvidenceResponse***](SQRetrieveDisputeEvidenceResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitEvidence**
```objc
-(NSURLSessionTask*) submitEvidenceWithDisputeId: (NSString*) disputeId
        completionHandler: (void (^)(SQSubmitEvidenceResponse* output, NSError* error)) handler;
```

SubmitEvidence

Submits evidence to the cardholder's bank.  The evidence submitted by this endpoint includes evidence uploaded using the [CreateDisputeEvidenceFile](https://developer.squareup.com/reference/square_2023-10-18/disputes-api/create-dispute-evidence-file) and [CreateDisputeEvidenceText](https://developer.squareup.com/reference/square_2023-10-18/disputes-api/create-dispute-evidence-text) endpoints and evidence automatically provided by Square, when available. Evidence cannot be removed from a dispute after submission.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* disputeId = @"disputeId_example"; // The ID of the dispute for which you want to submit evidence.

SQDisputesApi*apiInstance = [[SQDisputesApi alloc] init];

// SubmitEvidence
[apiInstance submitEvidenceWithDisputeId:disputeId
          completionHandler: ^(SQSubmitEvidenceResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDisputesApi->submitEvidence: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **disputeId** | **NSString***| The ID of the dispute for which you want to submit evidence. | 

### Return type

[**SQSubmitEvidenceResponse***](SQSubmitEvidenceResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

