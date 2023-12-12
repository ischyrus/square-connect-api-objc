#import <Foundation/Foundation.h>
#import "SQObject.h"

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


#import "SQBankAccount.h"
#import "SQError.h"
@protocol SQBankAccount;
@class SQBankAccount;
@protocol SQError;
@class SQError;



@protocol SQListBankAccountsResponse
@end

@interface SQListBankAccountsResponse : SQObject

/* Information on errors encountered during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;
/* List of BankAccounts associated with this account. [optional]
 */
@property(nonatomic) NSArray<SQBankAccount>* bankAccounts;
/* When a response is truncated, it includes a cursor that you can  use in a subsequent request to fetch next set of bank accounts. If empty, this is the final response.  For more information, see [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination). [optional]
 */
@property(nonatomic) NSString* cursor;

@end
