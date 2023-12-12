# SQBookingsApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulkRetrieveBookings**](SQBookingsApi.md#bulkretrievebookings) | **POST** /v2/bookings/bulk-retrieve | BulkRetrieveBookings
[**bulkRetrieveTeamMemberBookingProfiles**](SQBookingsApi.md#bulkretrieveteammemberbookingprofiles) | **POST** /v2/bookings/team-member-booking-profiles/bulk-retrieve | BulkRetrieveTeamMemberBookingProfiles
[**cancelBooking**](SQBookingsApi.md#cancelbooking) | **POST** /v2/bookings/{booking_id}/cancel | CancelBooking
[**createBooking**](SQBookingsApi.md#createbooking) | **POST** /v2/bookings | CreateBooking
[**listBookings**](SQBookingsApi.md#listbookings) | **GET** /v2/bookings | ListBookings
[**listLocationBookingProfiles**](SQBookingsApi.md#listlocationbookingprofiles) | **GET** /v2/bookings/location-booking-profiles | ListLocationBookingProfiles
[**listTeamMemberBookingProfiles**](SQBookingsApi.md#listteammemberbookingprofiles) | **GET** /v2/bookings/team-member-booking-profiles | ListTeamMemberBookingProfiles
[**retrieveBooking**](SQBookingsApi.md#retrievebooking) | **GET** /v2/bookings/{booking_id} | RetrieveBooking
[**retrieveBusinessBookingProfile**](SQBookingsApi.md#retrievebusinessbookingprofile) | **GET** /v2/bookings/business-booking-profile | RetrieveBusinessBookingProfile
[**retrieveLocationBookingProfile**](SQBookingsApi.md#retrievelocationbookingprofile) | **GET** /v2/bookings/location-booking-profiles/{location_id} | RetrieveLocationBookingProfile
[**retrieveTeamMemberBookingProfile**](SQBookingsApi.md#retrieveteammemberbookingprofile) | **GET** /v2/bookings/team-member-booking-profiles/{team_member_id} | RetrieveTeamMemberBookingProfile
[**searchAvailability**](SQBookingsApi.md#searchavailability) | **POST** /v2/bookings/availability/search | SearchAvailability
[**updateBooking**](SQBookingsApi.md#updatebooking) | **PUT** /v2/bookings/{booking_id} | UpdateBooking


# **bulkRetrieveBookings**
```objc
-(NSURLSessionTask*) bulkRetrieveBookingsWithBody: (SQBulkRetrieveBookingsRequest*) body
        completionHandler: (void (^)(SQBulkRetrieveBookingsResponse* output, NSError* error)) handler;
```

BulkRetrieveBookings

Bulk-Retrieves a list of bookings by booking IDs.  To call this endpoint with buyer-level permissions, set `APPOINTMENTS_READ` for the OAuth scope. To call this endpoint with seller-level permissions, set `APPOINTMENTS_ALL_READ` and `APPOINTMENTS_READ` for the OAuth scope.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQBulkRetrieveBookingsRequest* body = [[SQBulkRetrieveBookingsRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQBookingsApi*apiInstance = [[SQBookingsApi alloc] init];

// BulkRetrieveBookings
[apiInstance bulkRetrieveBookingsWithBody:body
          completionHandler: ^(SQBulkRetrieveBookingsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQBookingsApi->bulkRetrieveBookings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQBulkRetrieveBookingsRequest***](SQBulkRetrieveBookingsRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQBulkRetrieveBookingsResponse***](SQBulkRetrieveBookingsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulkRetrieveTeamMemberBookingProfiles**
```objc
-(NSURLSessionTask*) bulkRetrieveTeamMemberBookingProfilesWithBody: (SQBulkRetrieveTeamMemberBookingProfilesRequest*) body
        completionHandler: (void (^)(SQBulkRetrieveTeamMemberBookingProfilesResponse* output, NSError* error)) handler;
```

BulkRetrieveTeamMemberBookingProfiles

Retrieves one or more team members' booking profiles.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQBulkRetrieveTeamMemberBookingProfilesRequest* body = [[SQBulkRetrieveTeamMemberBookingProfilesRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQBookingsApi*apiInstance = [[SQBookingsApi alloc] init];

// BulkRetrieveTeamMemberBookingProfiles
[apiInstance bulkRetrieveTeamMemberBookingProfilesWithBody:body
          completionHandler: ^(SQBulkRetrieveTeamMemberBookingProfilesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQBookingsApi->bulkRetrieveTeamMemberBookingProfiles: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQBulkRetrieveTeamMemberBookingProfilesRequest***](SQBulkRetrieveTeamMemberBookingProfilesRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQBulkRetrieveTeamMemberBookingProfilesResponse***](SQBulkRetrieveTeamMemberBookingProfilesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cancelBooking**
```objc
-(NSURLSessionTask*) cancelBookingWithBookingId: (NSString*) bookingId
    body: (SQCancelBookingRequest*) body
        completionHandler: (void (^)(SQCancelBookingResponse* output, NSError* error)) handler;
```

CancelBooking

Cancels an existing booking.  To call this endpoint with buyer-level permissions, set `APPOINTMENTS_WRITE` for the OAuth scope. To call this endpoint with seller-level permissions, set `APPOINTMENTS_ALL_WRITE` and `APPOINTMENTS_WRITE` for the OAuth scope.  For calls to this endpoint with seller-level permissions to succeed, the seller must have subscribed to *Appointments Plus* or *Appointments Premium*.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* bookingId = @"bookingId_example"; // The ID of the [Booking](https://developer.squareup.com/reference/square_2023-10-18/objects/Booking) object representing the to-be-cancelled booking.
SQCancelBookingRequest* body = [[SQCancelBookingRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQBookingsApi*apiInstance = [[SQBookingsApi alloc] init];

// CancelBooking
[apiInstance cancelBookingWithBookingId:bookingId
              body:body
          completionHandler: ^(SQCancelBookingResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQBookingsApi->cancelBooking: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookingId** | **NSString***| The ID of the [Booking](https://developer.squareup.com/reference/square_2023-10-18/objects/Booking) object representing the to-be-cancelled booking. | 
 **body** | [**SQCancelBookingRequest***](SQCancelBookingRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCancelBookingResponse***](SQCancelBookingResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createBooking**
```objc
-(NSURLSessionTask*) createBookingWithBody: (SQCreateBookingRequest*) body
        completionHandler: (void (^)(SQCreateBookingResponse* output, NSError* error)) handler;
```

CreateBooking

Creates a booking.  The required input must include the following: - `Booking.location_id` - `Booking.start_at` - `Booking.team_member_id` - `Booking.AppointmentSegment.service_variation_id` - `Booking.AppointmentSegment.service_variation_version`  To call this endpoint with buyer-level permissions, set `APPOINTMENTS_WRITE` for the OAuth scope. To call this endpoint with seller-level permissions, set `APPOINTMENTS_ALL_WRITE` and `APPOINTMENTS_WRITE` for the OAuth scope.  For calls to this endpoint with seller-level permissions to succeed, the seller must have subscribed to *Appointments Plus* or *Appointments Premium*.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCreateBookingRequest* body = [[SQCreateBookingRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQBookingsApi*apiInstance = [[SQBookingsApi alloc] init];

// CreateBooking
[apiInstance createBookingWithBody:body
          completionHandler: ^(SQCreateBookingResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQBookingsApi->createBooking: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCreateBookingRequest***](SQCreateBookingRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateBookingResponse***](SQCreateBookingResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listBookings**
```objc
-(NSURLSessionTask*) listBookingsWithLimit: (NSNumber*) limit
    cursor: (NSString*) cursor
    customerId: (NSString*) customerId
    teamMemberId: (NSString*) teamMemberId
    locationId: (NSString*) locationId
    startAtMin: (NSString*) startAtMin
    startAtMax: (NSString*) startAtMax
        completionHandler: (void (^)(SQListBookingsResponse* output, NSError* error)) handler;
```

ListBookings

Retrieve a collection of bookings.  To call this endpoint with buyer-level permissions, set `APPOINTMENTS_READ` for the OAuth scope. To call this endpoint with seller-level permissions, set `APPOINTMENTS_ALL_READ` and `APPOINTMENTS_READ` for the OAuth scope.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSNumber* limit = @56; // The maximum number of results per page to return in a paged response. (optional)
NSString* cursor = @"cursor_example"; // The pagination cursor from the preceding response to return the next page of the results. Do not set this when retrieving the first page of the results. (optional)
NSString* customerId = @"customerId_example"; // The [customer](https://developer.squareup.com/reference/square_2023-10-18/objects/Customer) for whom to retrieve bookings. If this is not set, bookings for all customers are retrieved. (optional)
NSString* teamMemberId = @"teamMemberId_example"; // The team member for whom to retrieve bookings. If this is not set, bookings of all members are retrieved. (optional)
NSString* locationId = @"locationId_example"; // The location for which to retrieve bookings. If this is not set, all locations' bookings are retrieved. (optional)
NSString* startAtMin = @"startAtMin_example"; // The RFC 3339 timestamp specifying the earliest of the start time. If this is not set, the current time is used. (optional)
NSString* startAtMax = @"startAtMax_example"; // The RFC 3339 timestamp specifying the latest of the start time. If this is not set, the time of 31 days after `start_at_min` is used. (optional)

SQBookingsApi*apiInstance = [[SQBookingsApi alloc] init];

// ListBookings
[apiInstance listBookingsWithLimit:limit
              cursor:cursor
              customerId:customerId
              teamMemberId:teamMemberId
              locationId:locationId
              startAtMin:startAtMin
              startAtMax:startAtMax
          completionHandler: ^(SQListBookingsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQBookingsApi->listBookings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **NSNumber***| The maximum number of results per page to return in a paged response. | [optional] 
 **cursor** | **NSString***| The pagination cursor from the preceding response to return the next page of the results. Do not set this when retrieving the first page of the results. | [optional] 
 **customerId** | **NSString***| The [customer](https://developer.squareup.com/reference/square_2023-10-18/objects/Customer) for whom to retrieve bookings. If this is not set, bookings for all customers are retrieved. | [optional] 
 **teamMemberId** | **NSString***| The team member for whom to retrieve bookings. If this is not set, bookings of all members are retrieved. | [optional] 
 **locationId** | **NSString***| The location for which to retrieve bookings. If this is not set, all locations&#39; bookings are retrieved. | [optional] 
 **startAtMin** | **NSString***| The RFC 3339 timestamp specifying the earliest of the start time. If this is not set, the current time is used. | [optional] 
 **startAtMax** | **NSString***| The RFC 3339 timestamp specifying the latest of the start time. If this is not set, the time of 31 days after &#x60;start_at_min&#x60; is used. | [optional] 

### Return type

[**SQListBookingsResponse***](SQListBookingsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listLocationBookingProfiles**
```objc
-(NSURLSessionTask*) listLocationBookingProfilesWithLimit: (NSNumber*) limit
    cursor: (NSString*) cursor
        completionHandler: (void (^)(SQListLocationBookingProfilesResponse* output, NSError* error)) handler;
```

ListLocationBookingProfiles

Lists location booking profiles of a seller.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSNumber* limit = @56; // The maximum number of results to return in a paged response. (optional)
NSString* cursor = @"cursor_example"; // The pagination cursor from the preceding response to return the next page of the results. Do not set this when retrieving the first page of the results. (optional)

SQBookingsApi*apiInstance = [[SQBookingsApi alloc] init];

// ListLocationBookingProfiles
[apiInstance listLocationBookingProfilesWithLimit:limit
              cursor:cursor
          completionHandler: ^(SQListLocationBookingProfilesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQBookingsApi->listLocationBookingProfiles: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **NSNumber***| The maximum number of results to return in a paged response. | [optional] 
 **cursor** | **NSString***| The pagination cursor from the preceding response to return the next page of the results. Do not set this when retrieving the first page of the results. | [optional] 

### Return type

[**SQListLocationBookingProfilesResponse***](SQListLocationBookingProfilesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTeamMemberBookingProfiles**
```objc
-(NSURLSessionTask*) listTeamMemberBookingProfilesWithBookableOnly: (NSNumber*) bookableOnly
    limit: (NSNumber*) limit
    cursor: (NSString*) cursor
    locationId: (NSString*) locationId
        completionHandler: (void (^)(SQListTeamMemberBookingProfilesResponse* output, NSError* error)) handler;
```

ListTeamMemberBookingProfiles

Lists booking profiles for team members.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSNumber* bookableOnly = @true; // Indicates whether to include only bookable team members in the returned result (`true`) or not (`false`). (optional)
NSNumber* limit = @56; // The maximum number of results to return in a paged response. (optional)
NSString* cursor = @"cursor_example"; // The pagination cursor from the preceding response to return the next page of the results. Do not set this when retrieving the first page of the results. (optional)
NSString* locationId = @"locationId_example"; // Indicates whether to include only team members enabled at the given location in the returned result. (optional)

SQBookingsApi*apiInstance = [[SQBookingsApi alloc] init];

// ListTeamMemberBookingProfiles
[apiInstance listTeamMemberBookingProfilesWithBookableOnly:bookableOnly
              limit:limit
              cursor:cursor
              locationId:locationId
          completionHandler: ^(SQListTeamMemberBookingProfilesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQBookingsApi->listTeamMemberBookingProfiles: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookableOnly** | **NSNumber***| Indicates whether to include only bookable team members in the returned result (&#x60;true&#x60;) or not (&#x60;false&#x60;). | [optional] 
 **limit** | **NSNumber***| The maximum number of results to return in a paged response. | [optional] 
 **cursor** | **NSString***| The pagination cursor from the preceding response to return the next page of the results. Do not set this when retrieving the first page of the results. | [optional] 
 **locationId** | **NSString***| Indicates whether to include only team members enabled at the given location in the returned result. | [optional] 

### Return type

[**SQListTeamMemberBookingProfilesResponse***](SQListTeamMemberBookingProfilesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveBooking**
```objc
-(NSURLSessionTask*) retrieveBookingWithBookingId: (NSString*) bookingId
        completionHandler: (void (^)(SQRetrieveBookingResponse* output, NSError* error)) handler;
```

RetrieveBooking

Retrieves a booking.  To call this endpoint with buyer-level permissions, set `APPOINTMENTS_READ` for the OAuth scope. To call this endpoint with seller-level permissions, set `APPOINTMENTS_ALL_READ` and `APPOINTMENTS_READ` for the OAuth scope.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* bookingId = @"bookingId_example"; // The ID of the [Booking](https://developer.squareup.com/reference/square_2023-10-18/objects/Booking) object representing the to-be-retrieved booking.

SQBookingsApi*apiInstance = [[SQBookingsApi alloc] init];

// RetrieveBooking
[apiInstance retrieveBookingWithBookingId:bookingId
          completionHandler: ^(SQRetrieveBookingResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQBookingsApi->retrieveBooking: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookingId** | **NSString***| The ID of the [Booking](https://developer.squareup.com/reference/square_2023-10-18/objects/Booking) object representing the to-be-retrieved booking. | 

### Return type

[**SQRetrieveBookingResponse***](SQRetrieveBookingResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveBusinessBookingProfile**
```objc
-(NSURLSessionTask*) retrieveBusinessBookingProfileWithCompletionHandler: 
        (void (^)(SQRetrieveBusinessBookingProfileResponse* output, NSError* error)) handler;
```

RetrieveBusinessBookingProfile

Retrieves a seller's booking profile.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];



SQBookingsApi*apiInstance = [[SQBookingsApi alloc] init];

// RetrieveBusinessBookingProfile
[apiInstance retrieveBusinessBookingProfileWithCompletionHandler: 
          ^(SQRetrieveBusinessBookingProfileResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQBookingsApi->retrieveBusinessBookingProfile: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SQRetrieveBusinessBookingProfileResponse***](SQRetrieveBusinessBookingProfileResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveLocationBookingProfile**
```objc
-(NSURLSessionTask*) retrieveLocationBookingProfileWithLocationId: (NSString*) locationId
        completionHandler: (void (^)(SQRetrieveLocationBookingProfileResponse* output, NSError* error)) handler;
```

RetrieveLocationBookingProfile

Retrieves a seller's location booking profile.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* locationId = @"locationId_example"; // The ID of the location to retrieve the booking profile.

SQBookingsApi*apiInstance = [[SQBookingsApi alloc] init];

// RetrieveLocationBookingProfile
[apiInstance retrieveLocationBookingProfileWithLocationId:locationId
          completionHandler: ^(SQRetrieveLocationBookingProfileResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQBookingsApi->retrieveLocationBookingProfile: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***| The ID of the location to retrieve the booking profile. | 

### Return type

[**SQRetrieveLocationBookingProfileResponse***](SQRetrieveLocationBookingProfileResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveTeamMemberBookingProfile**
```objc
-(NSURLSessionTask*) retrieveTeamMemberBookingProfileWithTeamMemberId: (NSString*) teamMemberId
        completionHandler: (void (^)(SQRetrieveTeamMemberBookingProfileResponse* output, NSError* error)) handler;
```

RetrieveTeamMemberBookingProfile

Retrieves a team member's booking profile.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* teamMemberId = @"teamMemberId_example"; // The ID of the team member to retrieve.

SQBookingsApi*apiInstance = [[SQBookingsApi alloc] init];

// RetrieveTeamMemberBookingProfile
[apiInstance retrieveTeamMemberBookingProfileWithTeamMemberId:teamMemberId
          completionHandler: ^(SQRetrieveTeamMemberBookingProfileResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQBookingsApi->retrieveTeamMemberBookingProfile: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamMemberId** | **NSString***| The ID of the team member to retrieve. | 

### Return type

[**SQRetrieveTeamMemberBookingProfileResponse***](SQRetrieveTeamMemberBookingProfileResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchAvailability**
```objc
-(NSURLSessionTask*) searchAvailabilityWithBody: (SQSearchAvailabilityRequest*) body
        completionHandler: (void (^)(SQSearchAvailabilityResponse* output, NSError* error)) handler;
```

SearchAvailability

Searches for availabilities for booking.  To call this endpoint with buyer-level permissions, set `APPOINTMENTS_READ` for the OAuth scope. To call this endpoint with seller-level permissions, set `APPOINTMENTS_ALL_READ` and `APPOINTMENTS_READ` for the OAuth scope.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQSearchAvailabilityRequest* body = [[SQSearchAvailabilityRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQBookingsApi*apiInstance = [[SQBookingsApi alloc] init];

// SearchAvailability
[apiInstance searchAvailabilityWithBody:body
          completionHandler: ^(SQSearchAvailabilityResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQBookingsApi->searchAvailability: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQSearchAvailabilityRequest***](SQSearchAvailabilityRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQSearchAvailabilityResponse***](SQSearchAvailabilityResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBooking**
```objc
-(NSURLSessionTask*) updateBookingWithBookingId: (NSString*) bookingId
    body: (SQUpdateBookingRequest*) body
        completionHandler: (void (^)(SQUpdateBookingResponse* output, NSError* error)) handler;
```

UpdateBooking

Updates a booking.  To call this endpoint with buyer-level permissions, set `APPOINTMENTS_WRITE` for the OAuth scope. To call this endpoint with seller-level permissions, set `APPOINTMENTS_ALL_WRITE` and `APPOINTMENTS_WRITE` for the OAuth scope.  For calls to this endpoint with seller-level permissions to succeed, the seller must have subscribed to *Appointments Plus* or *Appointments Premium*.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* bookingId = @"bookingId_example"; // The ID of the [Booking](https://developer.squareup.com/reference/square_2023-10-18/objects/Booking) object representing the to-be-updated booking.
SQUpdateBookingRequest* body = [[SQUpdateBookingRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQBookingsApi*apiInstance = [[SQBookingsApi alloc] init];

// UpdateBooking
[apiInstance updateBookingWithBookingId:bookingId
              body:body
          completionHandler: ^(SQUpdateBookingResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQBookingsApi->updateBooking: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookingId** | **NSString***| The ID of the [Booking](https://developer.squareup.com/reference/square_2023-10-18/objects/Booking) object representing the to-be-updated booking. | 
 **body** | [**SQUpdateBookingRequest***](SQUpdateBookingRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpdateBookingResponse***](SQUpdateBookingResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

