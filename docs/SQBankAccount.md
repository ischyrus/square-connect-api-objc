# SQBankAccount

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | The unique, Square-issued identifier for the bank account. | 
**accountNumberSuffix** | **NSString*** | The last few digits of the account number. | 
**country** | **NSString*** | The ISO 3166 Alpha-2 country code where the bank account is based. | 
**currency** | **NSString*** | The 3-character ISO 4217 currency code indicating the operating currency of the bank account. For example, the currency code for US dollars is &#x60;USD&#x60;. | 
**accountType** | **NSString*** | The financial purpose of the associated bank account. | 
**holderName** | **NSString*** | Name of the account holder. This name must match the name  on the targeted bank account record. | 
**primaryBankIdentificationNumber** | **NSString*** | Primary identifier for the bank. For more information, see  [Bank Accounts API](https://developer.squareup.com/docs/bank-accounts-api). | 
**secondaryBankIdentificationNumber** | **NSString*** | Secondary identifier for the bank. For more information, see  [Bank Accounts API](https://developer.squareup.com/docs/bank-accounts-api). | [optional] 
**debitMandateReferenceId** | **NSString*** | Reference identifier that will be displayed to UK bank account owners when collecting direct debit authorization. Only required for UK bank accounts. | [optional] 
**referenceId** | **NSString*** | Client-provided identifier for linking the banking account to an entity in a third-party system (for example, a bank account number or a user identifier). | [optional] 
**locationId** | **NSString*** | The location to which the bank account belongs. | [optional] 
**status** | **NSString*** | Read-only. The current verification status of this BankAccount object. | 
**creditable** | **NSNumber*** | Indicates whether it is possible for Square to send money to this bank account. | 
**debitable** | **NSNumber*** | Indicates whether it is possible for Square to take money from this  bank account. | 
**fingerprint** | **NSString*** | A Square-assigned, unique identifier for the bank account based on the account information. The account fingerprint can be used to compare account entries and determine if the they represent the same real-world bank account. | [optional] 
**version** | **NSNumber*** | The current version of the &#x60;BankAccount&#x60;. | [optional] 
**bankName** | **NSString*** | Read only. Name of actual financial institution.  For example \&quot;Bank of America\&quot;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


