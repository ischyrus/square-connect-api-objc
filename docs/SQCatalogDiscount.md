# SQCatalogDiscount

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **NSString*** | The discount name. This is a searchable attribute for use in applicable query filters, and its value length is of Unicode code points. | [optional] 
**discountType** | **NSString*** | Indicates whether the discount is a fixed amount or percentage, or entered at the time of sale. | [optional] 
**percentage** | **NSString*** | The percentage of the discount as a string representation of a decimal number, using a &#x60;.&#x60; as the decimal separator and without a &#x60;%&#x60; sign. A value of &#x60;7.5&#x60; corresponds to &#x60;7.5%&#x60;. Specify a percentage of &#x60;0&#x60; if &#x60;discount_type&#x60; is &#x60;VARIABLE_PERCENTAGE&#x60;.  Do not use this field for amount-based or variable discounts. | [optional] 
**amountMoney** | [**SQMoney***](SQMoney.md) | The amount of the discount. Specify an amount of &#x60;0&#x60; if &#x60;discount_type&#x60; is &#x60;VARIABLE_AMOUNT&#x60;.  Do not use this field for percentage-based or variable discounts. | [optional] 
**pinRequired** | **NSNumber*** | Indicates whether a mobile staff member needs to enter their PIN to apply the discount to a payment in the Square Point of Sale app. | [optional] 
**labelColor** | **NSString*** | The color of the discount display label in the Square Point of Sale app. This must be a valid hex color code. | [optional] 
**modifyTaxBasis** | **NSString*** | Indicates whether this discount should reduce the price used to calculate tax.  Most discounts should use &#x60;MODIFY_TAX_BASIS&#x60;. However, in some circumstances taxes must be calculated based on an item&#39;s price, ignoring a particular discount. For example, in many US jurisdictions, a manufacturer coupon or instant rebate reduces the price a customer pays but does not reduce the sale price used to calculate how much sales tax is due. In this case, the discount representing that manufacturer coupon should have &#x60;DO_NOT_MODIFY_TAX_BASIS&#x60; for this field.  If you are unsure whether you need to use this field, consult your tax professional. | [optional] 
**maximumAmountMoney** | [**SQMoney***](SQMoney.md) | For a percentage discount, the maximum absolute value of the discount. For example, if a 50% discount has a &#x60;maximum_amount_money&#x60; of $20, a $100 purchase will yield a $20 discount, not a $50 discount. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


