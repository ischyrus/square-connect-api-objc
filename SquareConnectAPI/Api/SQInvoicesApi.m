#import "SQInvoicesApi.h"
#import "SQQueryParamCollection.h"
#import "SQApiClient.h"
#import "SQCancelInvoiceRequest.h"
#import "SQCancelInvoiceResponse.h"
#import "SQCreateInvoiceRequest.h"
#import "SQCreateInvoiceResponse.h"
#import "SQDeleteInvoiceResponse.h"
#import "SQGetInvoiceResponse.h"
#import "SQListInvoicesResponse.h"
#import "SQPublishInvoiceRequest.h"
#import "SQPublishInvoiceResponse.h"
#import "SQSearchInvoicesRequest.h"
#import "SQSearchInvoicesResponse.h"
#import "SQUpdateInvoiceRequest.h"
#import "SQUpdateInvoiceResponse.h"


@interface SQInvoicesApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SQInvoicesApi

NSString* kSQInvoicesApiErrorDomain = @"SQInvoicesApiErrorDomain";
NSInteger kSQInvoicesApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[SQApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(SQApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// CancelInvoice
/// Cancels an invoice. The seller cannot collect payments for  the canceled invoice.  You cannot cancel an invoice in the `DRAFT` state or in a terminal state: `PAID`, `REFUNDED`, `CANCELED`, or `FAILED`.
///  @param invoiceId The ID of the [invoice](https://developer.squareup.com/reference/square_2023-10-18/objects/Invoice) to cancel. 
///
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQCancelInvoiceResponse*
///
-(NSURLSessionTask*) cancelInvoiceWithInvoiceId: (NSString*) invoiceId
    body: (SQCancelInvoiceRequest*) body
    completionHandler: (void (^)(SQCancelInvoiceResponse* output, NSError* error)) handler {
    // verify the required parameter 'invoiceId' is set
    if (invoiceId == nil) {
        NSParameterAssert(invoiceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"invoiceId"] };
            NSError* error = [NSError errorWithDomain:kSQInvoicesApiErrorDomain code:kSQInvoicesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQInvoicesApiErrorDomain code:kSQInvoicesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/invoices/{invoice_id}/cancel"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (invoiceId != nil) {
        pathParams[@"invoice_id"] = invoiceId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SQCancelInvoiceResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQCancelInvoiceResponse*)data, error);
                                }
                            }];
}

///
/// CreateInvoice
/// Creates a draft [invoice](https://developer.squareup.com/reference/square_2023-10-18/objects/Invoice)  for an order created using the Orders API.  A draft invoice remains in your account and no action is taken.  You must publish the invoice before Square can process it (send it to the customer's email address or charge the customer’s card on file).
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQCreateInvoiceResponse*
///
-(NSURLSessionTask*) createInvoiceWithBody: (SQCreateInvoiceRequest*) body
    completionHandler: (void (^)(SQCreateInvoiceResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQInvoicesApiErrorDomain code:kSQInvoicesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/invoices"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SQCreateInvoiceResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQCreateInvoiceResponse*)data, error);
                                }
                            }];
}

///
/// DeleteInvoice
/// Deletes the specified invoice. When an invoice is deleted, the  associated order status changes to CANCELED. You can only delete a draft  invoice (you cannot delete a published invoice, including one that is scheduled for processing).
///  @param invoiceId The ID of the invoice to delete. 
///
///  @param version The version of the [invoice](https://developer.squareup.com/reference/square_2023-10-18/objects/Invoice) to delete. If you do not know the version, you can call [GetInvoice](https://developer.squareup.com/reference/square_2023-10-18/invoices-api/get-invoice) or  [ListInvoices](https://developer.squareup.com/reference/square_2023-10-18/invoices-api/list-invoices). (optional)
///
///  @returns SQDeleteInvoiceResponse*
///
-(NSURLSessionTask*) deleteInvoiceWithInvoiceId: (NSString*) invoiceId
    version: (NSNumber*) version
    completionHandler: (void (^)(SQDeleteInvoiceResponse* output, NSError* error)) handler {
    // verify the required parameter 'invoiceId' is set
    if (invoiceId == nil) {
        NSParameterAssert(invoiceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"invoiceId"] };
            NSError* error = [NSError errorWithDomain:kSQInvoicesApiErrorDomain code:kSQInvoicesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/invoices/{invoice_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (invoiceId != nil) {
        pathParams[@"invoice_id"] = invoiceId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        queryParams[@"version"] = version;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SQDeleteInvoiceResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQDeleteInvoiceResponse*)data, error);
                                }
                            }];
}

///
/// GetInvoice
/// Retrieves an invoice by invoice ID.
///  @param invoiceId The ID of the invoice to retrieve. 
///
///  @returns SQGetInvoiceResponse*
///
-(NSURLSessionTask*) getInvoiceWithInvoiceId: (NSString*) invoiceId
    completionHandler: (void (^)(SQGetInvoiceResponse* output, NSError* error)) handler {
    // verify the required parameter 'invoiceId' is set
    if (invoiceId == nil) {
        NSParameterAssert(invoiceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"invoiceId"] };
            NSError* error = [NSError errorWithDomain:kSQInvoicesApiErrorDomain code:kSQInvoicesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/invoices/{invoice_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (invoiceId != nil) {
        pathParams[@"invoice_id"] = invoiceId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SQGetInvoiceResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQGetInvoiceResponse*)data, error);
                                }
                            }];
}

