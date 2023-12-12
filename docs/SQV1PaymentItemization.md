# SQV1PaymentItemization

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **NSString*** | The item&#39;s name. | [optional] 
**quantity** | **NSNumber*** | The quantity of the item purchased. This can be a decimal value. | [optional] 
**itemizationType** | **NSString*** | The type of purchase that the itemization represents, such as an ITEM or CUSTOM_AMOUNT | [optional] 
**itemDetail** | [**SQV1PaymentItemDetail***](SQV1PaymentItemDetail.md) | Details of the item, including its unique identifier and the identifier of the item variation purchased. | [optional] 
**notes** | **NSString*** | Notes entered by the merchant about the item at the time of payment, if any. | [optional] 
**itemVariationName** | **NSString*** | The name of the item variation purchased, if any. | [optional] 
**totalMoney** | [**SQV1Money***](SQV1Money.md) | The total cost of the item, including all taxes and discounts. | [optional] 
**singleQuantityMoney** | [**SQV1Money***](SQV1Money.md) | The cost of a single unit of this item. | [optional] 
**grossSalesMoney** | [**SQV1Money***](SQV1Money.md) | The total cost of the itemization and its modifiers, not including taxes or discounts. | [optional] 
**discountMoney** | [**SQV1Money***](SQV1Money.md) | The total of all discounts applied to the itemization. This value is always negative or zero. | [optional] 
**netSalesMoney** | [**SQV1Money***](SQV1Money.md) | The sum of gross_sales_money and discount_money. | [optional] 
**taxes** | [**NSArray&lt;SQV1PaymentTax&gt;***](SQV1PaymentTax.md) | All taxes applied to this itemization. | [optional] 
**discounts** | [**NSArray&lt;SQV1PaymentDiscount&gt;***](SQV1PaymentDiscount.md) | All discounts applied to this itemization. | [optional] 
**modifiers** | [**NSArray&lt;SQV1PaymentModifier&gt;***](SQV1PaymentModifier.md) | All modifier options applied to this itemization. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


