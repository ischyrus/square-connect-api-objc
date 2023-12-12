# SQGiftCardActivitiesApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGiftCardActivity**](SQGiftCardActivitiesApi.md#creategiftcardactivity) | **POST** /v2/gift-cards/activities | CreateGiftCardActivity
[**listGiftCardActivities**](SQGiftCardActivitiesApi.md#listgiftcardactivities) | **GET** /v2/gift-cards/activities | ListGiftCardActivities


# **createGiftCardActivity**
```objc
-(NSURLSessionTask*) createGiftCardActivityWithBody: (SQCreateGiftCardActivityRequest*) body
        completionHandler: (void (^)(SQCreateGiftCardActivityResponse* output, NSError* error)) handler;
```

CreateGiftCardActivity

Creates a gift card activity to manage the balance or state of a [gift card](https://developer.squareup.com/reference/square_2023-10-18/objects/GiftCard).  For example, you create an `ACTIVATE` activity to activate a gift card with an initial balance  before the gift card can be used.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCreateGiftCardActivityRequest* body = [[SQCreateGiftCardActivityRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQGiftCardActivitiesApi*apiInstance = [[SQGiftCardActivitiesApi alloc] init];

// CreateGiftCardActivity
[apiInstance createGiftCardActivityWithBody:body
          completionHandler: ^(SQCreateGiftCardActivityResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQGiftCardActivitiesApi->createGiftCardActivity: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCreateGiftCardActivityRequest***](SQCreateGiftCardActivityRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateGiftCardActivityResponse***](SQCreateGiftCardActivityResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listGiftCardActivities**
```objc
-(NSURLSessionTask*) listGiftCardActivitiesWithGiftCardId: (NSString*) giftCardId
    type: (NSString*) type
    locationId: (NSString*) locationId
    beginTime: (NSString*) beginTime
    endTime: (NSString*) endTime
    limit: (NSNumber*) limit
    cursor: (NSString*) cursor
    sortOrder: (NSString*) sortOrder
        completionHandler: (void (^)(SQListGiftCardActivitiesResponse* output, NSError* error)) handler;
```

ListGiftCardActivities

Lists gift card activities. By default, you get gift card activities for all gift cards in the seller's account. You can optionally specify query parameters to filter the list. For example, you can get a list of gift card activities for a gift card, for all gift cards in a specific region, or for activities within a time window.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* giftCardId = @"giftCardId_example"; // If a gift card ID is provided, the endpoint returns activities related  to the specified gift card. Otherwise, the endpoint returns all gift card activities for  the seller. (optional)
NSString* type = @"type_example"; // If a [type](https://developer.squareup.com/reference/square_2023-10-18/objects/GiftCardActivityType) is provided, the endpoint returns gift card activities of the specified type.  Otherwise, the endpoint returns all types of gift card activities. (optional)
NSString* locationId = @"locationId_example"; // If a location ID is provided, the endpoint returns gift card activities for the specified location.  Otherwise, the endpoint returns gift card activities for all locations. (optional)
NSString* beginTime = @"beginTime_example"; // The timestamp for the beginning of the reporting period, in RFC 3339 format. This start time is inclusive. The default value is the current time minus one year. (optional)
NSString* endTime = @"endTime_example"; // The timestamp for the end of the reporting period, in RFC 3339 format. This end time is inclusive. The default value is the current time. (optional)
NSNumber* limit = @56; // If a limit is provided, the endpoint returns the specified number  of results (or fewer) per page. The maximum value is 100. The default value is 50. For more information, see [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination). (optional)
NSString* cursor = @"cursor_example"; // A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. If a cursor is not provided, the endpoint returns the first page of the results. For more information, see [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination). (optional)
NSString* sortOrder = @"sortOrder_example"; // The order in which the endpoint returns the activities, based on `created_at`. - `ASC` - Oldest to newest. - `DESC` - Newest to oldest (default). (optional)

SQGiftCardActivitiesApi*apiInstance = [[SQGiftCardActivitiesApi alloc] init];

// ListGiftCardActivities
[apiInstance listGiftCardActivitiesWithGiftCardId:giftCardId
              type:type
              locationId:locationId
              beginTime:beginTime
              endTime:endTime
              limit:limit
              cursor:cursor
              sortOrder:sortOrder
          completionHandler: ^(SQListGiftCardActivitiesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQGiftCardActivitiesApi->listGiftCardActivities: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **giftCardId** | **NSString***| If a gift card ID is provided, the endpoint returns activities related  to the specified gift card. Otherwise, the endpoint returns all gift card activities for  the seller. | [optional] 
 **type** | **NSString***| If a [type](https://developer.squareup.com/reference/square_2023-10-18/objects/GiftCardActivityType) is provided, the endpoint returns gift card activities of the specified type.  Otherwise, the endpoint returns all types of gift card activities. | [optional] 
 **locationId** | **NSString***| If a location ID is provided, the endpoint returns gift card activities for the specified location.  Otherwise, the endpoint returns gift card activities for all locations. | [optional] 
 **beginTime** | **NSString***| The timestamp for the beginning of the reporting period, in RFC 3339 format. This start time is inclusive. The default value is the current time minus one year. | [optional] 
 **endTime** | **NSString***| The timestamp for the end of the reporting period, in RFC 3339 format. This end time is inclusive. The default value is the current time. | [optional] 
 **limit** | **NSNumber***| If a limit is provided, the endpoint returns the specified number  of results (or fewer) per page. The maximum value is 100. The default value is 50. For more information, see [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination). | [optional] 
 **cursor** | **NSString***| A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. If a cursor is not provided, the endpoint returns the first page of the results. For more information, see [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination). | [optional] 
 **sortOrder** | **NSString***| The order in which the endpoint returns the activities, based on &#x60;created_at&#x60;. - &#x60;ASC&#x60; - Oldest to newest. - &#x60;DESC&#x60; - Newest to oldest (default). | [optional] 

### Return type

[**SQListGiftCardActivitiesResponse***](SQListGiftCardActivitiesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

