# SQPayoutEntry

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | A unique ID for the payout entry. | 
**payoutId** | **NSString*** | The ID of the payout entries’ associated payout. | 
**effectiveAt** | **NSString*** | The timestamp of when the payout entry affected the balance, in RFC 3339 format. | [optional] 
**type** | **NSString*** | The type of activity associated with this payout entry. | [optional] 
**grossAmountMoney** | [**SQMoney***](SQMoney.md) | The amount of money involved in this payout entry. | [optional] 
**feeAmountMoney** | [**SQMoney***](SQMoney.md) | The amount of Square fees associated with this payout entry. | [optional] 
**netAmountMoney** | [**SQMoney***](SQMoney.md) | The net proceeds from this transaction after any fees. | [optional] 
**typeAppFeeRevenueDetails** | [**SQPaymentBalanceActivityAppFeeRevenueDetail***](SQPaymentBalanceActivityAppFeeRevenueDetail.md) | Details of any developer app fee revenue generated on a payment. | [optional] 
**typeAppFeeRefundDetails** | [**SQPaymentBalanceActivityAppFeeRefundDetail***](SQPaymentBalanceActivityAppFeeRefundDetail.md) | Details of a refund for an app fee on a payment. | [optional] 
**typeAutomaticSavingsDetails** | [**SQPaymentBalanceActivityAutomaticSavingsDetail***](SQPaymentBalanceActivityAutomaticSavingsDetail.md) | Details of any automatic transfer from the payment processing balance to the Square Savings account. These are, generally, proportional to the merchant&#39;s sales. | [optional] 
**typeAutomaticSavingsReversedDetails** | [**SQPaymentBalanceActivityAutomaticSavingsReversedDetail***](SQPaymentBalanceActivityAutomaticSavingsReversedDetail.md) | Details of any automatic transfer from the Square Savings account back to the processing balance. These are, generally, proportional to the merchant&#39;s refunds. | [optional] 
**typeChargeDetails** | [**SQPaymentBalanceActivityChargeDetail***](SQPaymentBalanceActivityChargeDetail.md) | Details of credit card payment captures. | [optional] 
**typeDepositFeeDetails** | [**SQPaymentBalanceActivityDepositFeeDetail***](SQPaymentBalanceActivityDepositFeeDetail.md) | Details of any fees involved with deposits such as for instant deposits. | [optional] 
**typeDisputeDetails** | [**SQPaymentBalanceActivityDisputeDetail***](SQPaymentBalanceActivityDisputeDetail.md) | Details of any balance change due to a dispute event. | [optional] 
**typeFeeDetails** | [**SQPaymentBalanceActivityFeeDetail***](SQPaymentBalanceActivityFeeDetail.md) | Details of adjustments due to the Square processing fee. | [optional] 
**typeFreeProcessingDetails** | [**SQPaymentBalanceActivityFreeProcessingDetail***](SQPaymentBalanceActivityFreeProcessingDetail.md) | Square offers Free Payments Processing for a variety of business scenarios including seller referral or when Square wants to apologize for a bug, customer service, repricing complication, and so on. This entry represents details of any credit to the merchant for the purposes of Free Processing. | [optional] 
**typeHoldAdjustmentDetails** | [**SQPaymentBalanceActivityHoldAdjustmentDetail***](SQPaymentBalanceActivityHoldAdjustmentDetail.md) | Details of any adjustment made by Square related to the holding or releasing of a payment. | [optional] 
**typeOpenDisputeDetails** | [**SQPaymentBalanceActivityOpenDisputeDetail***](SQPaymentBalanceActivityOpenDisputeDetail.md) | Details of any open disputes. | [optional] 
**typeOtherDetails** | [**SQPaymentBalanceActivityOtherDetail***](SQPaymentBalanceActivityOtherDetail.md) | Details of any other type that does not belong in the rest of the types. | [optional] 
**typeOtherAdjustmentDetails** | [**SQPaymentBalanceActivityOtherAdjustmentDetail***](SQPaymentBalanceActivityOtherAdjustmentDetail.md) | Details of any other type of adjustments that don&#39;t fall under existing types. | [optional] 
**typeRefundDetails** | [**SQPaymentBalanceActivityRefundDetail***](SQPaymentBalanceActivityRefundDetail.md) | Details of a refund for an existing card payment. | [optional] 
**typeReleaseAdjustmentDetails** | [**SQPaymentBalanceActivityReleaseAdjustmentDetail***](SQPaymentBalanceActivityReleaseAdjustmentDetail.md) | Details of fees released for adjustments. | [optional] 
**typeReserveHoldDetails** | [**SQPaymentBalanceActivityReserveHoldDetail***](SQPaymentBalanceActivityReserveHoldDetail.md) | Details of fees paid for funding risk reserve. | [optional] 
**typeReserveReleaseDetails** | [**SQPaymentBalanceActivityReserveReleaseDetail***](SQPaymentBalanceActivityReserveReleaseDetail.md) | Details of fees released from risk reserve. | [optional] 
**typeSquareCapitalPaymentDetails** | [**SQPaymentBalanceActivitySquareCapitalPaymentDetail***](SQPaymentBalanceActivitySquareCapitalPaymentDetail.md) | Details of capital merchant cash advance (MCA) assessments. These are, generally, proportional to the merchant&#39;s sales but may be issued for other reasons related to the MCA. | [optional] 
**typeSquareCapitalReversedPaymentDetails** | [**SQPaymentBalanceActivitySquareCapitalReversedPaymentDetail***](SQPaymentBalanceActivitySquareCapitalReversedPaymentDetail.md) | Details of capital merchant cash advance (MCA) assessment refunds. These are, generally, proportional to the merchant&#39;s refunds but may be issued for other reasons related to the MCA. | [optional] 
**typeTaxOnFeeDetails** | [**SQPaymentBalanceActivityTaxOnFeeDetail***](SQPaymentBalanceActivityTaxOnFeeDetail.md) | Details of tax paid on fee amounts. | [optional] 
**typeThirdPartyFeeDetails** | [**SQPaymentBalanceActivityThirdPartyFeeDetail***](SQPaymentBalanceActivityThirdPartyFeeDetail.md) | Details of fees collected by a 3rd party platform. | [optional] 
**typeThirdPartyFeeRefundDetails** | [**SQPaymentBalanceActivityThirdPartyFeeRefundDetail***](SQPaymentBalanceActivityThirdPartyFeeRefundDetail.md) | Details of refunded fees from a 3rd party platform. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


