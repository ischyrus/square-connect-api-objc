# SQInvoicesApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelInvoice**](SQInvoicesApi.md#cancelinvoice) | **POST** /v2/invoices/{invoice_id}/cancel | CancelInvoice
[**createInvoice**](SQInvoicesApi.md#createinvoice) | **POST** /v2/invoices | CreateInvoice
[**deleteInvoice**](SQInvoicesApi.md#deleteinvoice) | **DELETE** /v2/invoices/{invoice_id} | DeleteInvoice
[**getInvoice**](SQInvoicesApi.md#getinvoice) | **GET** /v2/invoices/{invoice_id} | GetInvoice
[**listInvoices**](SQInvoicesApi.md#listinvoices) | **GET** /v2/invoices | ListInvoices
[**publishInvoice**](SQInvoicesApi.md#publishinvoice) | **POST** /v2/invoices/{invoice_id}/publish | PublishInvoice
[**searchInvoices**](SQInvoicesApi.md#searchinvoices) | **POST** /v2/invoices/search | SearchInvoices
[**updateInvoice**](SQInvoicesApi.md#updateinvoice) | **PUT** /v2/invoices/{invoice_id} | UpdateInvoice


# **cancelInvoice**
```objc
-(NSURLSessionTask*) cancelInvoiceWithInvoiceId: (NSString*) invoiceId
    body: (SQCancelInvoiceRequest*) body
        completionHandler: (void (^)(SQCancelInvoiceResponse* output, NSError* error)) handler;
```

CancelInvoice

Cancels an invoice. The seller cannot collect payments for  the canceled invoice.  You cannot cancel an invoice in the `DRAFT` state or in a terminal state: `PAID`, `REFUNDED`, `CANCELED`, or `FAILED`.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* invoiceId = @"invoiceId_example"; // The ID of the [invoice](https://developer.squareup.com/reference/square_2023-10-18/objects/Invoice) to cancel.
SQCancelInvoiceRequest* body = [[SQCancelInvoiceRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQInvoicesApi*apiInstance = [[SQInvoicesApi alloc] init];

// CancelInvoice
[apiInstance cancelInvoiceWithInvoiceId:invoiceId
              body:body
          completionHandler: ^(SQCancelInvoiceResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQInvoicesApi->cancelInvoice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceId** | **NSString***| The ID of the [invoice](https://developer.squareup.com/reference/square_2023-10-18/objects/Invoice) to cancel. | 
 **body** | [**SQCancelInvoiceRequest***](SQCancelInvoiceRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCancelInvoiceResponse***](SQCancelInvoiceResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createInvoice**
```objc
-(NSURLSessionTask*) createInvoiceWithBody: (SQCreateInvoiceRequest*) body
        completionHandler: (void (^)(SQCreateInvoiceResponse* output, NSError* error)) handler;
```

CreateInvoice

Creates a draft [invoice](https://developer.squareup.com/reference/square_2023-10-18/objects/Invoice)  for an order created using the Orders API.  A draft invoice remains in your account and no action is taken.  You must publish the invoice before Square can process it (send it to the customer's email address or charge the customer’s card on file).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQCreateInvoiceRequest* body = [[SQCreateInvoiceRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQInvoicesApi*apiInstance = [[SQInvoicesApi alloc] init];

// CreateInvoice
[apiInstance createInvoiceWithBody:body
          completionHandler: ^(SQCreateInvoiceResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQInvoicesApi->createInvoice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQCreateInvoiceRequest***](SQCreateInvoiceRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCreateInvoiceResponse***](SQCreateInvoiceResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteInvoice**
```objc
-(NSURLSessionTask*) deleteInvoiceWithInvoiceId: (NSString*) invoiceId
    version: (NSNumber*) version
        completionHandler: (void (^)(SQDeleteInvoiceResponse* output, NSError* error)) handler;
```

DeleteInvoice

Deletes the specified invoice. When an invoice is deleted, the  associated order status changes to CANCELED. You can only delete a draft  invoice (you cannot delete a published invoice, including one that is scheduled for processing).

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* invoiceId = @"invoiceId_example"; // The ID of the invoice to delete.
NSNumber* version = @56; // The version of the [invoice](https://developer.squareup.com/reference/square_2023-10-18/objects/Invoice) to delete. If you do not know the version, you can call [GetInvoice](https://developer.squareup.com/reference/square_2023-10-18/invoices-api/get-invoice) or  [ListInvoices](https://developer.squareup.com/reference/square_2023-10-18/invoices-api/list-invoices). (optional)

SQInvoicesApi*apiInstance = [[SQInvoicesApi alloc] init];

// DeleteInvoice
[apiInstance deleteInvoiceWithInvoiceId:invoiceId
              version:version
          completionHandler: ^(SQDeleteInvoiceResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQInvoicesApi->deleteInvoice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceId** | **NSString***| The ID of the invoice to delete. | 
 **version** | **NSNumber***| The version of the [invoice](https://developer.squareup.com/reference/square_2023-10-18/objects/Invoice) to delete. If you do not know the version, you can call [GetInvoice](https://developer.squareup.com/reference/square_2023-10-18/invoices-api/get-invoice) or  [ListInvoices](https://developer.squareup.com/reference/square_2023-10-18/invoices-api/list-invoices). | [optional] 

### Return type

[**SQDeleteInvoiceResponse***](SQDeleteInvoiceResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvoice**
```objc
-(NSURLSessionTask*) getInvoiceWithInvoiceId: (NSString*) invoiceId
        completionHandler: (void (^)(SQGetInvoiceResponse* output, NSError* error)) handler;
```

GetInvoice

Retrieves an invoice by invoice ID.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* invoiceId = @"invoiceId_example"; // The ID of the invoice to retrieve.

SQInvoicesApi*apiInstance = [[SQInvoicesApi alloc] init];

// GetInvoice
[apiInstance getInvoiceWithInvoiceId:invoiceId
          completionHandler: ^(SQGetInvoiceResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQInvoicesApi->getInvoice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceId** | **NSString***| The ID of the invoice to retrieve. | 

### Return type

[**SQGetInvoiceResponse***](SQGetInvoiceResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listInvoices**
```objc
-(NSURLSessionTask*) listInvoicesWithLocationId: (NSString*) locationId
    cursor: (NSString*) cursor
    limit: (NSNumber*) limit
        completionHandler: (void (^)(SQListInvoicesResponse* output, NSError* error)) handler;
```

ListInvoices

Returns a list of invoices for a given location. The response  is paginated. If truncated, the response includes a `cursor` that you     use in a subsequent request to retrieve the next set of invoices.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* locationId = @"locationId_example"; // The ID of the location for which to list invoices.
NSString* cursor = @"cursor_example"; // A pagination cursor returned by a previous call to this endpoint.  Provide this cursor to retrieve the next set of results for your original query.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
NSNumber* limit = @56; // The maximum number of invoices to return (200 is the maximum `limit`).  If not provided, the server uses a default limit of 100 invoices. (optional)

SQInvoicesApi*apiInstance = [[SQInvoicesApi alloc] init];

// ListInvoices
[apiInstance listInvoicesWithLocationId:locationId
              cursor:cursor
              limit:limit
          completionHandler: ^(SQListInvoicesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQInvoicesApi->listInvoices: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***| The ID of the location for which to list invoices. | 
 **cursor** | **NSString***| A pagination cursor returned by a previous call to this endpoint.  Provide this cursor to retrieve the next set of results for your original query.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). | [optional] 
 **limit** | **NSNumber***| The maximum number of invoices to return (200 is the maximum &#x60;limit&#x60;).  If not provided, the server uses a default limit of 100 invoices. | [optional] 

### Return type

[**SQListInvoicesResponse***](SQListInvoicesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **publishInvoice**
```objc
-(NSURLSessionTask*) publishInvoiceWithInvoiceId: (NSString*) invoiceId
    body: (SQPublishInvoiceRequest*) body
        completionHandler: (void (^)(SQPublishInvoiceResponse* output, NSError* error)) handler;
```

PublishInvoice

Publishes the specified draft invoice.   After an invoice is published, Square  follows up based on the invoice configuration. For example, Square  sends the invoice to the customer's email address, charges the customer's card on file, or does  nothing. Square also makes the invoice available on a Square-hosted invoice page.   The invoice `status` also changes from `DRAFT` to a status  based on the invoice configuration. For example, the status changes to `UNPAID` if  Square emails the invoice or `PARTIALLY_PAID` if Square charge a card on file for a portion of the  invoice amount.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* invoiceId = @"invoiceId_example"; // The ID of the invoice to publish.
SQPublishInvoiceRequest* body = [[SQPublishInvoiceRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQInvoicesApi*apiInstance = [[SQInvoicesApi alloc] init];

// PublishInvoice
[apiInstance publishInvoiceWithInvoiceId:invoiceId
              body:body
          completionHandler: ^(SQPublishInvoiceResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQInvoicesApi->publishInvoice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceId** | **NSString***| The ID of the invoice to publish. | 
 **body** | [**SQPublishInvoiceRequest***](SQPublishInvoiceRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQPublishInvoiceResponse***](SQPublishInvoiceResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchInvoices**
```objc
-(NSURLSessionTask*) searchInvoicesWithBody: (SQSearchInvoicesRequest*) body
        completionHandler: (void (^)(SQSearchInvoicesResponse* output, NSError* error)) handler;
```

SearchInvoices

Searches for invoices from a location specified in  the filter. You can optionally specify customers in the filter for whom to  retrieve invoices. In the current implementation, you can only specify one location and  optionally one customer.  The response is paginated. If truncated, the response includes a `cursor`  that you use in a subsequent request to retrieve the next set of invoices.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


SQSearchInvoicesRequest* body = [[SQSearchInvoicesRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQInvoicesApi*apiInstance = [[SQInvoicesApi alloc] init];

// SearchInvoices
[apiInstance searchInvoicesWithBody:body
          completionHandler: ^(SQSearchInvoicesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQInvoicesApi->searchInvoices: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SQSearchInvoicesRequest***](SQSearchInvoicesRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQSearchInvoicesResponse***](SQSearchInvoicesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateInvoice**
```objc
-(NSURLSessionTask*) updateInvoiceWithInvoiceId: (NSString*) invoiceId
    body: (SQUpdateInvoiceRequest*) body
        completionHandler: (void (^)(SQUpdateInvoiceResponse* output, NSError* error)) handler;
```

UpdateInvoice

Updates an invoice by modifying fields, clearing fields, or both. For most updates, you can use a sparse  `Invoice` object to add fields or change values and use the `fields_to_clear` field to specify fields to clear.  However, some restrictions apply. For example, you cannot change the `order_id` or `location_id` field and you  must provide the complete `custom_fields` list to update a custom field. Published invoices have additional restrictions.

### Example 
```objc
SQDefaultConfiguration *apiConfig = [SQDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oauth2)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* invoiceId = @"invoiceId_example"; // The ID of the invoice to update.
SQUpdateInvoiceRequest* body = [[SQUpdateInvoiceRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQInvoicesApi*apiInstance = [[SQInvoicesApi alloc] init];

// UpdateInvoice
[apiInstance updateInvoiceWithInvoiceId:invoiceId
              body:body
          completionHandler: ^(SQUpdateInvoiceResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQInvoicesApi->updateInvoice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceId** | **NSString***| The ID of the invoice to update. | 
 **body** | [**SQUpdateInvoiceRequest***](SQUpdateInvoiceRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQUpdateInvoiceResponse***](SQUpdateInvoiceResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

