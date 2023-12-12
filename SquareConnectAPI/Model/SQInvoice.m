#import "SQInvoice.h"

@implementation SQInvoice

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"version": @"version", @"locationId": @"location_id", @"orderId": @"order_id", @"primaryRecipient": @"primary_recipient", @"paymentRequests": @"payment_requests", @"deliveryMethod": @"delivery_method", @"invoiceNumber": @"invoice_number", @"title": @"title", @"_description": @"description", @"scheduledAt": @"scheduled_at", @"publicUrl": @"public_url", @"nextPaymentAmountMoney": @"next_payment_amount_money", @"status": @"status", @"timezone": @"timezone", @"createdAt": @"created_at", @"updatedAt": @"updated_at", @"acceptedPaymentMethods": @"accepted_payment_methods", @"customFields": @"custom_fields", @"subscriptionId": @"subscription_id", @"saleOrServiceDate": @"sale_or_service_date", @"paymentConditions": @"payment_conditions", @"storePaymentMethodEnabled": @"store_payment_method_enabled" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"version", @"locationId", @"orderId", @"primaryRecipient", @"paymentRequests", @"deliveryMethod", @"invoiceNumber", @"title", @"_description", @"scheduledAt", @"publicUrl", @"nextPaymentAmountMoney", @"status", @"timezone", @"createdAt", @"updatedAt", @"acceptedPaymentMethods", @"customFields", @"subscriptionId", @"saleOrServiceDate", @"paymentConditions", @"storePaymentMethodEnabled"];
  return [optionalProperties containsObject:propertyName];
}

@end
