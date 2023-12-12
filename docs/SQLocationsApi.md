# SQLocationsApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createLocation**](SQLocationsApi.md#createlocation) | **POST** /v2/locations | CreateLocation
[**listLocations**](SQLocationsApi.md#listlocations) | **GET** /v2/locations | ListLocations
[**retrieveLocation**](SQLocationsApi.md#retrievelocation) | **GET** /v2/locations/{location_id} | RetrieveLocation
[**updateLocation**](SQLocationsApi.md#updatelocation) | **PUT** /v2/locations/{location_id} | UpdateLocation


# **createLocation**
```objc
-(NSURLSessionTask*) createLocationWithBody: (SQCreateLocationRequest*) body
        completionHandler: (void (^)(SQCreateLocationResponse* output, NSError* error)) handler;
```

CreateLocation

Creates a [location](https://developer.squareup.com/docs/locations-api). Creating new locations allows for separate configuration of receipt layouts, item prices, and sales reports. Developers can use locations to separate sales activity through applications that integrate with Square from sales activity elsewhere in a seller's account. Locations created programmatically with the Locations API last forever and are visible to the seller for their own management. Therefore, ensure that each location has a sensible and unique name.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCreateLocationRequest* body = [[SQCreateLocationRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQLocationsApi*apiInstance = [[SQLocationsApi alloc] init];

// CreateLocation
[apiInstance createLocationWithBody:body
          completionHandler: ^(SQCreateLocationResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLocationsApi->createLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCreateLocationRequest***](SQCreateLocationRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateLocationResponse***](SQCreateLocationResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listLocations**
```objc
-(NSURLSessionTask*) listLocationsWithCompletionHandler: 
        (void (^)(SQListLocationsResponse* output, NSError* error)) handler;
```

ListLocations

Provides details about all of the seller's [locations](https://developer.squareup.com/docs/locations-api), including those with an inactive status.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];



SQLocationsApi*apiInstance = [[SQLocationsApi alloc] init];

// ListLocations
[apiInstance listLocationsWithCompletionHandler: 
          ^(SQListLocationsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLocationsApi->listLocations: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SQListLocationsResponse***](SQListLocationsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveLocation**
```objc
-(NSURLSessionTask*) retrieveLocationWithLocationId: (NSString*) locationId
        completionHandler: (void (^)(SQRetrieveLocationResponse* output, NSError* error)) handler;
```

RetrieveLocation

Retrieves details of a single location. Specify \"main\" as the location ID to retrieve details of the [main location](https://developer.squareup.com/docs/locations-api#about-the-main-location).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* locationId = @"locationId_example"; // The ID of the location to retrieve. Specify the string \"main\" to return the main location.

SQLocationsApi*apiInstance = [[SQLocationsApi alloc] init];

// RetrieveLocation
[apiInstance retrieveLocationWithLocationId:locationId
          completionHandler: ^(SQRetrieveLocationResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLocationsApi->retrieveLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***| The ID of the location to retrieve. Specify the string \&quot;main\&quot; to return the main location. | 

### Return type

[**SQRetrieveLocationResponse***](SQRetrieveLocationResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateLocation**
```objc
-(NSURLSessionTask*) updateLocationWithLocationId: (NSString*) locationId
    body: (SQUpdateLocationRequest*) body
        completionHandler: (void (^)(SQUpdateLocationResponse* output, NSError* error)) handler;
```

UpdateLocation

Updates a [location](https://developer.squareup.com/docs/locations-api).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* locationId = @"locationId_example"; // The ID of the location to update.
SQUpdateLocationRequest* body = [[SQUpdateLocationRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQLocationsApi*apiInstance = [[SQLocationsApi alloc] init];

// UpdateLocation
[apiInstance updateLocationWithLocationId:locationId
              body:body
          completionHandler: ^(SQUpdateLocationResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQLocationsApi->updateLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***| The ID of the location to update. | 
 **body** | [**SQUpdateLocationRequest***](SQUpdateLocationRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpdateLocationResponse***](SQUpdateLocationResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

