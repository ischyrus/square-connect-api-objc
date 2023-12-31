#import <Foundation/Foundation.h>
#import "SQGetBankAccountByV1IdResponse.h"
#import "SQGetBankAccountResponse.h"
#import "SQListBankAccountsResponse.h"
#import "SQApi.h"

/**
* Square Connect API
* Client library for accessing the Square Connect APIs
*
* OpenAPI spec version: 2.0
* Contact: developers@squareup.com
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/



@interface SQBankAccountsApi: NSObject <SQApi>

extern NSString* kSQBankAccountsApiErrorDomain;
extern NSInteger kSQBankAccountsApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SQApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// GetBankAccount
/// Returns details of a [BankAccount](https://developer.squareup.com/reference/square_2023-10-18/objects/BankAccount) linked to a Square account.
///
/// @param bankAccountId Square-issued ID of the desired &#x60;BankAccount&#x60;.
/// 
///  code:200 message:"Success"
///
/// @return SQGetBankAccountResponse*
-(NSURLSessionTask*) getBankAccountWithBankAccountId: (NSString*) bankAccountId
    completionHandler: (void (^)(SQGetBankAccountResponse* output, NSError* error)) handler;


/// GetBankAccountByV1Id
/// Returns details of a [BankAccount](https://developer.squareup.com/reference/square_2023-10-18/objects/BankAccount) identified by V1 bank account ID.
///
/// @param v1BankAccountId Connect V1 ID of the desired &#x60;BankAccount&#x60;. For more information, see  [Retrieve a bank account by using an ID issued by V1 Bank Accounts API](https://developer.squareup.com/docs/bank-accounts-api#retrieve-a-bank-account-by-using-an-id-issued-by-v1-bank-accounts-api).
/// 
///  code:200 message:"Success"
///
/// @return SQGetBankAccountByV1IdResponse*
-(NSURLSessionTask*) getBankAccountByV1IdWithV1BankAccountId: (NSString*) v1BankAccountId
    completionHandler: (void (^)(SQGetBankAccountByV1IdResponse* output, NSError* error)) handler;


/// ListBankAccounts
/// Returns a list of [BankAccount](https://developer.squareup.com/reference/square_2023-10-18/objects/BankAccount) objects linked to a Square account.
///
/// @param cursor The pagination cursor returned by a previous call to this endpoint. Use it in the next &#x60;ListBankAccounts&#x60; request to retrieve the next set  of results.  See the [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination) guide for more information. (optional)
/// @param limit Upper limit on the number of bank accounts to return in the response.  Currently, 1000 is the largest supported limit. You can specify a limit  of up to 1000 bank accounts. This is also the default limit. (optional)
/// @param locationId Location ID. You can specify this optional filter  to retrieve only the linked bank accounts belonging to a specific location. (optional)
/// 
///  code:200 message:"Success"
///
/// @return SQListBankAccountsResponse*
-(NSURLSessionTask*) listBankAccountsWithCursor: (NSString*) cursor
    limit: (NSNumber*) limit
    locationId: (NSString*) locationId
    completionHandler: (void (^)(SQListBankAccountsResponse* output, NSError* error)) handler;



@end
