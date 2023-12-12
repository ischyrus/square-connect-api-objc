# SQPayout

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | A unique ID for the payout. | 
**status** | **NSString*** | Indicates the payout status. | [optional] 
**locationId** | **NSString*** | The ID of the location associated with the payout. | 
**createdAt** | **NSString*** | The timestamp of when the payout was created and submitted for deposit to the seller&#39;s banking destination, in RFC 3339 format. | [optional] 
**updatedAt** | **NSString*** | The timestamp of when the payout was last updated, in RFC 3339 format. | [optional] 
**amountMoney** | [**SQMoney***](SQMoney.md) | The amount of money involved in the payout. A positive amount indicates a deposit, and a negative amount indicates a withdrawal. This amount is never zero. | [optional] 
**destination** | [**SQDestination***](SQDestination.md) | Information about the banking destination (such as a bank account, Square checking account, or debit card) against which the payout was made. | [optional] 
**version** | **NSNumber*** | The version number, which is incremented each time an update is made to this payout record. The version number helps developers receive event notifications or feeds out of order. | [optional] 
**type** | **NSString*** | Indicates the payout type. | [optional] 
**payoutFee** | [**NSArray&lt;SQPayoutFee&gt;***](SQPayoutFee.md) | A list of transfer fees and any taxes on the fees assessed by Square for this payout. | [optional] 
**arrivalDate** | **NSString*** | The calendar date, in ISO 8601 format (YYYY-MM-DD), when the payout is due to arrive in the seller’s banking destination. | [optional] 
**endToEndId** | **NSString*** | A unique ID for each &#x60;Payout&#x60; object that might also appear on the seller’s bank statement. You can use this ID to automate the process of reconciling each payout with the corresponding line item on the bank statement. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


