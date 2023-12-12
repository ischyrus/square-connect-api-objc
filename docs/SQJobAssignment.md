# SQJobAssignment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**jobTitle** | **NSString*** | The title of the job. | 
**payType** | **NSString*** | The current pay type for the job assignment used to calculate the pay amount in a pay period. | 
**hourlyRate** | [**SQMoney***](SQMoney.md) | The hourly pay rate of the job. | [optional] 
**annualRate** | [**SQMoney***](SQMoney.md) | The total pay amount for a 12-month period on the job. Set if the job &#x60;PayType&#x60; is &#x60;SALARY&#x60;. | [optional] 
**weeklyHours** | **NSNumber*** | The planned hours per week for the job. Set if the job &#x60;PayType&#x60; is &#x60;SALARY&#x60;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