///
/// ListInvoices
/// Returns a list of invoices for a given location. The response  is paginated. If truncated, the response includes a `cursor` that you     use in a subsequent request to retrieve the next set of invoices.
///  @param locationId The ID of the location for which to list invoices. 
///
///  @param cursor A pagination cursor returned by a previous call to this endpoint.  Provide this cursor to retrieve the next set of results for your original query.  For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). (optional)
///
///  @param limit The maximum number of invoices to return (200 is the maximum `limit`).  If not provided, the server uses a default limit of 100 invoices. (optional)
///
///  @returns SQListInvoicesResponse*
///
-(NSURLSessionTask*) listInvoicesWithLocationId: (NSString*) locationId
    cursor: (NSString*) cursor
    limit: (NSNumber*) limit
    completionHandler: (void (^)(SQListInvoicesResponse* output, NSError* error)) handler {
    // verify the required parameter 'locationId' is set
    if (locationId == nil) {
        NSParameterAssert(locationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"locationId"] };
            NSError* error = [NSError errorWithDomain:kSQInvoicesApiErrorDomain code:kSQInvoicesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/invoices"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (locationId != nil) {
        queryParams[@"location_id"] = locationId;
    }
    if (cursor != nil) {
        queryParams[@"cursor"] = cursor;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SQListInvoicesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQListInvoicesResponse*)data, error);
                                }
                            }];
}

///
/// PublishInvoice
/// Publishes the specified draft invoice.   After an invoice is published, Square  follows up based on the invoice configuration. For example, Square  sends the invoice to the customer's email address, charges the customer's card on file, or does  nothing. Square also makes the invoice available on a Square-hosted invoice page.   The invoice `status` also changes from `DRAFT` to a status  based on the invoice configuration. For example, the status changes to `UNPAID` if  Square emails the invoice or `PARTIALLY_PAID` if Square charge a card on file for a portion of the  invoice amount.
///  @param invoiceId The ID of the invoice to publish. 
///
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQPublishInvoiceResponse*
///
-(NSURLSessionTask*) publishInvoiceWithInvoiceId: (NSString*) invoiceId
    body: (SQPublishInvoiceRequest*) body
    completionHandler: (void (^)(SQPublishInvoiceResponse* output, NSError* error)) handler {
    // verify the required parameter 'invoiceId' is set
    if (invoiceId == nil) {
        NSParameterAssert(invoiceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"invoiceId"] };
            NSError* error = [NSError errorWithDomain:kSQInvoicesApiErrorDomain code:kSQInvoicesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQInvoicesApiErrorDomain code:kSQInvoicesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/invoices/{invoice_id}/publish"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (invoiceId != nil) {
        pathParams[@"invoice_id"] = invoiceId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SQPublishInvoiceResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQPublishInvoiceResponse*)data, error);
                                }
                            }];
}

///
/// SearchInvoices
/// Searches for invoices from a location specified in  the filter. You can optionally specify customers in the filter for whom to  retrieve invoices. In the current implementation, you can only specify one location and  optionally one customer.  The response is paginated. If truncated, the response includes a `cursor`  that you use in a subsequent request to retrieve the next set of invoices.
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQSearchInvoicesResponse*
///
-(NSURLSessionTask*) searchInvoicesWithBody: (SQSearchInvoicesRequest*) body
    completionHandler: (void (^)(SQSearchInvoicesResponse* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQInvoicesApiErrorDomain code:kSQInvoicesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/invoices/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SQSearchInvoicesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQSearchInvoicesResponse*)data, error);
                                }
                            }];
}

///
/// UpdateInvoice
/// Updates an invoice by modifying fields, clearing fields, or both. For most updates, you can use a sparse  `Invoice` object to add fields or change values and use the `fields_to_clear` field to specify fields to clear.  However, some restrictions apply. For example, you cannot change the `order_id` or `location_id` field and you  must provide the complete `custom_fields` list to update a custom field. Published invoices have additional restrictions.
///  @param invoiceId The ID of the invoice to update. 
///
///  @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details. 
///
///  @returns SQUpdateInvoiceResponse*
///
-(NSURLSessionTask*) updateInvoiceWithInvoiceId: (NSString*) invoiceId
    body: (SQUpdateInvoiceRequest*) body
    completionHandler: (void (^)(SQUpdateInvoiceResponse* output, NSError* error)) handler {
    // verify the required parameter 'invoiceId' is set
    if (invoiceId == nil) {
        NSParameterAssert(invoiceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"invoiceId"] };
            NSError* error = [NSError errorWithDomain:kSQInvoicesApiErrorDomain code:kSQInvoicesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSQInvoicesApiErrorDomain code:kSQInvoicesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/invoices/{invoice_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (invoiceId != nil) {
        pathParams[@"invoice_id"] = invoiceId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"oauth2"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SQUpdateInvoiceResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SQUpdateInvoiceResponse*)data, error);
                                }
                            }];
}



@end
